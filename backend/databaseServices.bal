import ballerinax/mysql.driver as _;
import ballerina/sql;
// import ballerina/jballerina.java;
import ballerina/log;
// import ballerina/file;
// import ballerina/io;

public type License record {|
    int LIC_ID;
    string LIC_KEY;
    string LIC_NAME;
    string LIC_URL;
    string? LIC_CATEGORY;
|};

public type Updated_License record{|
    int value;
    string label;
|};

type Library record {|
    int LIB_ID;
    string LIB_NAME;
    string LIB_VERSION;
    string LIB_FILENAME;
    string LIB_TYPE;
|};

type Library_License record {|
    int LIB_ID;
    int LIC_ID;
|};

type AllLibrary record {|
    int LIB_ID;
    string LIB_FILENAME;
    string LIB_TYPE;
    string LIC_KEY;
|};

type ProcessingPack record {|
    string PACK_NAME;
    string PACK_RANDOMNAME;
    string? PACK_STATUS;
    string? PACK_LICENSE;
    string? PACK_TIMESTAMP;
    int PACK_STATUS_CODE;
|};

type Product record {|
    int PROD_ID;
    string PROD_NAME;
    string PROD_VERSION;
|};

type Temporary record {|
    string PACK_NAME;
    string LIB_FILENAME;
    string LIB_TYPE;
    string BLOCKED;
|};

// public isolated function getName(handle product) returns handle = @java:Method {
//     name: "getName",
//     'class: "org.wso2.internal.apps.license.manager.TraversePack"
// } external;

// public isolated function getVersion(handle product) returns handle = @java:Method {
//     name: "getVersion",
//     'class: "org.wso2.internal.apps.license.manager.TraversePack"
// } external;

public isolated function getAllLicense() returns json|error {

    License[] license_list = [];

    sql:ParameterizedQuery query = `SELECT * FROM LM_License`;

    stream<License, error?> queryResponse = mysqlEp->query(query);

    check from License item in queryResponse
        do {license_list.push(item);};
    check queryResponse.close();

    return license_list.toJson();

}


public isolated function addNewLicense(string licName, string licKey, string licUrl,string licCategory) returns boolean {

    sql:ParameterizedQuery query = `INSERT INTO LM_LICENSE (LIC_NAME,LIC_KEY,LIC_URL, LIC_CATEGORY) VALUES (${licName},${licKey},${licUrl},${licCategory})`;
    
    sql:ExecutionResult|sql:Error executionResult = mysqlEp->execute(sqlQuery = query);

    if(executionResult is sql:ExecutionResult){
        return true;
    }else{
        log:printError("Error in inserting license", executionResult);
        return false;
    }

   
}

public isolated  function getAllLibraries() returns json| error?{

    AllLibrary[] all_library_list = [];

    sql:ParameterizedQuery query = `SELECT LIB_ID,LIB_FILENAME,LIB_TYPE,LIC_KEY FROM LM_LIBRARY_LICENSE INNER JOIN LM_LICENSE USING (LIC_ID) INNER JOIN LM_LIBRARY USING (LIB_ID) ORDER BY LIB_ID`;

    stream<AllLibrary, error?> queryResponse = mysqlEp->query(query);

    check from AllLibrary item in queryResponse
        do {all_library_list.push(item);};
    check queryResponse.close();

    return all_library_list.toJson();
}


public isolated function updateLicense(string licName, string licKey, string licUrl, string licCategory, int licId) returns boolean {
    
    sql:ParameterizedQuery query = `UPDATE LM_LICENSE SET LIC_NAME=${licName}, LIC_KEY=${licKey}, LIC_URL=${licUrl}, LIC_CATEGORY=${licCategory} WHERE LIC_ID=${licId}`;
    
    sql:ExecutionResult|sql:Error executionResult = mysqlEp->execute(sqlQuery = query);

    if(executionResult is sql:ExecutionResult){
        return true;
    }else{
        log:printError("Error in updating licenses", executionResult);
        return false;
    }
}



public isolated function updateLibrary(json[] licenses, int libId) returns boolean {

    boolean success = deleteLibraryLicense(libId);

    if(success){
        foreach json license in licenses {
            json|error licId = license.value;

            if(licId is int){
                boolean insert = insertLibraryLicenseData(libId, licId);
                if (!insert){
                    return false;
                }
            }else{
                log:printError("License Id is not an integer");
                return false;
            }
        }
        return true;
    }
    
    return false;
}


public isolated function addNewLibrary(string libName, string libType, json[] licenses) returns boolean {

    string _filename = libName;
    string _type = libType;
    string _name = "";
    string _version = "";

    // string? nameVar = java:toString(getName(java:fromString(_filename)));
    // string? versionVar = java:toString(getVersion(java:fromString(_filename)));
     
    // if (nameVar is string && versionVar is string) {
    //     _name = nameVar;
    //     _version = versionVar;
    // }
    
   
    int[] licenseID = [];
    foreach json license in licenses {
        json|error value = license.value;
        if(value is int){
            licenseID.push(value);
        }else{
            log:printError("Error: Invalid licence id");
            return false;
        }
    }

    json data = {libName: _name, libVersion: _version, libFilename: _filename, libType: _type, libLicenseID: licenseID};
    
    int libraryID = insertLibraryJson(data);
    if libraryID != 0 {
        return true;
    }
   
    return false;
}

public isolated function deleteLibraryLicense(int libId) returns boolean {

    sql:ParameterizedQuery query = `DELETE FROM LM_LIBRARY_LICENSE WHERE LIB_ID=${libId}`;    
    sql:ExecutionResult|sql:Error result = mysqlEp->execute(sqlQuery = query);

    if result is sql:ExecutionResult {
        return true;
    }else{
        log:printError("Error in deleting library licenses ", result);
        return false ;
    }
    
}


// public isolated  function checkPack(string packName) returns boolean? {

//     sql:ParameterizedQuery query = `SELECT * FROM LM_PROCESSING_PACK WHERE PACK_NAME=${packName}`;
//     stream<ProcessingPack, error?> queryResponse = mysqlEp->query(query);

//     if (queryResponse is stream<ProcessingPack>) {
        
//         ProcessingPack[] processing_pack_list  = from ProcessingPack item in queryResponse select item;

//         if processing_pack_list.length() > 0 {
//             return true;
//         } else {
//             return false;
//         }

//     }else{
//         log:printError("Error in getting processing packs");
//         return;
//     }  
// }


// public isolated function getPackstatus() returns json| error? {
    
//     ProcessingPack[] processing_pack_list = [];

//     sql:ParameterizedQuery query = `SELECT * FROM LM_PROCESSING_PACK ORDER BY PACK_TIMESTAMP`;
//     stream<ProcessingPack, error?> queryResponse = mysqlEp->query(query);

//     check from ProcessingPack item in queryResponse
//         do {processing_pack_list.push(item);};
//     check queryResponse.close();

//     return processing_pack_list.toJson();
// }

// public isolated function addPackStatus(string packName, string randomName) returns boolean {

    
//     sql:ParameterizedQuery query = `INSERT INTO LM_PROCESSING_PACK (PACK_NAME, PACK_STATUS, PACK_RANDOMNAME,PACK_LICENSE) VALUES (${packName},"uploaded",${randomName},NULL)`;
//     sql:ExecutionResult|error executionResult = mysqlEp->execute(sqlQuery = query);

//     if(executionResult is sql:ExecutionResult){
//         return true;
//     }else{
//         log:printError("Error in inserting pack status", executionResult);
//         return false;
//     }
// }


// public isolated  function getNextPack() returns ProcessingPack[]|error {
    
//     ProcessingPack[] processing_pack_list = [];

//     sql:ParameterizedQuery query = `SELECT * FROM LM_PROCESSING_PACK WHERE PACK_STATUS = "uploaded" ORDER BY PACK_TIMESTAMP`;
//     stream<ProcessingPack, error?> queryResponse = mysqlEp->query(query);

//     check from ProcessingPack item in queryResponse
//         do {processing_pack_list.push(item);};
//     check queryResponse.close();

//     return processing_pack_list;
// }


// public isolated function updateStatus(string packName, string status, int statusCode) returns boolean {

//     sql:ParameterizedQuery query = `UPDATE LM_PROCESSING_PACK SET PACK_STATUS=${status},PACK_STATUS_CODE=${statusCode} WHERE PACK_NAME=${packName}`;
//     sql:ExecutionResult|error executionResult = mysqlEp->execute(sqlQuery = query);

//     if(executionResult is sql:ExecutionResult){
//         return true;
//     }else{
//         log:printError("Error in updating status", executionResult);
//     }

//     return false;
// }

// public isolated function insertTemporaryData(json errorData) returns error? {

//     string packName = (check errorData.packName).toString() + "-" + (check errorData.packVersion).toString()+".zip";
//     json|error emptyData = errorData.empty;
//     json|error blockedData = errorData.blocked;

//     if (emptyData is json[] && blockedData is json[]){
//         _ = check insert(emptyData, packName, 0);
//         _= check insert(blockedData, packName, 1);
//     } else {
//         log:printError("Error in fetching temporary data from the json created after traversing");
//     }

// }

// public isolated function insert(json[] temData, string packName, int status) returns boolean|error {
//     string libFilename;
//     string libType;
//     foreach json library in temData {
//         libFilename = (check library.libFilename).toString();
//         libType = (check library.libType).toString();      

//         sql:ParameterizedQuery query = `INSERT INTO LM_TEMPORARY_TABLE (PACK_NAME, LIB_FILENAME, LIB_TYPE, BLOCKED) VALUES (${packName},${libFilename},${libType},${status})`;
//         sql:ExecutionResult|error executionResult = mysqlEp->execute(sqlQuery = query);

//         if(executionResult is error){
//             log:printError("Error in inserting temp data");
//             return false;
//         }
//     }
//     return true;
// }


// public isolated  function deletePack(string packName) returns boolean {
//     string randomName = getPackRandomName(packName);

//     sql:ParameterizedQuery query = `DELETE FROM LM_PROCESSING_PACK WHERE PACK_NAME=${packName}`;
//     sql:ExecutionResult|error executionResult = mysqlEp->execute(sqlQuery = query);

//     if(executionResult is sql:ExecutionResult){
//         error? removeResults = file:remove("./storage/packs/" + randomName + ".zip");

//         if(removeResults is error){
//             log:printError("Error in deleting pack ",removeResults);
//         }
//         return true;

//     }else{
//         log:printError("Error in deletin pack name ", executionResult);
//         return false;
//     }
// }


// public isolated function getPackRandomName(string packName) returns string {
//     string randomName = "";

//     sql:ParameterizedQuery query = `SELECT * FROM LM_PROCESSING_PACK WHERE PACK_NAME=${packName}`;
//     stream<ProcessingPack, error?> queryResponse = mysqlEp->query(query);

//     if (queryResponse is stream<ProcessingPack>) {
//         foreach ProcessingPack row in queryResponse {
//             randomName = row.PACK_RANDOMNAME;
//         }
//         return randomName;
//     }else{
//         log:printError("Error in getting random pack name");
//         return randomName;
//     }
   
// }


// public isolated function getLicenseText(string fileName) returns string|error {
//     string text = "";
//     string filePath = "./storage/licenses/" + fileName;

//     io:ReadableByteChannel | error readableFieldResult = io:openReadableFile(filePath);
    
//     if readableFieldResult is io:ReadableByteChannel {

//         io:ReadableCharacterChannel sourceChannel = new (readableFieldResult, "UTF-8");
//         string | io:Error result;

//         while (true) {
//             result = sourceChannel.read(1000);

//             if (result is io:EofError) {
//                 break;
//             } else if (result is error) {
//                 text = "Error found in generated Licenses File";
//                 log:printError("Error found in generated Licenses File", result);
//                 return text;
//             } else {
//                 text = text + result;
//             }
//         }

//         closeRc(sourceChannel);
//         error? removeResults = file:remove(filePath);

//         if (removeResults is error) {
//             log:printError("Error in Removing file at " + filePath);
//         }

//     } else {
//         return readableFieldResult;
//     }

//     return text;

// }

// public isolated function getTemporaryData(string packName) returns json {
//     json[] librariesWithoutLicense = getData(packName, 0);
//     json[] librariesWithblockedLicense = getData(packName, 1);

//     return {emptyLibrary: librariesWithoutLicense, blockedLibrary: librariesWithblockedLicense};
// }

// public isolated function getData(string packName, int status) returns json[] {

//     json[] jsonArray = [];

//     sql:ParameterizedQuery query = `SELECT * FROM LM_TEMPORARY_TABLE WHERE PACK_NAME=${packName} AND BLOCKED=${status}`;
//     stream<Temporary, error?> queryResponse = mysqlEp->query(query);
    
//     if (queryResponse is stream<Temporary>) {
//         foreach Temporary item in queryResponse {
//             jsonArray.push({LIB_FILENAME:item.LIB_FILENAME, LIB_TYPE:item.LIB_TYPE});
//         }
//     }else{
//         log:printError("Error in getting temporary data");
//     }

//     return jsonArray;
// }


// public  isolated function addAllLibrary(json[] libraries, string packName) returns boolean {

//     boolean proceed = true;
//     json | error license;

//     foreach json library in libraries {
//         license = library.libLicenseID;

//         if license is json[] {
//             if license.length() > 0 {
//                 json|error libName = library.libFilename;
//                 json|error libType = library.libType;
                
//                 if(libName is string && libType is string && addNewLibrary(libName, libType, license)){
//                     _ = deleteTemporaryData(packName, libName);
//                 }
                
//             } else {
//                 proceed = false;
//             }
//         } else {
//             log:printError("error in json format for licenses added to libraries without license");
//         }
//     }

//     if (proceed) {

//         json jsonObject = getTemporaryData(packName);
//         json | error blocked = jsonObject.blockedLibrary;

//         if (blocked is json[] && blocked.length() == 0) {
//             _ = updateStatus(packName, "uploaded", 2);
//         }else{
//             log:printError("Error in getting blocked libraries");
//         }
//     }
    
//     return true;
// }


// public isolated function deleteTemporaryData(string packName, string libraryName) returns boolean {
    
//     sql:ParameterizedQuery query = `DELETE FROM LM_TEMPORARY_TABLE WHERE PACK_NAME=${packName} AND LIB_FILENAME=${libraryName}`;
//     sql:ExecutionResult|error executionResult = mysqlEp->execute(sqlQuery = query);

//     if(executionResult is sql:ExecutionResult){
//         return true;
//     }else{
//         log:printError("Error in deleting temporary data", executionResult);
//         return false;
//     }

// }