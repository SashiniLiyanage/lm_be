import ballerina/log;
import ballerina/sql;

type LIB_ID record {|
    int LIB_ID;
|};

// public isolated function insertLibraryJson(json libraryData) returns int {
// 	json|error  _name = libraryData.libName;
//     json|error _version = libraryData.libVersion;
//     json|error _filename = libraryData.libFilename;
//     json|error _type = libraryData.libType;
//     json|error _licenseID = libraryData.libLicenseID;

//     int libraryID = 0;

//     if (_licenseID is int[] && _name is string && _version is string && _filename is string && _type is string ) {
        
//         libraryID = insertLibraryData(_name, _version, _filename, _type);

//         if (libraryID != 0) {
//             foreach int id in _licenseID {
//                 boolean success = insertLibraryLicenseData(libraryID, id);
//                 if(!success){
//                     return 0;
//                 }
//             }
//         } else {
//             log:printError("Error: Library does not exists: ");
//         }
//     } 

//     return libraryID;
// }

// public isolated function insertLibraryData(string lib_name, string lib_version, string lib_filename, string lib_type) returns int {

//     int id = checkLibrary(lib_filename, lib_type);

//     if id != 0 {
//         return id;
//     } else {

//         sql:ParameterizedQuery query = `INSERT INTO LM_LIBRARY (LIB_NAME,LIB_VERSION, LIB_FILENAME, LIB_TYPE) VALUES (${lib_name},${lib_version},${lib_filename},${lib_type})`;
//         sql:ExecutionResult|error executionResult = mysqlEp->execute(sqlQuery = query);

//         return handleUpdate(executionResult, "Error in updating library table: ");
           
//     }
// }

public isolated function insertLibraryLicenseData(int libId, int licId) returns boolean {

    boolean checklibrarylicense = checkLibraryLicense(libId,licId);

    if(!checklibrarylicense){

        sql:ParameterizedQuery query = `INSERT INTO LM_LIBRARY_LICENSE (LIB_ID,LIC_ID) VALUES (${libId},${licId})`;
        sql:ExecutionResult|sql:Error executionResult = mysqlEp->execute(sqlQuery = query);

        if(executionResult is sql:Error){
            log:printError("Error in inserting library license", executionResult);
            return false;
        }
    }

    return true;
}

public isolated function checkLibraryLicense(int libId, int licId) returns boolean {
    
    sql:ParameterizedQuery query = `SELECT * FROM LM_LIBRARY_LICENSE WHERE LIB_ID=${libId} AND LIC_ID=${licId}`;
    stream<Library_License, sql:Error?> queryResponse = mysqlEp->query(query);

    if(queryResponse is stream<Library_License>){

        Library_License[] library_license_list = from Library_License item in queryResponse select item;

        if(library_license_list.length() > 0){ 
            return true;
        }

    }else{
        log:printError("Error in selecting library licenses");
    }

    return false;

}

// isolated function checkLibrary(string libFilename, string libType) returns int {
//     int libraryID = 0;

//     sql:ParameterizedQuery query = `SELECT LIB_ID FROM LM_LIBRARY WHERE LIB_FILENAME=${libFilename} AND LIB_TYPE=${libType}`;
//     stream<LIB_ID, error?> queryResponse = mysqlEp->query(query);

//     if(queryResponse is stream<LIB_ID>){

//         LIB_ID[] lib_id_list = from LIB_ID item in queryResponse select item;
//         if(lib_id_list.length()>0){
//             libraryID = lib_id_list[0].LIB_ID;
//         }
        
//     } else {
//         log:printError("Error in fetching from database: ");
//     }
//     return libraryID;
// }


// isolated function handleUpdate(sql:ExecutionResult|error UpdateResult, string message) returns int {
    
//     if (UpdateResult is sql:ExecutionResult) {

//         anydata|error generatedKey = UpdateResult.lastInsertId;
//         if (generatedKey is int) {
//             return generatedKey;
//         }

//     } else {
//         log:printError(message, UpdateResult);
//     }
//     return 0;
// }

// public isolated function updateDatabase(json dataSet) returns json|error {
//     json | error libraries = dataSet.library;
//     string productName = (check dataSet.packName).toString();
//     string productVersion = (check dataSet.packVersion).toString();
//     int productId = insertProductData(productName, productVersion);
//     int libraryID = 0;
//     if (productId != 0) {
//         if (libraries is json[]) {
//             foreach json libraryData in libraries {
//                 libraryID = insertLibraryJson(libraryData);
//                 if libraryID != 0 {
//                     insertProductLibraryData(productId, libraryID);
//                 } else {
//                     log:printError("Error: Error in inserting library ");
//                 }
//             }
//             return {status: 200};
//         } else {
//             log:printError("Error : Libraries is not a json array ");
//             return {status: 400};
//         }
//     } else {
//         log:printError("Error: Error in retrieving productID ");
//         return {status: 400};
//     }
// }

// public isolated function insertProductData(string prodName, string prodVersion) returns int {

//     int productId = verifyProduct(prodName, prodVersion);

//     if productId != 0 {
//         return productId;
//     }
//     sql:ParameterizedQuery query = `INSERT INTO LM_PRODUCT (PROD_NAME, PROD_VERSION) VALUES (${prodName},${prodVersion})`;
    
//     sql:ExecutionResult|error executionResult = mysqlEp->execute(sqlQuery = query);

//     return handleUpdate(executionResult, "Error in updating product table :");
// }


// isolated function verifyProduct(string prodName, string prodVersion) returns int {
//     int productId = 0;

//     sql:ParameterizedQuery query = `SELECT * FROM LM_PRODUCT WHERE PROD_NAME=${prodName} AND PROD_VERSION=${prodVersion}`;
//     stream<Product, error?> queryResponse = mysqlEp->query(query);

    
//     if (queryResponse is stream<Product>) {
//         foreach var row in queryResponse {
//             productId = row.PROD_ID;
//         }
//     }

//     if (productId != 0) {
//         deleteProductLibrary(productId);
//         return productId;
//     }
//     return productId;
// }


// isolated function deleteProductLibrary(int productId) {

//     sql:ParameterizedQuery query = `DELETE FROM LM_PRODUCT_LIBRARY WHERE PROD_ID=${productId}`;
//     sql:ExecutionResult|error executionResult = mysqlEp->execute(sqlQuery = query);

//     if(executionResult is error){
//         log:printError("Error in deleting product library",executionResult);
//     }
   
// }


// public isolated function insertProductLibraryData(int productID, int libraryID) {

//     sql:ParameterizedQuery query = `INSERT INTO LM_PRODUCT_LIBRARY (PROD_ID,LIB_ID) VALUES (${productID},${libraryID})`;
//     sql:ExecutionResult|error executionResult = mysqlEp->execute(sqlQuery = query);

//     if(executionResult is error){
//         log:printError("Error in inserting product library",executionResult);
//     }
// }