import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import backendv2.java.lang as javalang;

# Ballerina class mapping for the Java `java.io.FilterInputStream` class.
@java:Binding {'class: "java.io.FilterInputStream"}
public distinct class FilterInputStream {

    *java:JObject;
    *InputStream;

    # The `handle` field that stores the reference to the `java.io.FilterInputStream` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `java.io.FilterInputStream` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.io.FilterInputStream` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
    # The function that maps to the `available` method of `java.io.FilterInputStream`.
    #
    # + return - The `int` or the `IOException` value returning from the Java mapping.
    public function available() returns int|IOException {
        int|error externalObj = java_io_FilterInputStream_available(self.jObj);
        if (externalObj is error) {
            IOException e = error IOException(IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return externalObj;
        }
    }

    # The function that maps to the `close` method of `java.io.FilterInputStream`.
    #
    # + return - The `IOException` value returning from the Java mapping.
    public function close() returns IOException? {
        error|() externalObj = java_io_FilterInputStream_close(self.jObj);
        if (externalObj is error) {
            IOException e = error IOException(IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `equals` method of `java.io.FilterInputStream`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return java_io_FilterInputStream_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `java.io.FilterInputStream`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = java_io_FilterInputStream_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `java.io.FilterInputStream`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return java_io_FilterInputStream_hashCode(self.jObj);
    }

    # The function that maps to the `mark` method of `java.io.FilterInputStream`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    public function mark(int arg0) {
        java_io_FilterInputStream_mark(self.jObj, arg0);
    }

    # The function that maps to the `markSupported` method of `java.io.FilterInputStream`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public function markSupported() returns boolean {
        return java_io_FilterInputStream_markSupported(self.jObj);
    }

    # The function that maps to the `notify` method of `java.io.FilterInputStream`.
    public function notify() {
        java_io_FilterInputStream_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `java.io.FilterInputStream`.
    public function notifyAll() {
        java_io_FilterInputStream_notifyAll(self.jObj);
    }

    # The function that maps to the `read` method of `java.io.FilterInputStream`.
    #
    # + return - The `int` or the `IOException` value returning from the Java mapping.
    public function read() returns int|IOException {
        int|error externalObj = java_io_FilterInputStream_read(self.jObj);
        if (externalObj is error) {
            IOException e = error IOException(IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return externalObj;
        }
    }

    # The function that maps to the `read` method of `java.io.FilterInputStream`.
    #
    # + arg0 - The `byte[]` value required to map with the Java method parameter.
    # + return - The `int` or the `IOException` value returning from the Java mapping.
    public function read2(byte[] arg0) returns int|IOException|error {
        int|error externalObj = java_io_FilterInputStream_read2(self.jObj, check jarrays:toHandle(arg0, "byte"));
        if (externalObj is error) {
            IOException e = error IOException(IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return externalObj;
        }
    }

    # The function that maps to the `read` method of `java.io.FilterInputStream`.
    #
    # + arg0 - The `byte[]` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + arg2 - The `int` value required to map with the Java method parameter.
    # + return - The `int` or the `IOException` value returning from the Java mapping.
    public function read3(byte[] arg0, int arg1, int arg2) returns int|IOException|error {
        int|error externalObj = java_io_FilterInputStream_read3(self.jObj, check jarrays:toHandle(arg0, "byte"), arg1, arg2);
        if (externalObj is error) {
            IOException e = error IOException(IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return externalObj;
        }
    }

    # The function that maps to the `readAllBytes` method of `java.io.FilterInputStream`.
    #
    # + return - The `byte[]` or the `IOException` value returning from the Java mapping.
    public function readAllBytes() returns byte[]|IOException|error {
        handle|error externalObj = java_io_FilterInputStream_readAllBytes(self.jObj);
        if (externalObj is error) {
            IOException e = error IOException(IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return <byte[]>check jarrays:fromHandle(externalObj, "byte");
        }
    }

    # The function that maps to the `readNBytes` method of `java.io.FilterInputStream`.
    #
    # + arg0 - The `byte[]` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + arg2 - The `int` value required to map with the Java method parameter.
    # + return - The `int` or the `IOException` value returning from the Java mapping.
    public function readNBytes(byte[] arg0, int arg1, int arg2) returns int|IOException|error {
        int|error externalObj = java_io_FilterInputStream_readNBytes(self.jObj, check jarrays:toHandle(arg0, "byte"), arg1, arg2);
        if (externalObj is error) {
            IOException e = error IOException(IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return externalObj;
        }
    }

    # The function that maps to the `readNBytes` method of `java.io.FilterInputStream`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `byte[]` or the `IOException` value returning from the Java mapping.
    public function readNBytes2(int arg0) returns byte[]|IOException|error {
        handle|error externalObj = java_io_FilterInputStream_readNBytes2(self.jObj, arg0);
        if (externalObj is error) {
            IOException e = error IOException(IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return <byte[]>check jarrays:fromHandle(externalObj, "byte");
        }
    }

    # The function that maps to the `reset` method of `java.io.FilterInputStream`.
    #
    # + return - The `IOException` value returning from the Java mapping.
    public function reset() returns IOException? {
        error|() externalObj = java_io_FilterInputStream_reset(self.jObj);
        if (externalObj is error) {
            IOException e = error IOException(IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `skip` method of `java.io.FilterInputStream`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `int` or the `IOException` value returning from the Java mapping.
    public function skip(int arg0) returns int|IOException {
        int|error externalObj = java_io_FilterInputStream_skip(self.jObj, arg0);
        if (externalObj is error) {
            IOException e = error IOException(IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return externalObj;
        }
    }

    # The function that maps to the `transferTo` method of `java.io.FilterInputStream`.
    #
    # + arg0 - The `OutputStream` value required to map with the Java method parameter.
    # + return - The `int` or the `IOException` value returning from the Java mapping.
    public function transferTo(OutputStream arg0) returns int|IOException {
        int|error externalObj = java_io_FilterInputStream_transferTo(self.jObj, arg0.jObj);
        if (externalObj is error) {
            IOException e = error IOException(IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return externalObj;
        }
    }

    # The function that maps to the `wait` method of `java.io.FilterInputStream`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = java_io_FilterInputStream_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.io.FilterInputStream`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = java_io_FilterInputStream_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.io.FilterInputStream`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = java_io_FilterInputStream_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The function that maps to the `nullInputStream` method of `java.io.FilterInputStream`.
#
# + return - The `InputStream` value returning from the Java mapping.
public function FilterInputStream_nullInputStream() returns InputStream {
    handle externalObj = java_io_FilterInputStream_nullInputStream();
    InputStream newObj = new (externalObj);
    return newObj;
}

function java_io_FilterInputStream_available(handle receiver) returns int|error = @java:Method {
    name: "available",
    'class: "java.io.FilterInputStream",
    paramTypes: []
} external;

function java_io_FilterInputStream_close(handle receiver) returns error? = @java:Method {
    name: "close",
    'class: "java.io.FilterInputStream",
    paramTypes: []
} external;

function java_io_FilterInputStream_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "java.io.FilterInputStream",
    paramTypes: ["java.lang.Object"]
} external;

function java_io_FilterInputStream_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.io.FilterInputStream",
    paramTypes: []
} external;

function java_io_FilterInputStream_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "java.io.FilterInputStream",
    paramTypes: []
} external;

function java_io_FilterInputStream_mark(handle receiver, int arg0) = @java:Method {
    name: "mark",
    'class: "java.io.FilterInputStream",
    paramTypes: ["int"]
} external;

function java_io_FilterInputStream_markSupported(handle receiver) returns boolean = @java:Method {
    name: "markSupported",
    'class: "java.io.FilterInputStream",
    paramTypes: []
} external;

function java_io_FilterInputStream_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "java.io.FilterInputStream",
    paramTypes: []
} external;

function java_io_FilterInputStream_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "java.io.FilterInputStream",
    paramTypes: []
} external;

function java_io_FilterInputStream_nullInputStream() returns handle = @java:Method {
    name: "nullInputStream",
    'class: "java.io.FilterInputStream",
    paramTypes: []
} external;

function java_io_FilterInputStream_read(handle receiver) returns int|error = @java:Method {
    name: "read",
    'class: "java.io.FilterInputStream",
    paramTypes: []
} external;

function java_io_FilterInputStream_read2(handle receiver, handle arg0) returns int|error = @java:Method {
    name: "read",
    'class: "java.io.FilterInputStream",
    paramTypes: ["[B"]
} external;

function java_io_FilterInputStream_read3(handle receiver, handle arg0, int arg1, int arg2) returns int|error = @java:Method {
    name: "read",
    'class: "java.io.FilterInputStream",
    paramTypes: ["[B", "int", "int"]
} external;

function java_io_FilterInputStream_readAllBytes(handle receiver) returns handle|error = @java:Method {
    name: "readAllBytes",
    'class: "java.io.FilterInputStream",
    paramTypes: []
} external;

function java_io_FilterInputStream_readNBytes(handle receiver, handle arg0, int arg1, int arg2) returns int|error = @java:Method {
    name: "readNBytes",
    'class: "java.io.FilterInputStream",
    paramTypes: ["[B", "int", "int"]
} external;

function java_io_FilterInputStream_readNBytes2(handle receiver, int arg0) returns handle|error = @java:Method {
    name: "readNBytes",
    'class: "java.io.FilterInputStream",
    paramTypes: ["int"]
} external;

function java_io_FilterInputStream_reset(handle receiver) returns error? = @java:Method {
    name: "reset",
    'class: "java.io.FilterInputStream",
    paramTypes: []
} external;

function java_io_FilterInputStream_skip(handle receiver, int arg0) returns int|error = @java:Method {
    name: "skip",
    'class: "java.io.FilterInputStream",
    paramTypes: ["long"]
} external;

function java_io_FilterInputStream_transferTo(handle receiver, handle arg0) returns int|error = @java:Method {
    name: "transferTo",
    'class: "java.io.FilterInputStream",
    paramTypes: ["java.io.OutputStream"]
} external;

function java_io_FilterInputStream_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "java.io.FilterInputStream",
    paramTypes: []
} external;

function java_io_FilterInputStream_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "java.io.FilterInputStream",
    paramTypes: ["long"]
} external;

function java_io_FilterInputStream_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "java.io.FilterInputStream",
    paramTypes: ["long", "int"]
} external;

