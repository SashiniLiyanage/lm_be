import ballerina/jballerina.java;
import backendv2.java.lang as javalang;
import backendv2.java.util as javautil;
import backendv2.java.io as javaio;
import backendv2.java.util.'stream as javautilstream;
import backendv2.java.nio.charset as javaniocharset;

# Ballerina class mapping for the Java `java.util.zip.ZipFile` class.
@java:Binding {'class: "java.util.zip.ZipFile"}
public distinct class ZipFile {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `java.util.zip.ZipFile` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `java.util.zip.ZipFile` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.util.zip.ZipFile` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
    # The function that maps to the `close` method of `java.util.zip.ZipFile`.
    #
    # + return - The `javaio:IOException` value returning from the Java mapping.
    public function close() returns javaio:IOException? {
        error|() externalObj = java_util_zip_ZipFile_close(self.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `entries` method of `java.util.zip.ZipFile`.
    #
    # + return - The `javautil:Enumeration` value returning from the Java mapping.
    public function entries() returns javautil:Enumeration {
        handle externalObj = java_util_zip_ZipFile_entries(self.jObj);
        javautil:Enumeration newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `equals` method of `java.util.zip.ZipFile`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return java_util_zip_ZipFile_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `java.util.zip.ZipFile`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = java_util_zip_ZipFile_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getComment` method of `java.util.zip.ZipFile`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getComment() returns string? {
        return java:toString(java_util_zip_ZipFile_getComment(self.jObj));
    }

    # The function that maps to the `getEntry` method of `java.util.zip.ZipFile`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `ZipEntry` value returning from the Java mapping.
    public function getEntry(string arg0) returns ZipEntry {
        handle externalObj = java_util_zip_ZipFile_getEntry(self.jObj, java:fromString(arg0));
        ZipEntry newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getInputStream` method of `java.util.zip.ZipFile`.
    #
    # + arg0 - The `ZipEntry` value required to map with the Java method parameter.
    # + return - The `javaio:InputStream` or the `javaio:IOException` value returning from the Java mapping.
    public function getInputStream(ZipEntry arg0) returns javaio:InputStream|javaio:IOException {
        handle|error externalObj = java_util_zip_ZipFile_getInputStream(self.jObj, arg0.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            javaio:InputStream newObj = new (externalObj);
            return newObj;
        }
    }

    # The function that maps to the `getName` method of `java.util.zip.ZipFile`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getName() returns string? {
        return java:toString(java_util_zip_ZipFile_getName(self.jObj));
    }

    # The function that maps to the `hashCode` method of `java.util.zip.ZipFile`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return java_util_zip_ZipFile_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `java.util.zip.ZipFile`.
    public function notify() {
        java_util_zip_ZipFile_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `java.util.zip.ZipFile`.
    public function notifyAll() {
        java_util_zip_ZipFile_notifyAll(self.jObj);
    }

    # The function that maps to the `size` method of `java.util.zip.ZipFile`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function size() returns int {
        return java_util_zip_ZipFile_size(self.jObj);
    }

    # The function that maps to the `stream` method of `java.util.zip.ZipFile`.
    #
    # + return - The `javautilstream:Stream` value returning from the Java mapping.
    public function 'stream() returns javautilstream:Stream {
        handle externalObj = java_util_zip_ZipFile_stream(self.jObj);
        javautilstream:Stream newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `wait` method of `java.util.zip.ZipFile`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = java_util_zip_ZipFile_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.util.zip.ZipFile`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = java_util_zip_ZipFile_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.util.zip.ZipFile`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = java_util_zip_ZipFile_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `java.util.zip.ZipFile`.
#
# + arg0 - The `javaio:File` value required to map with the Java constructor parameter.
# + return - The new `ZipFile` class or `ZipException` error generated.
public function newZipFile1(javaio:File arg0) returns ZipFile|ZipException {
    handle|error externalObj = java_util_zip_ZipFile_newZipFile1(arg0.jObj);
    if (externalObj is error) {
        ZipException e = error ZipException(ZIPEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        ZipFile newObj = new (externalObj);
        return newObj;
    }
}

# The constructor function to generate an object of `java.util.zip.ZipFile`.
#
# + arg0 - The `javaio:File` value required to map with the Java constructor parameter.
# + arg1 - The `javaniocharset:Charset` value required to map with the Java constructor parameter.
# + return - The new `ZipFile` class or `javaio:IOException` error generated.
public function newZipFile2(javaio:File arg0, javaniocharset:Charset arg1) returns ZipFile|javaio:IOException {
    handle|error externalObj = java_util_zip_ZipFile_newZipFile2(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        ZipFile newObj = new (externalObj);
        return newObj;
    }
}

# The constructor function to generate an object of `java.util.zip.ZipFile`.
#
# + arg0 - The `javaio:File` value required to map with the Java constructor parameter.
# + arg1 - The `int` value required to map with the Java constructor parameter.
# + return - The new `ZipFile` class or `javaio:IOException` error generated.
public function newZipFile3(javaio:File arg0, int arg1) returns ZipFile|javaio:IOException {
    handle|error externalObj = java_util_zip_ZipFile_newZipFile3(arg0.jObj, arg1);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        ZipFile newObj = new (externalObj);
        return newObj;
    }
}

# The constructor function to generate an object of `java.util.zip.ZipFile`.
#
# + arg0 - The `javaio:File` value required to map with the Java constructor parameter.
# + arg1 - The `int` value required to map with the Java constructor parameter.
# + arg2 - The `javaniocharset:Charset` value required to map with the Java constructor parameter.
# + return - The new `ZipFile` class or `javaio:IOException` error generated.
public function newZipFile4(javaio:File arg0, int arg1, javaniocharset:Charset arg2) returns ZipFile|javaio:IOException {
    handle|error externalObj = java_util_zip_ZipFile_newZipFile4(arg0.jObj, arg1, arg2.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        ZipFile newObj = new (externalObj);
        return newObj;
    }
}

# The constructor function to generate an object of `java.util.zip.ZipFile`.
#
# + arg0 - The `string` value required to map with the Java constructor parameter.
# + return - The new `ZipFile` class or `javaio:IOException` error generated.
public function newZipFile5(string arg0) returns ZipFile|javaio:IOException {
    handle|error externalObj = java_util_zip_ZipFile_newZipFile5(java:fromString(arg0));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        ZipFile newObj = new (externalObj);
        return newObj;
    }
}

# The constructor function to generate an object of `java.util.zip.ZipFile`.
#
# + arg0 - The `string` value required to map with the Java constructor parameter.
# + arg1 - The `javaniocharset:Charset` value required to map with the Java constructor parameter.
# + return - The new `ZipFile` class or `javaio:IOException` error generated.
public function newZipFile6(string arg0, javaniocharset:Charset arg1) returns ZipFile|javaio:IOException {
    handle|error externalObj = java_util_zip_ZipFile_newZipFile6(java:fromString(arg0), arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        ZipFile newObj = new (externalObj);
        return newObj;
    }
}

# The function that retrieves the value of the public field `OPEN_READ`.
#
# + return - The `int` value of the field.
public function ZipFile_getOPEN_READ() returns int {
    return java_util_zip_ZipFile_getOPEN_READ();
}

# The function that retrieves the value of the public field `OPEN_DELETE`.
#
# + return - The `int` value of the field.
public function ZipFile_getOPEN_DELETE() returns int {
    return java_util_zip_ZipFile_getOPEN_DELETE();
}

# The function that retrieves the value of the public field `LOCSIG`.
#
# + return - The `int` value of the field.
public function ZipFile_getLOCSIG() returns int {
    return java_util_zip_ZipFile_getLOCSIG();
}

# The function that retrieves the value of the public field `EXTSIG`.
#
# + return - The `int` value of the field.
public function ZipFile_getEXTSIG() returns int {
    return java_util_zip_ZipFile_getEXTSIG();
}

# The function that retrieves the value of the public field `CENSIG`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENSIG() returns int {
    return java_util_zip_ZipFile_getCENSIG();
}

# The function that retrieves the value of the public field `ENDSIG`.
#
# + return - The `int` value of the field.
public function ZipFile_getENDSIG() returns int {
    return java_util_zip_ZipFile_getENDSIG();
}

# The function that retrieves the value of the public field `LOCHDR`.
#
# + return - The `int` value of the field.
public function ZipFile_getLOCHDR() returns int {
    return java_util_zip_ZipFile_getLOCHDR();
}

# The function that retrieves the value of the public field `EXTHDR`.
#
# + return - The `int` value of the field.
public function ZipFile_getEXTHDR() returns int {
    return java_util_zip_ZipFile_getEXTHDR();
}

# The function that retrieves the value of the public field `CENHDR`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENHDR() returns int {
    return java_util_zip_ZipFile_getCENHDR();
}

# The function that retrieves the value of the public field `ENDHDR`.
#
# + return - The `int` value of the field.
public function ZipFile_getENDHDR() returns int {
    return java_util_zip_ZipFile_getENDHDR();
}

# The function that retrieves the value of the public field `LOCVER`.
#
# + return - The `int` value of the field.
public function ZipFile_getLOCVER() returns int {
    return java_util_zip_ZipFile_getLOCVER();
}

# The function that retrieves the value of the public field `LOCFLG`.
#
# + return - The `int` value of the field.
public function ZipFile_getLOCFLG() returns int {
    return java_util_zip_ZipFile_getLOCFLG();
}

# The function that retrieves the value of the public field `LOCHOW`.
#
# + return - The `int` value of the field.
public function ZipFile_getLOCHOW() returns int {
    return java_util_zip_ZipFile_getLOCHOW();
}

# The function that retrieves the value of the public field `LOCTIM`.
#
# + return - The `int` value of the field.
public function ZipFile_getLOCTIM() returns int {
    return java_util_zip_ZipFile_getLOCTIM();
}

# The function that retrieves the value of the public field `LOCCRC`.
#
# + return - The `int` value of the field.
public function ZipFile_getLOCCRC() returns int {
    return java_util_zip_ZipFile_getLOCCRC();
}

# The function that retrieves the value of the public field `LOCSIZ`.
#
# + return - The `int` value of the field.
public function ZipFile_getLOCSIZ() returns int {
    return java_util_zip_ZipFile_getLOCSIZ();
}

# The function that retrieves the value of the public field `LOCLEN`.
#
# + return - The `int` value of the field.
public function ZipFile_getLOCLEN() returns int {
    return java_util_zip_ZipFile_getLOCLEN();
}

# The function that retrieves the value of the public field `LOCNAM`.
#
# + return - The `int` value of the field.
public function ZipFile_getLOCNAM() returns int {
    return java_util_zip_ZipFile_getLOCNAM();
}

# The function that retrieves the value of the public field `LOCEXT`.
#
# + return - The `int` value of the field.
public function ZipFile_getLOCEXT() returns int {
    return java_util_zip_ZipFile_getLOCEXT();
}

# The function that retrieves the value of the public field `EXTCRC`.
#
# + return - The `int` value of the field.
public function ZipFile_getEXTCRC() returns int {
    return java_util_zip_ZipFile_getEXTCRC();
}

# The function that retrieves the value of the public field `EXTSIZ`.
#
# + return - The `int` value of the field.
public function ZipFile_getEXTSIZ() returns int {
    return java_util_zip_ZipFile_getEXTSIZ();
}

# The function that retrieves the value of the public field `EXTLEN`.
#
# + return - The `int` value of the field.
public function ZipFile_getEXTLEN() returns int {
    return java_util_zip_ZipFile_getEXTLEN();
}

# The function that retrieves the value of the public field `CENVEM`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENVEM() returns int {
    return java_util_zip_ZipFile_getCENVEM();
}

# The function that retrieves the value of the public field `CENVER`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENVER() returns int {
    return java_util_zip_ZipFile_getCENVER();
}

# The function that retrieves the value of the public field `CENFLG`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENFLG() returns int {
    return java_util_zip_ZipFile_getCENFLG();
}

# The function that retrieves the value of the public field `CENHOW`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENHOW() returns int {
    return java_util_zip_ZipFile_getCENHOW();
}

# The function that retrieves the value of the public field `CENTIM`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENTIM() returns int {
    return java_util_zip_ZipFile_getCENTIM();
}

# The function that retrieves the value of the public field `CENCRC`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENCRC() returns int {
    return java_util_zip_ZipFile_getCENCRC();
}

# The function that retrieves the value of the public field `CENSIZ`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENSIZ() returns int {
    return java_util_zip_ZipFile_getCENSIZ();
}

# The function that retrieves the value of the public field `CENLEN`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENLEN() returns int {
    return java_util_zip_ZipFile_getCENLEN();
}

# The function that retrieves the value of the public field `CENNAM`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENNAM() returns int {
    return java_util_zip_ZipFile_getCENNAM();
}

# The function that retrieves the value of the public field `CENEXT`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENEXT() returns int {
    return java_util_zip_ZipFile_getCENEXT();
}

# The function that retrieves the value of the public field `CENCOM`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENCOM() returns int {
    return java_util_zip_ZipFile_getCENCOM();
}

# The function that retrieves the value of the public field `CENDSK`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENDSK() returns int {
    return java_util_zip_ZipFile_getCENDSK();
}

# The function that retrieves the value of the public field `CENATT`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENATT() returns int {
    return java_util_zip_ZipFile_getCENATT();
}

# The function that retrieves the value of the public field `CENATX`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENATX() returns int {
    return java_util_zip_ZipFile_getCENATX();
}

# The function that retrieves the value of the public field `CENOFF`.
#
# + return - The `int` value of the field.
public function ZipFile_getCENOFF() returns int {
    return java_util_zip_ZipFile_getCENOFF();
}

# The function that retrieves the value of the public field `ENDSUB`.
#
# + return - The `int` value of the field.
public function ZipFile_getENDSUB() returns int {
    return java_util_zip_ZipFile_getENDSUB();
}

# The function that retrieves the value of the public field `ENDTOT`.
#
# + return - The `int` value of the field.
public function ZipFile_getENDTOT() returns int {
    return java_util_zip_ZipFile_getENDTOT();
}

# The function that retrieves the value of the public field `ENDSIZ`.
#
# + return - The `int` value of the field.
public function ZipFile_getENDSIZ() returns int {
    return java_util_zip_ZipFile_getENDSIZ();
}

# The function that retrieves the value of the public field `ENDOFF`.
#
# + return - The `int` value of the field.
public function ZipFile_getENDOFF() returns int {
    return java_util_zip_ZipFile_getENDOFF();
}

# The function that retrieves the value of the public field `ENDCOM`.
#
# + return - The `int` value of the field.
public function ZipFile_getENDCOM() returns int {
    return java_util_zip_ZipFile_getENDCOM();
}

function java_util_zip_ZipFile_close(handle receiver) returns error? = @java:Method {
    name: "close",
    'class: "java.util.zip.ZipFile",
    paramTypes: []
} external;

function java_util_zip_ZipFile_entries(handle receiver) returns handle = @java:Method {
    name: "entries",
    'class: "java.util.zip.ZipFile",
    paramTypes: []
} external;

function java_util_zip_ZipFile_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.zip.ZipFile",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_zip_ZipFile_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.util.zip.ZipFile",
    paramTypes: []
} external;

function java_util_zip_ZipFile_getComment(handle receiver) returns handle = @java:Method {
    name: "getComment",
    'class: "java.util.zip.ZipFile",
    paramTypes: []
} external;

function java_util_zip_ZipFile_getEntry(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getEntry",
    'class: "java.util.zip.ZipFile",
    paramTypes: ["java.lang.String"]
} external;

function java_util_zip_ZipFile_getInputStream(handle receiver, handle arg0) returns handle|error = @java:Method {
    name: "getInputStream",
    'class: "java.util.zip.ZipFile",
    paramTypes: ["java.util.zip.ZipEntry"]
} external;

function java_util_zip_ZipFile_getName(handle receiver) returns handle = @java:Method {
    name: "getName",
    'class: "java.util.zip.ZipFile",
    paramTypes: []
} external;

function java_util_zip_ZipFile_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.zip.ZipFile",
    paramTypes: []
} external;

function java_util_zip_ZipFile_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "java.util.zip.ZipFile",
    paramTypes: []
} external;

function java_util_zip_ZipFile_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "java.util.zip.ZipFile",
    paramTypes: []
} external;

function java_util_zip_ZipFile_size(handle receiver) returns int = @java:Method {
    name: "size",
    'class: "java.util.zip.ZipFile",
    paramTypes: []
} external;

function java_util_zip_ZipFile_stream(handle receiver) returns handle = @java:Method {
    name: "stream",
    'class: "java.util.zip.ZipFile",
    paramTypes: []
} external;

function java_util_zip_ZipFile_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.zip.ZipFile",
    paramTypes: []
} external;

function java_util_zip_ZipFile_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.zip.ZipFile",
    paramTypes: ["long"]
} external;

function java_util_zip_ZipFile_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.zip.ZipFile",
    paramTypes: ["long", "int"]
} external;

function java_util_zip_ZipFile_getOPEN_READ() returns int = @java:FieldGet {
    name: "OPEN_READ",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getOPEN_DELETE() returns int = @java:FieldGet {
    name: "OPEN_DELETE",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getLOCSIG() returns int = @java:FieldGet {
    name: "LOCSIG",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getEXTSIG() returns int = @java:FieldGet {
    name: "EXTSIG",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENSIG() returns int = @java:FieldGet {
    name: "CENSIG",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getENDSIG() returns int = @java:FieldGet {
    name: "ENDSIG",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getLOCHDR() returns int = @java:FieldGet {
    name: "LOCHDR",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getEXTHDR() returns int = @java:FieldGet {
    name: "EXTHDR",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENHDR() returns int = @java:FieldGet {
    name: "CENHDR",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getENDHDR() returns int = @java:FieldGet {
    name: "ENDHDR",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getLOCVER() returns int = @java:FieldGet {
    name: "LOCVER",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getLOCFLG() returns int = @java:FieldGet {
    name: "LOCFLG",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getLOCHOW() returns int = @java:FieldGet {
    name: "LOCHOW",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getLOCTIM() returns int = @java:FieldGet {
    name: "LOCTIM",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getLOCCRC() returns int = @java:FieldGet {
    name: "LOCCRC",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getLOCSIZ() returns int = @java:FieldGet {
    name: "LOCSIZ",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getLOCLEN() returns int = @java:FieldGet {
    name: "LOCLEN",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getLOCNAM() returns int = @java:FieldGet {
    name: "LOCNAM",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getLOCEXT() returns int = @java:FieldGet {
    name: "LOCEXT",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getEXTCRC() returns int = @java:FieldGet {
    name: "EXTCRC",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getEXTSIZ() returns int = @java:FieldGet {
    name: "EXTSIZ",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getEXTLEN() returns int = @java:FieldGet {
    name: "EXTLEN",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENVEM() returns int = @java:FieldGet {
    name: "CENVEM",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENVER() returns int = @java:FieldGet {
    name: "CENVER",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENFLG() returns int = @java:FieldGet {
    name: "CENFLG",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENHOW() returns int = @java:FieldGet {
    name: "CENHOW",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENTIM() returns int = @java:FieldGet {
    name: "CENTIM",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENCRC() returns int = @java:FieldGet {
    name: "CENCRC",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENSIZ() returns int = @java:FieldGet {
    name: "CENSIZ",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENLEN() returns int = @java:FieldGet {
    name: "CENLEN",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENNAM() returns int = @java:FieldGet {
    name: "CENNAM",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENEXT() returns int = @java:FieldGet {
    name: "CENEXT",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENCOM() returns int = @java:FieldGet {
    name: "CENCOM",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENDSK() returns int = @java:FieldGet {
    name: "CENDSK",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENATT() returns int = @java:FieldGet {
    name: "CENATT",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENATX() returns int = @java:FieldGet {
    name: "CENATX",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getCENOFF() returns int = @java:FieldGet {
    name: "CENOFF",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getENDSUB() returns int = @java:FieldGet {
    name: "ENDSUB",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getENDTOT() returns int = @java:FieldGet {
    name: "ENDTOT",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getENDSIZ() returns int = @java:FieldGet {
    name: "ENDSIZ",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getENDOFF() returns int = @java:FieldGet {
    name: "ENDOFF",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_getENDCOM() returns int = @java:FieldGet {
    name: "ENDCOM",
    'class: "java.util.zip.ZipFile"
} external;

function java_util_zip_ZipFile_newZipFile1(handle arg0) returns handle|error = @java:Constructor {
    'class: "java.util.zip.ZipFile",
    paramTypes: ["java.io.File"]
} external;

function java_util_zip_ZipFile_newZipFile2(handle arg0, handle arg1) returns handle|error = @java:Constructor {
    'class: "java.util.zip.ZipFile",
    paramTypes: ["java.io.File", "java.nio.charset.Charset"]
} external;

function java_util_zip_ZipFile_newZipFile3(handle arg0, int arg1) returns handle|error = @java:Constructor {
    'class: "java.util.zip.ZipFile",
    paramTypes: ["java.io.File", "int"]
} external;

function java_util_zip_ZipFile_newZipFile4(handle arg0, int arg1, handle arg2) returns handle|error = @java:Constructor {
    'class: "java.util.zip.ZipFile",
    paramTypes: ["java.io.File", "int", "java.nio.charset.Charset"]
} external;

function java_util_zip_ZipFile_newZipFile5(handle arg0) returns handle|error = @java:Constructor {
    'class: "java.util.zip.ZipFile",
    paramTypes: ["java.lang.String"]
} external;

function java_util_zip_ZipFile_newZipFile6(handle arg0, handle arg1) returns handle|error = @java:Constructor {
    'class: "java.util.zip.ZipFile",
    paramTypes: ["java.lang.String", "java.nio.charset.Charset"]
} external;

