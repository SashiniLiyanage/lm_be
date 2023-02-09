import ballerina/jballerina.java;
import ballerina/io;
import ballerina/log;
import ballerina/sql;

isolated function createRandomUUID() returns handle = @java:Method {
    name: "randomUUID",
    'class: "java.util.UUID"
} external;

isolated  function getJsonString(handle product, handle destination, handle fileName) returns handle = @java:Method {
    name: "getJsonString",
    'class: "org.wso2.internal.apps.license.manager.TraversePack"
} external;

public isolated function getSubString(handle word) returns handle = @java:Method {
    name: "getSubString",
    'class: "org.wso2.internal.apps.license.manager.TraversePack"
} external;

isolated function getRandompackName() returns string {
    string? random = java:toString(createRandomUUID());
    if random is string {
        return random;
    }
    return "000";
}

public isolated function getDataJson(string path, string packName) returns json|error {
    json jsonEmpty = {};

    var jsonVar = getJsonString(java:fromString(path), java:fromString(DESTINATION_PATH), java:fromString(packName));
    string? jsonString = java:toString(jsonVar);

    if jsonString is string {
        io:StringReader stringReader = new (jsonString, encoding = "UTF-8");
        json | error Json = stringReader.readJson();
        if Json is json {
            jsonEmpty = check UpdateLicenseID(Json);
        } else {
            log:printError("Error in converting to json", Json);
        }
    } else {
        log:printError("Error: returned jsonString is not in string format", jsonString);
    }
    return checkLicense(jsonEmpty);
}

public isolated function UpdateLicenseID(json DataJson) returns json|error {
    string productName = (check DataJson.packName).toString();
    string productVersion = (check DataJson.packVersion).toString();
    json | error libraries = DataJson.library;
    json[] newLibrary = [];
    int index = 0;

    if (libraries is json[]) {
        foreach  json libraryData in libraries {
            json | error lib_license = libraryData.libLicense;
            string lib_name = (check libraryData.libName).toString();
            string lib_version = (check libraryData.libVersion).toString();
            string lib_filename = (check libraryData.libFilename).toString();
            string lib_type = (check libraryData.libType).toString();

            json[] ids = [];
            if (lib_license is json[]) {
                ids = getLicenseID(lib_name, lib_version, lib_license);
            }
            json libObject = {
                libName: lib_name,
                libVersion: lib_version,
                libFilename: lib_filename,
                libType: lib_type,
                libLicenseID: ids
            };
            newLibrary[index] = libObject;
            index = index + 1;
        }
    } else {
        log:printError("Error: libraries in not a json array ");
    }
    json finalDataJson = {status: 200, packName: productName, packVersion: productVersion, library: newLibrary};
    return finalDataJson;
}

public isolated function getLicenseID(string libName, string libVersion, json[] libUrl) returns json[] {
    json[] licenseID = getLicenseIdbyDB(libName, libVersion);
    int id;
    if (licenseID.length() === 0) {
        foreach json url in libUrl {
            id = getLicenseIdbyUrl(url.toString());
            if (id === 0) {
                string? license = java:toString(getSubString(java:fromString(url.toString())));
                if license is string {
                    id = getLicenseIdbyUrl(license);
                    if (id !== 0) {
                        licenseID.push(id);
                    }
                } else {
                    log:printError("Error: License is not in string format ", license);
                }
            } else {
                licenseID.push(id);
            }
        }
        return licenseID;
    } else {
        return licenseID;
    }
}

public isolated function getLicenseIdbyDB(string libName, string libVersion) returns int[] {
    int[] licenseID = [];
    int licenseId;
    boolean exist;

    sql:ParameterizedQuery query = `SELECT * FROM LM_LIBRARY_LICENSE WHERE LIB_ID IN (SELECT LIB_ID FROM LM_LIBRARY WHERE LIB_NAME=${libName} AND LIB_VERSION=${libVersion})`;
        
    stream<Library_License, error?> queryResponse = mysqlEp->query(query);

    if (queryResponse is stream<Library_License>) {
            foreach Library_License row in queryResponse {
                licenseId = row.LIC_ID;
                exist = false;
                foreach int id in licenseID {
                    if (id == licenseId) {
                        exist = true;
                    }
                }
                if (!exist) {
                    licenseID.push(licenseId);
                }
            }       
    }

    return licenseID;
}

public isolated function getLicenseIdbyUrl(string url) returns int {
    int licenseID = 0;

    sql:ParameterizedQuery query = `SELECT * FROM LM_LICENSE WHERE LIC_URL LIKE "%${url}%"`;
        
    stream<License, error?> queryResponse = mysqlEp->query(query);

    if (queryResponse is stream<License>) {
            foreach License row in queryResponse {
                licenseID = row.LIC_ID;
            }
    } 

    return licenseID;
}


public isolated function checkLicense(json DataJson) returns json|error {
    int[] blockedLicenseIds = getBlockedLicenses();
    string productName = (check DataJson.packName).toString();
    string productVersion = (check DataJson.packVersion).toString();
    json | error libraries = DataJson.library;
    json[] blockedLicense = [];
    json[] withoutLicense = [];
    if (libraries is json[]) {
        foreach  json libraryData in libraries {
            
            json | error lib_license = libraryData.libLicenseID;
            if (lib_license is json[]) {
                if (lib_license.length() === 0) {
                    withoutLicense.push(libraryData);
                } else {
                    int count = 0;
                    foreach var id in lib_license {
                        foreach int blockedId in blockedLicenseIds {
                            if (<int>id == blockedId) {
                                count = count + 1;
                            }
                        }
                    }
                    if (count == lib_license.length()) {
                        blockedLicense.push(libraryData);
                    }
                }
            } else {
                log:printError("Error: Library licenses are not in json array format ");
            }
        }
    } else {
        log:printError("Error : Libraries are not in json array format ");
    }
    if (blockedLicense.length() == 0 && withoutLicense.length() == 0) {
        log:printInfo(productName + "-" + productVersion + " has been successfully traversed");
        return DataJson;
    } else {
        
        log:printInfo(productName + "-" + productVersion + " has been identified with libraries without license");
        json errorData = {status: 400, packName: productName, packVersion: productVersion, blocked: blockedLicense, empty: withoutLicense};
        _ = check insertTemporaryData(errorData);

        sendEmail(errorData);
        return errorData;
    }
}

public isolated function getBlockedLicenses() returns int[] {
    int[] licenseID = [];

    sql:ParameterizedQuery query = `SELECT * FROM LM_LICENSE WHERE LIC_CATEGORY = "X"`;
        
    stream<License, error?> queryResponse = mysqlEp->query(query);

    if (queryResponse is stream<License>) {
            foreach License row in queryResponse {
                licenseID.push(row.LIC_ID);
            }       
    }

    return licenseID;
}
