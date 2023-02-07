import ballerina/jballerina.java;
import backend.java.lang as javalang;

# Ballerina class mapping for the Java `java.util.Enumeration` interface.
@java:Binding {'class: "java.util.Enumeration"}
public distinct class Enumeration {

    *java:JObject;

    # The `handle` field that stores the reference to the `java.util.Enumeration` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `java.util.Enumeration` Java interface.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.util.Enumeration` Java interface.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
    # The function that maps to the `asIterator` method of `java.util.Enumeration`.
    #
    # + return - The `Iterator` value returning from the Java mapping.
    public function asIterator() returns Iterator {
        handle externalObj = java_util_Enumeration_asIterator(self.jObj);
        Iterator newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hasMoreElements` method of `java.util.Enumeration`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public function hasMoreElements() returns boolean {
        return java_util_Enumeration_hasMoreElements(self.jObj);
    }

    # The function that maps to the `nextElement` method of `java.util.Enumeration`.
    #
    # + return - The `javalang:Object` value returning from the Java mapping.
    public function nextElement() returns javalang:Object {
        handle externalObj = java_util_Enumeration_nextElement(self.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

}

function java_util_Enumeration_asIterator(handle receiver) returns handle = @java:Method {
    name: "asIterator",
    'class: "java.util.Enumeration",
    paramTypes: []
} external;

function java_util_Enumeration_hasMoreElements(handle receiver) returns boolean = @java:Method {
    name: "hasMoreElements",
    'class: "java.util.Enumeration",
    paramTypes: []
} external;

function java_util_Enumeration_nextElement(handle receiver) returns handle = @java:Method {
    name: "nextElement",
    'class: "java.util.Enumeration",
    paramTypes: []
} external;

