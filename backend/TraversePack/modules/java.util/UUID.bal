import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import backend.java.lang as javalang;

# Ballerina class mapping for the Java `java.util.UUID` class.
@java:Binding {'class: "java.util.UUID"}
public distinct class UUID {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `java.util.UUID` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `java.util.UUID` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.util.UUID` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
    # The function that maps to the `clockSequence` method of `java.util.UUID`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function clockSequence() returns int {
        return java_util_UUID_clockSequence(self.jObj);
    }

    # The function that maps to the `compareTo` method of `java.util.UUID`.
    #
    # + arg0 - The `UUID` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    public function compareTo(UUID arg0) returns int {
        return java_util_UUID_compareTo(self.jObj, arg0.jObj);
    }

    # The function that maps to the `equals` method of `java.util.UUID`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return java_util_UUID_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `java.util.UUID`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = java_util_UUID_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getLeastSignificantBits` method of `java.util.UUID`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function getLeastSignificantBits() returns int {
        return java_util_UUID_getLeastSignificantBits(self.jObj);
    }

    # The function that maps to the `getMostSignificantBits` method of `java.util.UUID`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function getMostSignificantBits() returns int {
        return java_util_UUID_getMostSignificantBits(self.jObj);
    }

    # The function that maps to the `hashCode` method of `java.util.UUID`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return java_util_UUID_hashCode(self.jObj);
    }

    # The function that maps to the `node` method of `java.util.UUID`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function node() returns int {
        return java_util_UUID_node(self.jObj);
    }

    # The function that maps to the `notify` method of `java.util.UUID`.
    public function notify() {
        java_util_UUID_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `java.util.UUID`.
    public function notifyAll() {
        java_util_UUID_notifyAll(self.jObj);
    }

    # The function that maps to the `timestamp` method of `java.util.UUID`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function timestamp() returns int {
        return java_util_UUID_timestamp(self.jObj);
    }

    # The function that maps to the `variant` method of `java.util.UUID`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function variant() returns int {
        return java_util_UUID_variant(self.jObj);
    }

    # The function that maps to the `version` method of `java.util.UUID`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function 'version() returns int {
        return java_util_UUID_version(self.jObj);
    }

    # The function that maps to the `wait` method of `java.util.UUID`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = java_util_UUID_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.util.UUID`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = java_util_UUID_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.util.UUID`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = java_util_UUID_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `java.util.UUID`.
#
# + arg0 - The `int` value required to map with the Java constructor parameter.
# + arg1 - The `int` value required to map with the Java constructor parameter.
# + return - The new `UUID` class generated.
public function newUUID1(int arg0, int arg1) returns UUID {
    handle externalObj = java_util_UUID_newUUID1(arg0, arg1);
    UUID newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `fromString` method of `java.util.UUID`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + return - The `UUID` value returning from the Java mapping.
public function UUID_fromString(string arg0) returns UUID {
    handle externalObj = java_util_UUID_fromString(java:fromString(arg0));
    UUID newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `nameUUIDFromBytes` method of `java.util.UUID`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + return - The `UUID` value returning from the Java mapping.
public function UUID_nameUUIDFromBytes(byte[] arg0) returns UUID|error {
    handle externalObj = java_util_UUID_nameUUIDFromBytes(check jarrays:toHandle(arg0, "byte"));
    UUID newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `randomUUID` method of `java.util.UUID`.
#
# + return - The `UUID` value returning from the Java mapping.
public function UUID_randomUUID() returns UUID {
    handle externalObj = java_util_UUID_randomUUID();
    UUID newObj = new (externalObj);
    return newObj;
}

function java_util_UUID_clockSequence(handle receiver) returns int = @java:Method {
    name: "clockSequence",
    'class: "java.util.UUID",
    paramTypes: []
} external;

function java_util_UUID_compareTo(handle receiver, handle arg0) returns int = @java:Method {
    name: "compareTo",
    'class: "java.util.UUID",
    paramTypes: ["java.util.UUID"]
} external;

function java_util_UUID_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.UUID",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_UUID_fromString(handle arg0) returns handle = @java:Method {
    name: "fromString",
    'class: "java.util.UUID",
    paramTypes: ["java.lang.String"]
} external;

function java_util_UUID_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.util.UUID",
    paramTypes: []
} external;

function java_util_UUID_getLeastSignificantBits(handle receiver) returns int = @java:Method {
    name: "getLeastSignificantBits",
    'class: "java.util.UUID",
    paramTypes: []
} external;

function java_util_UUID_getMostSignificantBits(handle receiver) returns int = @java:Method {
    name: "getMostSignificantBits",
    'class: "java.util.UUID",
    paramTypes: []
} external;

function java_util_UUID_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.UUID",
    paramTypes: []
} external;

function java_util_UUID_nameUUIDFromBytes(handle arg0) returns handle = @java:Method {
    name: "nameUUIDFromBytes",
    'class: "java.util.UUID",
    paramTypes: ["[B"]
} external;

function java_util_UUID_node(handle receiver) returns int = @java:Method {
    name: "node",
    'class: "java.util.UUID",
    paramTypes: []
} external;

function java_util_UUID_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "java.util.UUID",
    paramTypes: []
} external;

function java_util_UUID_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "java.util.UUID",
    paramTypes: []
} external;

function java_util_UUID_randomUUID() returns handle = @java:Method {
    name: "randomUUID",
    'class: "java.util.UUID",
    paramTypes: []
} external;

function java_util_UUID_timestamp(handle receiver) returns int = @java:Method {
    name: "timestamp",
    'class: "java.util.UUID",
    paramTypes: []
} external;

function java_util_UUID_variant(handle receiver) returns int = @java:Method {
    name: "variant",
    'class: "java.util.UUID",
    paramTypes: []
} external;

function java_util_UUID_version(handle receiver) returns int = @java:Method {
    name: "version",
    'class: "java.util.UUID",
    paramTypes: []
} external;

function java_util_UUID_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.UUID",
    paramTypes: []
} external;

function java_util_UUID_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.UUID",
    paramTypes: ["long"]
} external;

function java_util_UUID_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.UUID",
    paramTypes: ["long", "int"]
} external;

function java_util_UUID_newUUID1(int arg0, int arg1) returns handle = @java:Constructor {
    'class: "java.util.UUID",
    paramTypes: ["long", "long"]
} external;

