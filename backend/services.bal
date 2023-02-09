import ballerinax/mysql;
import ballerinax/mysql.driver as _;
import ballerina/http;
import ballerina/io;

configurable string DBhost = ?;
configurable string DBuser = ?;
configurable string DBpassword = ?;
configurable string DBname = ?;
configurable int DBport = ?;

configurable string DESTINATION_PATH = ?;
configurable string LICENSEHEADER_PATH = ?;

configurable string GMAIL_RECIPIENT = ?;
configurable string GMAIL_SENDER = ?;
configurable string GMAIL_PASSWORD = ?;

type Success record {|
    *http:Ok;
    json body;
|};

type InternalServerError record {|
    *http:InternalServerError;
    json body;
|};

type BadRequest record {|
    *http:BadRequest;
    json body;
|};


final mysql:Client mysqlEp= check new (
    DBhost, 
    DBuser, 
    DBpassword, 
    DBname, 
    DBport
);

@http:ServiceConfig {
    cors: {
        allowOrigins: ["http://localhost:3000"],
        allowCredentials: false,
        allowHeaders: ["*"],
        allowMethods: ["GET","POST","PUT","OPTIONS","DELETE","PATCH","HEAD"],
        exposeHeaders: ["Access-Control-Allow-Origin"]
    }
}

service /LicenseManager on new http:Listener(9096) {

    resource function get getLicense() returns Success|InternalServerError|error {

        json|error returnedResponse = getAllLicense();
        
        if returnedResponse is json {
            Success res = {body: returnedResponse};
            return res;
        }

        InternalServerError res ={ body: "Server Error"};
        return res;
    
    }

    resource function post updateLicense(@http:Payload json payload) returns Success|BadRequest|InternalServerError|error {

        json|error licName = payload.licName;
        json|error licUrl = payload.licUrl;
        json|error licId = payload.licId;
        json|error licKey = payload.licKey;
        json|error licCategory = payload.licCategory;
        
        if(licName is string && licUrl is string && licKey is string && licCategory is string && licId is int){

            boolean success = updateLicense(licName,licKey,licUrl,licCategory, licId);

            if(success){
                Success res = {body: "success"};
                return res;
            }

            InternalServerError res ={ body:"Server Error"};
            return res;

        }else{
            BadRequest res ={ body:"Incorrect payload format"};
            return res;
        }
    
    }

    resource function post addLicense(@http:Payload json payload) returns Success|BadRequest|InternalServerError|error {

            json|error licName = payload.licName;
            json|error licUrl = payload.licUrl;
            json|error licKey = payload.licKey;
            json|error licCategory = payload.licCategory;
            
            if(licName is string && licUrl is string && licKey is string && licCategory is string){

                boolean success = addNewLicense(licName,licKey,licUrl,licCategory);

                if(success){
                    Success res = {body: "Success"};
                    return res;
                }

                InternalServerError res ={ body:"Server Error"};
                return res;

            }else{
                BadRequest res ={ body:"Incorrect payload format"};
                return res;   
            }    
    }


    resource function get getLibrary() returns Success|InternalServerError|error {

        json| error? returnedResponse = getAllLibraries();
        
        if returnedResponse is json{
            Success res = {body: returnedResponse};
            return res;
        }else{
            InternalServerError res ={ body: "Server Error"};
            return res;
        }
    }

    resource function post updateLibrary(@http:Payload json payload) returns Success|InternalServerError|BadRequest|error {

            json|error licenses = payload.ids;
            json|error libId = payload.libId;
            
            if(libId is int && licenses is json[]){
                boolean success = updateLibrary(licenses,libId);

                if(success){
                    Success res ={ body: "Success"};
                    return res; 
                }

                InternalServerError res ={ body: ()};
                return res;

            }else{
                BadRequest res ={ body: "Incorrect payload format"};
                return res;   
            }

       
    }


    resource function post addLibrary(@http:Payload json payload) returns Success|BadRequest|InternalServerError|error {

            json|error libName = payload.libFilename;
            json|error libType = payload.libType;
            json|error licenses = payload.libLicenseID;
            
            if(libName is string && libType is string && licenses is json[]){

                boolean success = addNewLibrary(libName,libType,licenses);

                if(success){
                    Success res = {body: "Success"};
                    return res;
                }

                InternalServerError res ={ body:"Server Error"};
                return res;

            }else{
                BadRequest res ={ body:"Incorrect payload format"};
                return res;   
            }    
    
    }

    resource function get checkPack/[string packName]() returns Success|BadRequest|InternalServerError|error {
        
        boolean? exists = checkPack(packName);
        
        if exists is boolean {

            if (exists) {
                Success res = {body: 0};
                return res;
            } else {
                Success res = {body: 1};
                return res;
            }

        }else{
            InternalServerError res ={ body:"Server Error"};
            return res;
        }

    }

    resource function post receiver/[string packName](http:Request request) returns Success|BadRequest|InternalServerError|error {

        stream<byte[], io:Error?>|http:ClientError streamer = request.getByteStream();

        if(streamer is stream<byte[], io:Error?>){

            boolean|error uploaded = uploadPack(streamer, packName);

            if (uploaded is boolean && uploaded) {
                Success res = {body: "uploaded successfully"};
                return res;
            }
            
            InternalServerError res ={ body:"Server Error"};
            return res;

        }else{
            BadRequest res = { body: "Payload is not in form data"};
            return res;
        }
            
    }

    resource function get getPackstatus() returns Success|BadRequest|InternalServerError|error {

        json|error? returnedResponse = getPackstatus();

        if returnedResponse is json {
            Success res = {body: returnedResponse};
            return res;
        } else {
            InternalServerError res ={ body:"Server Error"};
            return res;
        }

    }

    resource function get processAllPacks() returns Success|BadRequest|InternalServerError|error {

        boolean success = processAllPack();

        if (success) {
            Success res = {body: ()};
            return res;
        } else {
            InternalServerError res ={ body:"Server Error"};
            return res;
        }

    }

    resource function post deletePack/[string packName]() returns Success|BadRequest|InternalServerError|error {

        boolean success = deletePack(packName);

        if (success) {
            Success res = {body: "successfully deleted"};
            return res;
        } else {
            InternalServerError res ={ body:"Server Error"};
            return res;
        }
    }

    resource function get getDownloadingText/[ string licenseFilename]() returns Success|BadRequest|InternalServerError|error {
       
        string | error returnedResponse = getLicenseText(licenseFilename);

        if (returnedResponse is string) {
            Success res = {body: returnedResponse};
            return res;
        } else {
            InternalServerError res ={ body:"Server Error"};
            return res;
        }
        
    }

    resource function get gettempdata/[ string packName]() returns Success|BadRequest|InternalServerError|error {
         
        json returnedResponse = getTemporaryData(packName);
        
        Success res = {body: returnedResponse};
        return res;
        
    }

    resource function post addAllLibrary/[string packName](@http:Payload json[] payload) returns Success|BadRequest|InternalServerError|error {
        
        boolean success = addAllLibrary(payload, packName);
        
        if (success) {
            Success res = {body: ()};
            return res;
        } else {
            InternalServerError res ={ body:"Server Error"};
            return res;
        }
    }

}