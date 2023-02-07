import ballerina/jballerina.java;
import backend.java.lang as javalang;
import backend.java.util as javautil;
import backend.java.io as javaio;

# Ballerina class mapping for the Java `java.util.jar.Manifest` class.
@java:Binding {'class: "java.util.jar.Manifest"}
public distinct class Manifest {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `java.util.jar.Manifest` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `java.util.jar.Manifest` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.util.jar.Manifest` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
    # The function that maps to the `clear` method of `java.util.jar.Manifest`.
    public function clear() {
        java_util_jar_Manifest_clear(self.jObj);
    }

    # The function that maps to the `clone` method of `java.util.jar.Manifest`.
    #
    # + return - The `javalang:Object` value returning from the Java mapping.
    public function clone() returns javalang:Object {
        handle externalObj = java_util_jar_Manifest_clone(self.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `equals` method of `java.util.jar.Manifest`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return java_util_jar_Manifest_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getAttributes` method of `java.util.jar.Manifest`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Attributes` value returning from the Java mapping.
    public function getAttributes(string arg0) returns Attributes {
        handle externalObj = java_util_jar_Manifest_getAttributes(self.jObj, java:fromString(arg0));
        Attributes newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getClass` method of `java.util.jar.Manifest`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = java_util_jar_Manifest_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getEntries` method of `java.util.jar.Manifest`.
    #
    # + return - The `javautil:Map` value returning from the Java mapping.
    public function getEntries() returns javautil:Map {
        handle externalObj = java_util_jar_Manifest_getEntries(self.jObj);
        javautil:Map newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getMainAttributes` method of `java.util.jar.Manifest`.
    #
    # + return - The `Attributes` value returning from the Java mapping.
    public function getMainAttributes() returns Attributes {
        handle externalObj = java_util_jar_Manifest_getMainAttributes(self.jObj);
        Attributes newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `java.util.jar.Manifest`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return java_util_jar_Manifest_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `java.util.jar.Manifest`.
    public function notify() {
        java_util_jar_Manifest_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `java.util.jar.Manifest`.
    public function notifyAll() {
        java_util_jar_Manifest_notifyAll(self.jObj);
    }

    # The function that maps to the `read` method of `java.util.jar.Manifest`.
    #
    # + arg0 - The `javaio:InputStream` value required to map with the Java method parameter.
    # + return - The `javaio:IOException` value returning from the Java mapping.
    public function read(javaio:InputStream arg0) returns javaio:IOException? {
        error|() externalObj = java_util_jar_Manifest_read(self.jObj, arg0.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.util.jar.Manifest`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = java_util_jar_Manifest_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.util.jar.Manifest`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = java_util_jar_Manifest_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.util.jar.Manifest`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = java_util_jar_Manifest_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `write` method of `java.util.jar.Manifest`.
    #
    # + arg0 - The `javaio:OutputStream` value required to map with the Java method parameter.
    # + return - The `javaio:IOException` value returning from the Java mapping.
    public function write(javaio:OutputStream arg0) returns javaio:IOException? {
        error|() externalObj = java_util_jar_Manifest_write(self.jObj, arg0.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `java.util.jar.Manifest`.
#
# + return - The new `Manifest` class generated.
public function newManifest1() returns Manifest {
    handle externalObj = java_util_jar_Manifest_newManifest1();
    Manifest newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `java.util.jar.Manifest`.
#
# + arg0 - The `javaio:InputStream` value required to map with the Java constructor parameter.
# + return - The new `Manifest` class or `javaio:IOException` error generated.
public function newManifest2(javaio:InputStream arg0) returns Manifest|javaio:IOException {
    handle|error externalObj = java_util_jar_Manifest_newManifest2(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Manifest newObj = new (externalObj);
        return newObj;
    }
}

# The constructor function to generate an object of `java.util.jar.Manifest`.
#
# + arg0 - The `Manifest` value required to map with the Java constructor parameter.
# + return - The new `Manifest` class generated.
public function newManifest3(Manifest arg0) returns Manifest {
    handle externalObj = java_util_jar_Manifest_newManifest3(arg0.jObj);
    Manifest newObj = new (externalObj);
    return newObj;
}

function java_util_jar_Manifest_clear(handle receiver) = @java:Method {
    name: "clear",
    'class: "java.util.jar.Manifest",
    paramTypes: []
} external;

function java_util_jar_Manifest_clone(handle receiver) returns handle = @java:Method {
    name: "clone",
    'class: "java.util.jar.Manifest",
    paramTypes: []
} external;

function java_util_jar_Manifest_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.jar.Manifest",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_jar_Manifest_getAttributes(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getAttributes",
    'class: "java.util.jar.Manifest",
    paramTypes: ["java.lang.String"]
} external;

function java_util_jar_Manifest_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.util.jar.Manifest",
    paramTypes: []
} external;

function java_util_jar_Manifest_getEntries(handle receiver) returns handle = @java:Method {
    name: "getEntries",
    'class: "java.util.jar.Manifest",
    paramTypes: []
} external;

function java_util_jar_Manifest_getMainAttributes(handle receiver) returns handle = @java:Method {
    name: "getMainAttributes",
    'class: "java.util.jar.Manifest",
    paramTypes: []
} external;

function java_util_jar_Manifest_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.jar.Manifest",
    paramTypes: []
} external;

function java_util_jar_Manifest_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "java.util.jar.Manifest",
    paramTypes: []
} external;

function java_util_jar_Manifest_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "java.util.jar.Manifest",
    paramTypes: []
} external;

function java_util_jar_Manifest_read(handle receiver, handle arg0) returns error? = @java:Method {
    name: "read",
    'class: "java.util.jar.Manifest",
    paramTypes: ["java.io.InputStream"]
} external;

function java_util_jar_Manifest_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.jar.Manifest",
    paramTypes: []
} external;

function java_util_jar_Manifest_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.jar.Manifest",
    paramTypes: ["long"]
} external;

function java_util_jar_Manifest_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.jar.Manifest",
    paramTypes: ["long", "int"]
} external;

function java_util_jar_Manifest_write(handle receiver, handle arg0) returns error? = @java:Method {
    name: "write",
    'class: "java.util.jar.Manifest",
    paramTypes: ["java.io.OutputStream"]
} external;

function java_util_jar_Manifest_newManifest1() returns handle = @java:Constructor {
    'class: "java.util.jar.Manifest",
    paramTypes: []
} external;

function java_util_jar_Manifest_newManifest2(handle arg0) returns handle|error = @java:Constructor {
    'class: "java.util.jar.Manifest",
    paramTypes: ["java.io.InputStream"]
} external;

function java_util_jar_Manifest_newManifest3(handle arg0) returns handle = @java:Constructor {
    'class: "java.util.jar.Manifest",
    paramTypes: ["java.util.jar.Manifest"]
} external;

