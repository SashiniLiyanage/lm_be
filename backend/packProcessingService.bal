import ballerina/io;
import ballerina/log;

public isolated  function uploadPack(stream<byte[], io:Error?> streamer, string name) returns boolean|error {

    string randomName = getRandompackName();
    check io:fileWriteBlocksFromStream("./storage/packs/" + randomName + ".zip", streamer);
    check streamer.close();

    boolean updated = addPackStatus(name, randomName);
    if updated {
        return true;
    }
    return false;
}

isolated function processAllPack() returns boolean {
    string packName;
    string randomName;
    json|error data;
    boolean proceed = true;

    while (proceed) {
        ProcessingPack[]|error nextPack = getNextPack();
        if nextPack is ProcessingPack[] {
            if nextPack.length() != 0 {
                foreach ProcessingPack pack in nextPack {

                    packName = pack.PACK_NAME;
                    randomName = pack.PACK_RANDOMNAME;

                    _ = updateStatus(packName, "Extracting the pack", 2);

                    data = getDataJson(randomName,packName);
                    _ = updateStatus(packName, "Pack is extracted", 2);

                    if(data is error){
                        _ = updateStatus(packName, "Failed in Traversing Pack", 0);

                    }else if (data.status == 200) {

                        _ = updateStatus(packName, "Updating database", 2);
                        
                        json|error updated = updateDatabase(data);
                        _ = updateStatus(packName, "Database is updated", 2);

                        if (updated is json && updated.status == 200) {

                            _ = updateStatus(packName, "Generating License file", 2);
                            error? response = generateLicense(data);

                            if (response is error) {
                                _ = updateStatus(packName, "License Generation Failed", 0);
                            } else {
                                _ = updateStatus(packName, "License File Generated", 1);
                            }

                        } else {
                            _ = updateStatus(packName, "Database Updation Failed", 0);
                        }
                        
                    } else {
                        json | error withoutLicense = data.empty;
                        json | error blockedLicense = data.blocked;

                        if (withoutLicense is json[] && blockedLicense is json[]) {
                            if (withoutLicense.length() > 0 || blockedLicense.length() > 0) {
                                _ = updateStatus(packName, "Libraries without Licenses or with X category licenses", 3);
                            } else {
                                _ = updateStatus(packName, "Failed in Traversing Pack", 0);
                            }
                        } else {
                            _ = updateStatus(packName, "Failed in Traversing Pack", 0);
                        }
                    }
                }
            } else {
                proceed = false;
            }

        } else {
            log:printError("Error in getting next packs", nextPack);
            proceed = false;
        }
    }

    return true;
}