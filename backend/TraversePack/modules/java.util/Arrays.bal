import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import backendv2.java.lang as javalang;
import backendv2.java.util.'stream as javautilstream;
import backendv2.java.util.'function as javautilfunction;

# Ballerina class mapping for the Java `java.util.Arrays` class.
@java:Binding {'class: "java.util.Arrays"}
public distinct class Arrays {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `java.util.Arrays` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `java.util.Arrays` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.util.Arrays` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
    # The function that maps to the `equals` method of `java.util.Arrays`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return java_util_Arrays_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `java.util.Arrays`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = java_util_Arrays_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `java.util.Arrays`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return java_util_Arrays_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `java.util.Arrays`.
    public function notify() {
        java_util_Arrays_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `java.util.Arrays`.
    public function notifyAll() {
        java_util_Arrays_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `java.util.Arrays`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = java_util_Arrays_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.util.Arrays`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = java_util_Arrays_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.util.Arrays`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = java_util_Arrays_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The function that maps to the `asList` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + return - The `List` value returning from the Java mapping.
public function Arrays_asList(javalang:Object[] arg0) returns List|error {
    handle externalObj = java_util_Arrays_asList(check jarrays:toHandle(arg0, "java.lang.Object"));
    List newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `byte` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch(byte[] arg0, byte arg1) returns int|error {
    return java_util_Arrays_binarySearch(check jarrays:toHandle(arg0, "byte"), arg1);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch10(int[] arg0, int arg1, int arg2, int arg3) returns int|error {
    return java_util_Arrays_binarySearch10(check jarrays:toHandle(arg0, "int"), arg1, arg2, arg3);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch11(int[] arg0, int arg1, int arg2, int arg3) returns int|error {
    return java_util_Arrays_binarySearch11(check jarrays:toHandle(arg0, "long"), arg1, arg2, arg3);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch12(int[] arg0, int arg1) returns int|error {
    return java_util_Arrays_binarySearch12(check jarrays:toHandle(arg0, "long"), arg1);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javalang:Object` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch13(javalang:Object[] arg0, int arg1, int arg2, javalang:Object arg3) returns int|error {
    return java_util_Arrays_binarySearch13(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2, arg3.jObj);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javalang:Object` value required to map with the Java method parameter.
# + arg4 - The `Comparator` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch14(javalang:Object[] arg0, int arg1, int arg2, javalang:Object arg3, Comparator arg4) returns int|error {
    return java_util_Arrays_binarySearch14(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2, arg3.jObj, arg4.jObj);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `javalang:Object` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch15(javalang:Object[] arg0, javalang:Object arg1) returns int|error {
    return java_util_Arrays_binarySearch15(check jarrays:toHandle(arg0, "java.lang.Object"), arg1.jObj);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `javalang:Object` value required to map with the Java method parameter.
# + arg2 - The `Comparator` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch16(javalang:Object[] arg0, javalang:Object arg1, Comparator arg2) returns int|error {
    return java_util_Arrays_binarySearch16(check jarrays:toHandle(arg0, "java.lang.Object"), arg1.jObj, arg2.jObj);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch17(int[] arg0, int arg1, int arg2, int arg3) returns int|error {
    return java_util_Arrays_binarySearch17(check jarrays:toHandle(arg0, "short"), arg1, arg2, arg3);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch18(int[] arg0, int arg1) returns int|error {
    return java_util_Arrays_binarySearch18(check jarrays:toHandle(arg0, "short"), arg1);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `byte` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch2(byte[] arg0, int arg1, int arg2, byte arg3) returns int|error {
    return java_util_Arrays_binarySearch2(check jarrays:toHandle(arg0, "byte"), arg1, arg2, arg3);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch3(int[] arg0, int arg1) returns int|error {
    return java_util_Arrays_binarySearch3(check jarrays:toHandle(arg0, "char"), arg1);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch4(int[] arg0, int arg1, int arg2, int arg3) returns int|error {
    return java_util_Arrays_binarySearch4(check jarrays:toHandle(arg0, "char"), arg1, arg2, arg3);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `float` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch5(float[] arg0, float arg1) returns int|error {
    return java_util_Arrays_binarySearch5(check jarrays:toHandle(arg0, "double"), arg1);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `float` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch6(float[] arg0, int arg1, int arg2, float arg3) returns int|error {
    return java_util_Arrays_binarySearch6(check jarrays:toHandle(arg0, "double"), arg1, arg2, arg3);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `float` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch7(float[] arg0, float arg1) returns int|error {
    return java_util_Arrays_binarySearch7(check jarrays:toHandle(arg0, "float"), arg1);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `float` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch8(float[] arg0, int arg1, int arg2, float arg3) returns int|error {
    return java_util_Arrays_binarySearch8(check jarrays:toHandle(arg0, "float"), arg1, arg2, arg3);
}

# The function that maps to the `binarySearch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_binarySearch9(int[] arg0, int arg1) returns int|error {
    return java_util_Arrays_binarySearch9(check jarrays:toHandle(arg0, "int"), arg1);
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `boolean[]` value required to map with the Java method parameter.
# + arg1 - The `boolean[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare(boolean[] arg0, boolean[] arg1) returns int|error {
    return java_util_Arrays_compare(check jarrays:toHandle(arg0, "boolean"), check jarrays:toHandle(arg1, "boolean"));
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `float[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare10(float[] arg0, int arg1, int arg2, float[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_compare10(check jarrays:toHandle(arg0, "double"), arg1, arg2, check jarrays:toHandle(arg3, "double"), arg4, arg5);
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `float[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare11(float[] arg0, float[] arg1) returns int|error {
    return java_util_Arrays_compare11(check jarrays:toHandle(arg0, "float"), check jarrays:toHandle(arg1, "float"));
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `float[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare12(float[] arg0, int arg1, int arg2, float[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_compare12(check jarrays:toHandle(arg0, "float"), arg1, arg2, check jarrays:toHandle(arg3, "float"), arg4, arg5);
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare13(int[] arg0, int[] arg1) returns int|error {
    return java_util_Arrays_compare13(check jarrays:toHandle(arg0, "int"), check jarrays:toHandle(arg1, "int"));
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare14(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_compare14(check jarrays:toHandle(arg0, "int"), arg1, arg2, check jarrays:toHandle(arg3, "int"), arg4, arg5);
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare15(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_compare15(check jarrays:toHandle(arg0, "long"), arg1, arg2, check jarrays:toHandle(arg3, "long"), arg4, arg5);
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare16(int[] arg0, int[] arg1) returns int|error {
    return java_util_Arrays_compare16(check jarrays:toHandle(arg0, "long"), check jarrays:toHandle(arg1, "long"));
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + arg6 - The `Comparator` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare17(javalang:Object[] arg0, int arg1, int arg2, javalang:Object[] arg3, int arg4, int arg5, Comparator arg6) returns int|error {
    return java_util_Arrays_compare17(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2, check jarrays:toHandle(arg3, "java.lang.Object"), arg4, arg5, arg6.jObj);
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg2 - The `Comparator` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare18(javalang:Object[] arg0, javalang:Object[] arg1, Comparator arg2) returns int|error {
    return java_util_Arrays_compare18(check jarrays:toHandle(arg0, "java.lang.Object"), check jarrays:toHandle(arg1, "java.lang.Object"), arg2.jObj);
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare19(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_compare19(check jarrays:toHandle(arg0, "short"), arg1, arg2, check jarrays:toHandle(arg3, "short"), arg4, arg5);
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `boolean[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `boolean[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare2(boolean[] arg0, int arg1, int arg2, boolean[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_compare2(check jarrays:toHandle(arg0, "boolean"), arg1, arg2, check jarrays:toHandle(arg3, "boolean"), arg4, arg5);
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare20(int[] arg0, int[] arg1) returns int|error {
    return java_util_Arrays_compare20(check jarrays:toHandle(arg0, "short"), check jarrays:toHandle(arg1, "short"));
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `byte[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare3(byte[] arg0, byte[] arg1) returns int|error {
    return java_util_Arrays_compare3(check jarrays:toHandle(arg0, "byte"), check jarrays:toHandle(arg1, "byte"));
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `byte[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare4(byte[] arg0, int arg1, int arg2, byte[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_compare4(check jarrays:toHandle(arg0, "byte"), arg1, arg2, check jarrays:toHandle(arg3, "byte"), arg4, arg5);
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare5(int[] arg0, int[] arg1) returns int|error {
    return java_util_Arrays_compare5(check jarrays:toHandle(arg0, "char"), check jarrays:toHandle(arg1, "char"));
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare6(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_compare6(check jarrays:toHandle(arg0, "char"), arg1, arg2, check jarrays:toHandle(arg3, "char"), arg4, arg5);
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Comparable[]` value required to map with the Java method parameter.
# + arg1 - The `javalang:Comparable[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare7(javalang:Comparable[] arg0, javalang:Comparable[] arg1) returns int|error {
    return java_util_Arrays_compare7(check jarrays:toHandle(arg0, "java.lang.Comparable"), check jarrays:toHandle(arg1, "java.lang.Comparable"));
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Comparable[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javalang:Comparable[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare8(javalang:Comparable[] arg0, int arg1, int arg2, javalang:Comparable[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_compare8(check jarrays:toHandle(arg0, "java.lang.Comparable"), arg1, arg2, check jarrays:toHandle(arg3, "java.lang.Comparable"), arg4, arg5);
}

# The function that maps to the `compare` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `float[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compare9(float[] arg0, float[] arg1) returns int|error {
    return java_util_Arrays_compare9(check jarrays:toHandle(arg0, "double"), check jarrays:toHandle(arg1, "double"));
}

# The function that maps to the `compareUnsigned` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `byte[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compareUnsigned(byte[] arg0, byte[] arg1) returns int|error {
    return java_util_Arrays_compareUnsigned(check jarrays:toHandle(arg0, "byte"), check jarrays:toHandle(arg1, "byte"));
}

# The function that maps to the `compareUnsigned` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `byte[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compareUnsigned2(byte[] arg0, int arg1, int arg2, byte[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_compareUnsigned2(check jarrays:toHandle(arg0, "byte"), arg1, arg2, check jarrays:toHandle(arg3, "byte"), arg4, arg5);
}

# The function that maps to the `compareUnsigned` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compareUnsigned3(int[] arg0, int[] arg1) returns int|error {
    return java_util_Arrays_compareUnsigned3(check jarrays:toHandle(arg0, "int"), check jarrays:toHandle(arg1, "int"));
}

# The function that maps to the `compareUnsigned` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compareUnsigned4(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_compareUnsigned4(check jarrays:toHandle(arg0, "int"), arg1, arg2, check jarrays:toHandle(arg3, "int"), arg4, arg5);
}

# The function that maps to the `compareUnsigned` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compareUnsigned5(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_compareUnsigned5(check jarrays:toHandle(arg0, "long"), arg1, arg2, check jarrays:toHandle(arg3, "long"), arg4, arg5);
}

# The function that maps to the `compareUnsigned` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compareUnsigned6(int[] arg0, int[] arg1) returns int|error {
    return java_util_Arrays_compareUnsigned6(check jarrays:toHandle(arg0, "long"), check jarrays:toHandle(arg1, "long"));
}

# The function that maps to the `compareUnsigned` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compareUnsigned7(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_compareUnsigned7(check jarrays:toHandle(arg0, "short"), arg1, arg2, check jarrays:toHandle(arg3, "short"), arg4, arg5);
}

# The function that maps to the `compareUnsigned` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_compareUnsigned8(int[] arg0, int[] arg1) returns int|error {
    return java_util_Arrays_compareUnsigned8(check jarrays:toHandle(arg0, "short"), check jarrays:toHandle(arg1, "short"));
}

# The function that maps to the `copyOf` method of `java.util.Arrays`.
#
# + arg0 - The `boolean[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `boolean[]` value returning from the Java mapping.
public function Arrays_copyOf(boolean[] arg0, int arg1) returns boolean[]|error {
    handle externalObj = java_util_Arrays_copyOf(check jarrays:toHandle(arg0, "boolean"), arg1);
    return <boolean[]>check jarrays:fromHandle(externalObj, "boolean");
}

# The function that maps to the `copyOf` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `int[]` value returning from the Java mapping.
public function Arrays_copyOf10(int[] arg0, int arg1) returns int[]|error {
    handle externalObj = java_util_Arrays_copyOf10(check jarrays:toHandle(arg0, "short"), arg1);
    return <int[]>check jarrays:fromHandle(externalObj, "short");
}

# The function that maps to the `copyOf` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `byte[]` value returning from the Java mapping.
public function Arrays_copyOf2(byte[] arg0, int arg1) returns byte[]|error {
    handle externalObj = java_util_Arrays_copyOf2(check jarrays:toHandle(arg0, "byte"), arg1);
    return <byte[]>check jarrays:fromHandle(externalObj, "byte");
}

# The function that maps to the `copyOf` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `int[]` value returning from the Java mapping.
public function Arrays_copyOf3(int[] arg0, int arg1) returns int[]|error {
    handle externalObj = java_util_Arrays_copyOf3(check jarrays:toHandle(arg0, "char"), arg1);
    return <int[]>check jarrays:fromHandle(externalObj, "char");
}

# The function that maps to the `copyOf` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `float[]` value returning from the Java mapping.
public function Arrays_copyOf4(float[] arg0, int arg1) returns float[]|error {
    handle externalObj = java_util_Arrays_copyOf4(check jarrays:toHandle(arg0, "double"), arg1);
    return <float[]>check jarrays:fromHandle(externalObj, "double");
}

# The function that maps to the `copyOf` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `float[]` value returning from the Java mapping.
public function Arrays_copyOf5(float[] arg0, int arg1) returns float[]|error {
    handle externalObj = java_util_Arrays_copyOf5(check jarrays:toHandle(arg0, "float"), arg1);
    return <float[]>check jarrays:fromHandle(externalObj, "float");
}

# The function that maps to the `copyOf` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `int[]` value returning from the Java mapping.
public function Arrays_copyOf6(int[] arg0, int arg1) returns int[]|error {
    handle externalObj = java_util_Arrays_copyOf6(check jarrays:toHandle(arg0, "int"), arg1);
    return <int[]>check jarrays:fromHandle(externalObj, "int");
}

# The function that maps to the `copyOf` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `int[]` value returning from the Java mapping.
public function Arrays_copyOf7(int[] arg0, int arg1) returns int[]|error {
    handle externalObj = java_util_Arrays_copyOf7(check jarrays:toHandle(arg0, "long"), arg1);
    return <int[]>check jarrays:fromHandle(externalObj, "long");
}

# The function that maps to the `copyOf` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `javalang:Object[]` value returning from the Java mapping.
public function Arrays_copyOf8(javalang:Object[] arg0, int arg1) returns javalang:Object[]|error {
    handle externalObj = java_util_Arrays_copyOf8(check jarrays:toHandle(arg0, "java.lang.Object"), arg1);
    javalang:Object[] newObj = [];
    handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
    int count = anyObj.length();
    foreach int i in 0 ... count - 1 {
        javalang:Object element = new (anyObj[i]);
        newObj[i] = element;
    }
    return newObj;
}

# The function that maps to the `copyOf` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `javalang:Class` value required to map with the Java method parameter.
# + return - The `javalang:Object[]` value returning from the Java mapping.
public function Arrays_copyOf9(javalang:Object[] arg0, int arg1, javalang:Class arg2) returns javalang:Object[]|error {
    handle externalObj = java_util_Arrays_copyOf9(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2.jObj);
    javalang:Object[] newObj = [];
    handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
    int count = anyObj.length();
    foreach int i in 0 ... count - 1 {
        javalang:Object element = new (anyObj[i]);
        newObj[i] = element;
    }
    return newObj;
}

# The function that maps to the `copyOfRange` method of `java.util.Arrays`.
#
# + arg0 - The `boolean[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `boolean[]` value returning from the Java mapping.
public function Arrays_copyOfRange(boolean[] arg0, int arg1, int arg2) returns boolean[]|error {
    handle externalObj = java_util_Arrays_copyOfRange(check jarrays:toHandle(arg0, "boolean"), arg1, arg2);
    return <boolean[]>check jarrays:fromHandle(externalObj, "boolean");
}

# The function that maps to the `copyOfRange` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `int[]` value returning from the Java mapping.
public function Arrays_copyOfRange10(int[] arg0, int arg1, int arg2) returns int[]|error {
    handle externalObj = java_util_Arrays_copyOfRange10(check jarrays:toHandle(arg0, "short"), arg1, arg2);
    return <int[]>check jarrays:fromHandle(externalObj, "short");
}

# The function that maps to the `copyOfRange` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `byte[]` value returning from the Java mapping.
public function Arrays_copyOfRange2(byte[] arg0, int arg1, int arg2) returns byte[]|error {
    handle externalObj = java_util_Arrays_copyOfRange2(check jarrays:toHandle(arg0, "byte"), arg1, arg2);
    return <byte[]>check jarrays:fromHandle(externalObj, "byte");
}

# The function that maps to the `copyOfRange` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `int[]` value returning from the Java mapping.
public function Arrays_copyOfRange3(int[] arg0, int arg1, int arg2) returns int[]|error {
    handle externalObj = java_util_Arrays_copyOfRange3(check jarrays:toHandle(arg0, "char"), arg1, arg2);
    return <int[]>check jarrays:fromHandle(externalObj, "char");
}

# The function that maps to the `copyOfRange` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `float[]` value returning from the Java mapping.
public function Arrays_copyOfRange4(float[] arg0, int arg1, int arg2) returns float[]|error {
    handle externalObj = java_util_Arrays_copyOfRange4(check jarrays:toHandle(arg0, "double"), arg1, arg2);
    return <float[]>check jarrays:fromHandle(externalObj, "double");
}

# The function that maps to the `copyOfRange` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `float[]` value returning from the Java mapping.
public function Arrays_copyOfRange5(float[] arg0, int arg1, int arg2) returns float[]|error {
    handle externalObj = java_util_Arrays_copyOfRange5(check jarrays:toHandle(arg0, "float"), arg1, arg2);
    return <float[]>check jarrays:fromHandle(externalObj, "float");
}

# The function that maps to the `copyOfRange` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `int[]` value returning from the Java mapping.
public function Arrays_copyOfRange6(int[] arg0, int arg1, int arg2) returns int[]|error {
    handle externalObj = java_util_Arrays_copyOfRange6(check jarrays:toHandle(arg0, "int"), arg1, arg2);
    return <int[]>check jarrays:fromHandle(externalObj, "int");
}

# The function that maps to the `copyOfRange` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `int[]` value returning from the Java mapping.
public function Arrays_copyOfRange7(int[] arg0, int arg1, int arg2) returns int[]|error {
    handle externalObj = java_util_Arrays_copyOfRange7(check jarrays:toHandle(arg0, "long"), arg1, arg2);
    return <int[]>check jarrays:fromHandle(externalObj, "long");
}

# The function that maps to the `copyOfRange` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `javalang:Object[]` value returning from the Java mapping.
public function Arrays_copyOfRange8(javalang:Object[] arg0, int arg1, int arg2) returns javalang:Object[]|error {
    handle externalObj = java_util_Arrays_copyOfRange8(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2);
    javalang:Object[] newObj = [];
    handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
    int count = anyObj.length();
    foreach int i in 0 ... count - 1 {
        javalang:Object element = new (anyObj[i]);
        newObj[i] = element;
    }
    return newObj;
}

# The function that maps to the `copyOfRange` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javalang:Class` value required to map with the Java method parameter.
# + return - The `javalang:Object[]` value returning from the Java mapping.
public function Arrays_copyOfRange9(javalang:Object[] arg0, int arg1, int arg2, javalang:Class arg3) returns javalang:Object[]|error {
    handle externalObj = java_util_Arrays_copyOfRange9(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2, arg3.jObj);
    javalang:Object[] newObj = [];
    handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
    int count = anyObj.length();
    foreach int i in 0 ... count - 1 {
        javalang:Object element = new (anyObj[i]);
        newObj[i] = element;
    }
    return newObj;
}

# The function that maps to the `deepEquals` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `javalang:Object[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_deepEquals(javalang:Object[] arg0, javalang:Object[] arg1) returns boolean|error {
    return java_util_Arrays_deepEquals(check jarrays:toHandle(arg0, "java.lang.Object"), check jarrays:toHandle(arg1, "java.lang.Object"));
}

# The function that maps to the `deepHashCode` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_deepHashCode(javalang:Object[] arg0) returns int|error {
    return java_util_Arrays_deepHashCode(check jarrays:toHandle(arg0, "java.lang.Object"));
}

# The function that maps to the `deepToString` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + return - The `string` value returning from the Java mapping.
public function Arrays_deepToString(javalang:Object[] arg0) returns string?|error {
    return java:toString(java_util_Arrays_deepToString(check jarrays:toHandle(arg0, "java.lang.Object")));
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `float[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals10(float[] arg0, float[] arg1) returns boolean|error {
    return java_util_Arrays_equals10(check jarrays:toHandle(arg0, "float"), check jarrays:toHandle(arg1, "float"));
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `float[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals11(float[] arg0, int arg1, int arg2, float[] arg3, int arg4, int arg5) returns boolean|error {
    return java_util_Arrays_equals11(check jarrays:toHandle(arg0, "float"), arg1, arg2, check jarrays:toHandle(arg3, "float"), arg4, arg5);
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals12(int[] arg0, int[] arg1) returns boolean|error {
    return java_util_Arrays_equals12(check jarrays:toHandle(arg0, "int"), check jarrays:toHandle(arg1, "int"));
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals13(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns boolean|error {
    return java_util_Arrays_equals13(check jarrays:toHandle(arg0, "int"), arg1, arg2, check jarrays:toHandle(arg3, "int"), arg4, arg5);
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals14(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns boolean|error {
    return java_util_Arrays_equals14(check jarrays:toHandle(arg0, "long"), arg1, arg2, check jarrays:toHandle(arg3, "long"), arg4, arg5);
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals15(int[] arg0, int[] arg1) returns boolean|error {
    return java_util_Arrays_equals15(check jarrays:toHandle(arg0, "long"), check jarrays:toHandle(arg1, "long"));
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals16(javalang:Object[] arg0, int arg1, int arg2, javalang:Object[] arg3, int arg4, int arg5) returns boolean|error {
    return java_util_Arrays_equals16(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2, check jarrays:toHandle(arg3, "java.lang.Object"), arg4, arg5);
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + arg6 - The `Comparator` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals17(javalang:Object[] arg0, int arg1, int arg2, javalang:Object[] arg3, int arg4, int arg5, Comparator arg6) returns boolean|error {
    return java_util_Arrays_equals17(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2, check jarrays:toHandle(arg3, "java.lang.Object"), arg4, arg5, arg6.jObj);
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `javalang:Object[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals18(javalang:Object[] arg0, javalang:Object[] arg1) returns boolean|error {
    return java_util_Arrays_equals18(check jarrays:toHandle(arg0, "java.lang.Object"), check jarrays:toHandle(arg1, "java.lang.Object"));
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg2 - The `Comparator` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals19(javalang:Object[] arg0, javalang:Object[] arg1, Comparator arg2) returns boolean|error {
    return java_util_Arrays_equals19(check jarrays:toHandle(arg0, "java.lang.Object"), check jarrays:toHandle(arg1, "java.lang.Object"), arg2.jObj);
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `boolean[]` value required to map with the Java method parameter.
# + arg1 - The `boolean[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals2(boolean[] arg0, boolean[] arg1) returns boolean|error {
    return java_util_Arrays_equals2(check jarrays:toHandle(arg0, "boolean"), check jarrays:toHandle(arg1, "boolean"));
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals20(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns boolean|error {
    return java_util_Arrays_equals20(check jarrays:toHandle(arg0, "short"), arg1, arg2, check jarrays:toHandle(arg3, "short"), arg4, arg5);
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals21(int[] arg0, int[] arg1) returns boolean|error {
    return java_util_Arrays_equals21(check jarrays:toHandle(arg0, "short"), check jarrays:toHandle(arg1, "short"));
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `boolean[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `boolean[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals3(boolean[] arg0, int arg1, int arg2, boolean[] arg3, int arg4, int arg5) returns boolean|error {
    return java_util_Arrays_equals3(check jarrays:toHandle(arg0, "boolean"), arg1, arg2, check jarrays:toHandle(arg3, "boolean"), arg4, arg5);
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `byte[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals4(byte[] arg0, byte[] arg1) returns boolean|error {
    return java_util_Arrays_equals4(check jarrays:toHandle(arg0, "byte"), check jarrays:toHandle(arg1, "byte"));
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `byte[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals5(byte[] arg0, int arg1, int arg2, byte[] arg3, int arg4, int arg5) returns boolean|error {
    return java_util_Arrays_equals5(check jarrays:toHandle(arg0, "byte"), arg1, arg2, check jarrays:toHandle(arg3, "byte"), arg4, arg5);
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals6(int[] arg0, int[] arg1) returns boolean|error {
    return java_util_Arrays_equals6(check jarrays:toHandle(arg0, "char"), check jarrays:toHandle(arg1, "char"));
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals7(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns boolean|error {
    return java_util_Arrays_equals7(check jarrays:toHandle(arg0, "char"), arg1, arg2, check jarrays:toHandle(arg3, "char"), arg4, arg5);
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `float[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals8(float[] arg0, float[] arg1) returns boolean|error {
    return java_util_Arrays_equals8(check jarrays:toHandle(arg0, "double"), check jarrays:toHandle(arg1, "double"));
}

# The function that maps to the `equals` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `float[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Arrays_equals9(float[] arg0, int arg1, int arg2, float[] arg3, int arg4, int arg5) returns boolean|error {
    return java_util_Arrays_equals9(check jarrays:toHandle(arg0, "double"), arg1, arg2, check jarrays:toHandle(arg3, "double"), arg4, arg5);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `boolean[]` value required to map with the Java method parameter.
# + arg1 - The `boolean` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill(boolean[] arg0, boolean arg1) returns error? {
    java_util_Arrays_fill(check jarrays:toHandle(arg0, "boolean"), arg1);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `float` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill10(float[] arg0, int arg1, int arg2, float arg3) returns error? {
    java_util_Arrays_fill10(check jarrays:toHandle(arg0, "float"), arg1, arg2, arg3);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill11(int[] arg0, int arg1) returns error? {
    java_util_Arrays_fill11(check jarrays:toHandle(arg0, "int"), arg1);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill12(int[] arg0, int arg1, int arg2, int arg3) returns error? {
    java_util_Arrays_fill12(check jarrays:toHandle(arg0, "int"), arg1, arg2, arg3);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill13(int[] arg0, int arg1, int arg2, int arg3) returns error? {
    java_util_Arrays_fill13(check jarrays:toHandle(arg0, "long"), arg1, arg2, arg3);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill14(int[] arg0, int arg1) returns error? {
    java_util_Arrays_fill14(check jarrays:toHandle(arg0, "long"), arg1);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javalang:Object` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill15(javalang:Object[] arg0, int arg1, int arg2, javalang:Object arg3) returns error? {
    java_util_Arrays_fill15(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2, arg3.jObj);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `javalang:Object` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill16(javalang:Object[] arg0, javalang:Object arg1) returns error? {
    java_util_Arrays_fill16(check jarrays:toHandle(arg0, "java.lang.Object"), arg1.jObj);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill17(int[] arg0, int arg1, int arg2, int arg3) returns error? {
    java_util_Arrays_fill17(check jarrays:toHandle(arg0, "short"), arg1, arg2, arg3);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill18(int[] arg0, int arg1) returns error? {
    java_util_Arrays_fill18(check jarrays:toHandle(arg0, "short"), arg1);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `boolean[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `boolean` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill2(boolean[] arg0, int arg1, int arg2, boolean arg3) returns error? {
    java_util_Arrays_fill2(check jarrays:toHandle(arg0, "boolean"), arg1, arg2, arg3);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `byte` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill3(byte[] arg0, byte arg1) returns error? {
    java_util_Arrays_fill3(check jarrays:toHandle(arg0, "byte"), arg1);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `byte` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill4(byte[] arg0, int arg1, int arg2, byte arg3) returns error? {
    java_util_Arrays_fill4(check jarrays:toHandle(arg0, "byte"), arg1, arg2, arg3);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill5(int[] arg0, int arg1) returns error? {
    java_util_Arrays_fill5(check jarrays:toHandle(arg0, "char"), arg1);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill6(int[] arg0, int arg1, int arg2, int arg3) returns error? {
    java_util_Arrays_fill6(check jarrays:toHandle(arg0, "char"), arg1, arg2, arg3);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `float` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill7(float[] arg0, float arg1) returns error? {
    java_util_Arrays_fill7(check jarrays:toHandle(arg0, "double"), arg1);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `float` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill8(float[] arg0, int arg1, int arg2, float arg3) returns error? {
    java_util_Arrays_fill8(check jarrays:toHandle(arg0, "double"), arg1, arg2, arg3);
}

# The function that maps to the `fill` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `float` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_fill9(float[] arg0, float arg1) returns error? {
    java_util_Arrays_fill9(check jarrays:toHandle(arg0, "float"), arg1);
}

# The function that maps to the `hashCode` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_hashCode10(int[] arg0) returns int|error {
    return java_util_Arrays_hashCode10(check jarrays:toHandle(arg0, "short"));
}

# The function that maps to the `hashCode` method of `java.util.Arrays`.
#
# + arg0 - The `boolean[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_hashCode2(boolean[] arg0) returns int|error {
    return java_util_Arrays_hashCode2(check jarrays:toHandle(arg0, "boolean"));
}

# The function that maps to the `hashCode` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_hashCode3(byte[] arg0) returns int|error {
    return java_util_Arrays_hashCode3(check jarrays:toHandle(arg0, "byte"));
}

# The function that maps to the `hashCode` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_hashCode4(int[] arg0) returns int|error {
    return java_util_Arrays_hashCode4(check jarrays:toHandle(arg0, "char"));
}

# The function that maps to the `hashCode` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_hashCode5(float[] arg0) returns int|error {
    return java_util_Arrays_hashCode5(check jarrays:toHandle(arg0, "double"));
}

# The function that maps to the `hashCode` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_hashCode6(float[] arg0) returns int|error {
    return java_util_Arrays_hashCode6(check jarrays:toHandle(arg0, "float"));
}

# The function that maps to the `hashCode` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_hashCode7(int[] arg0) returns int|error {
    return java_util_Arrays_hashCode7(check jarrays:toHandle(arg0, "int"));
}

# The function that maps to the `hashCode` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_hashCode8(int[] arg0) returns int|error {
    return java_util_Arrays_hashCode8(check jarrays:toHandle(arg0, "long"));
}

# The function that maps to the `hashCode` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_hashCode9(javalang:Object[] arg0) returns int|error {
    return java_util_Arrays_hashCode9(check jarrays:toHandle(arg0, "java.lang.Object"));
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `boolean[]` value required to map with the Java method parameter.
# + arg1 - The `boolean[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch(boolean[] arg0, boolean[] arg1) returns int|error {
    return java_util_Arrays_mismatch(check jarrays:toHandle(arg0, "boolean"), check jarrays:toHandle(arg1, "boolean"));
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `float[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch10(float[] arg0, int arg1, int arg2, float[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_mismatch10(check jarrays:toHandle(arg0, "float"), arg1, arg2, check jarrays:toHandle(arg3, "float"), arg4, arg5);
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch11(int[] arg0, int[] arg1) returns int|error {
    return java_util_Arrays_mismatch11(check jarrays:toHandle(arg0, "int"), check jarrays:toHandle(arg1, "int"));
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch12(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_mismatch12(check jarrays:toHandle(arg0, "int"), arg1, arg2, check jarrays:toHandle(arg3, "int"), arg4, arg5);
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch13(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_mismatch13(check jarrays:toHandle(arg0, "long"), arg1, arg2, check jarrays:toHandle(arg3, "long"), arg4, arg5);
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch14(int[] arg0, int[] arg1) returns int|error {
    return java_util_Arrays_mismatch14(check jarrays:toHandle(arg0, "long"), check jarrays:toHandle(arg1, "long"));
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch15(javalang:Object[] arg0, int arg1, int arg2, javalang:Object[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_mismatch15(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2, check jarrays:toHandle(arg3, "java.lang.Object"), arg4, arg5);
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + arg6 - The `Comparator` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch16(javalang:Object[] arg0, int arg1, int arg2, javalang:Object[] arg3, int arg4, int arg5, Comparator arg6) returns int|error {
    return java_util_Arrays_mismatch16(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2, check jarrays:toHandle(arg3, "java.lang.Object"), arg4, arg5, arg6.jObj);
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `javalang:Object[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch17(javalang:Object[] arg0, javalang:Object[] arg1) returns int|error {
    return java_util_Arrays_mismatch17(check jarrays:toHandle(arg0, "java.lang.Object"), check jarrays:toHandle(arg1, "java.lang.Object"));
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg2 - The `Comparator` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch18(javalang:Object[] arg0, javalang:Object[] arg1, Comparator arg2) returns int|error {
    return java_util_Arrays_mismatch18(check jarrays:toHandle(arg0, "java.lang.Object"), check jarrays:toHandle(arg1, "java.lang.Object"), arg2.jObj);
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch19(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_mismatch19(check jarrays:toHandle(arg0, "short"), arg1, arg2, check jarrays:toHandle(arg3, "short"), arg4, arg5);
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `boolean[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `boolean[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch2(boolean[] arg0, int arg1, int arg2, boolean[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_mismatch2(check jarrays:toHandle(arg0, "boolean"), arg1, arg2, check jarrays:toHandle(arg3, "boolean"), arg4, arg5);
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch20(int[] arg0, int[] arg1) returns int|error {
    return java_util_Arrays_mismatch20(check jarrays:toHandle(arg0, "short"), check jarrays:toHandle(arg1, "short"));
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `byte[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch3(byte[] arg0, byte[] arg1) returns int|error {
    return java_util_Arrays_mismatch3(check jarrays:toHandle(arg0, "byte"), check jarrays:toHandle(arg1, "byte"));
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `byte[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch4(byte[] arg0, int arg1, int arg2, byte[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_mismatch4(check jarrays:toHandle(arg0, "byte"), arg1, arg2, check jarrays:toHandle(arg3, "byte"), arg4, arg5);
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch5(int[] arg0, int[] arg1) returns int|error {
    return java_util_Arrays_mismatch5(check jarrays:toHandle(arg0, "char"), check jarrays:toHandle(arg1, "char"));
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch6(int[] arg0, int arg1, int arg2, int[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_mismatch6(check jarrays:toHandle(arg0, "char"), arg1, arg2, check jarrays:toHandle(arg3, "char"), arg4, arg5);
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `float[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch7(float[] arg0, float[] arg1) returns int|error {
    return java_util_Arrays_mismatch7(check jarrays:toHandle(arg0, "double"), check jarrays:toHandle(arg1, "double"));
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `float[]` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
# + arg5 - The `int` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch8(float[] arg0, int arg1, int arg2, float[] arg3, int arg4, int arg5) returns int|error {
    return java_util_Arrays_mismatch8(check jarrays:toHandle(arg0, "double"), arg1, arg2, check jarrays:toHandle(arg3, "double"), arg4, arg5);
}

# The function that maps to the `mismatch` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `float[]` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function Arrays_mismatch9(float[] arg0, float[] arg1) returns int|error {
    return java_util_Arrays_mismatch9(check jarrays:toHandle(arg0, "float"), check jarrays:toHandle(arg1, "float"));
}

# The function that maps to the `parallelPrefix` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `javautilfunction:DoubleBinaryOperator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelPrefix(float[] arg0, javautilfunction:DoubleBinaryOperator arg1) returns error? {
    java_util_Arrays_parallelPrefix(check jarrays:toHandle(arg0, "double"), arg1.jObj);
}

# The function that maps to the `parallelPrefix` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javautilfunction:DoubleBinaryOperator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelPrefix2(float[] arg0, int arg1, int arg2, javautilfunction:DoubleBinaryOperator arg3) returns error? {
    java_util_Arrays_parallelPrefix2(check jarrays:toHandle(arg0, "double"), arg1, arg2, arg3.jObj);
}

# The function that maps to the `parallelPrefix` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `javautilfunction:IntBinaryOperator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelPrefix3(int[] arg0, javautilfunction:IntBinaryOperator arg1) returns error? {
    java_util_Arrays_parallelPrefix3(check jarrays:toHandle(arg0, "int"), arg1.jObj);
}

# The function that maps to the `parallelPrefix` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javautilfunction:IntBinaryOperator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelPrefix4(int[] arg0, int arg1, int arg2, javautilfunction:IntBinaryOperator arg3) returns error? {
    java_util_Arrays_parallelPrefix4(check jarrays:toHandle(arg0, "int"), arg1, arg2, arg3.jObj);
}

# The function that maps to the `parallelPrefix` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javautilfunction:LongBinaryOperator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelPrefix5(int[] arg0, int arg1, int arg2, javautilfunction:LongBinaryOperator arg3) returns error? {
    java_util_Arrays_parallelPrefix5(check jarrays:toHandle(arg0, "long"), arg1, arg2, arg3.jObj);
}

# The function that maps to the `parallelPrefix` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `javautilfunction:LongBinaryOperator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelPrefix6(int[] arg0, javautilfunction:LongBinaryOperator arg1) returns error? {
    java_util_Arrays_parallelPrefix6(check jarrays:toHandle(arg0, "long"), arg1.jObj);
}

# The function that maps to the `parallelPrefix` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `javautilfunction:BinaryOperator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelPrefix7(javalang:Object[] arg0, javautilfunction:BinaryOperator arg1) returns error? {
    java_util_Arrays_parallelPrefix7(check jarrays:toHandle(arg0, "java.lang.Object"), arg1.jObj);
}

# The function that maps to the `parallelPrefix` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `javautilfunction:BinaryOperator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelPrefix8(javalang:Object[] arg0, int arg1, int arg2, javautilfunction:BinaryOperator arg3) returns error? {
    java_util_Arrays_parallelPrefix8(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2, arg3.jObj);
}

# The function that maps to the `parallelSetAll` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `javautilfunction:IntToDoubleFunction` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSetAll(float[] arg0, javautilfunction:IntToDoubleFunction arg1) returns error? {
    java_util_Arrays_parallelSetAll(check jarrays:toHandle(arg0, "double"), arg1.jObj);
}

# The function that maps to the `parallelSetAll` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `javautilfunction:IntUnaryOperator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSetAll2(int[] arg0, javautilfunction:IntUnaryOperator arg1) returns error? {
    java_util_Arrays_parallelSetAll2(check jarrays:toHandle(arg0, "int"), arg1.jObj);
}

# The function that maps to the `parallelSetAll` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `javautilfunction:IntToLongFunction` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSetAll3(int[] arg0, javautilfunction:IntToLongFunction arg1) returns error? {
    java_util_Arrays_parallelSetAll3(check jarrays:toHandle(arg0, "long"), arg1.jObj);
}

# The function that maps to the `parallelSetAll` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `javautilfunction:IntFunction` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSetAll4(javalang:Object[] arg0, javautilfunction:IntFunction arg1) returns error? {
    java_util_Arrays_parallelSetAll4(check jarrays:toHandle(arg0, "java.lang.Object"), arg1.jObj);
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort(byte[] arg0) returns error? {
    java_util_Arrays_parallelSort(check jarrays:toHandle(arg0, "byte"));
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort10(float[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_parallelSort10(check jarrays:toHandle(arg0, "float"), arg1, arg2);
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort11(int[] arg0) returns error? {
    java_util_Arrays_parallelSort11(check jarrays:toHandle(arg0, "int"));
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort12(int[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_parallelSort12(check jarrays:toHandle(arg0, "int"), arg1, arg2);
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort13(int[] arg0) returns error? {
    java_util_Arrays_parallelSort13(check jarrays:toHandle(arg0, "long"));
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort14(int[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_parallelSort14(check jarrays:toHandle(arg0, "long"), arg1, arg2);
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `Comparator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort15(javalang:Object[] arg0, Comparator arg1) returns error? {
    java_util_Arrays_parallelSort15(check jarrays:toHandle(arg0, "java.lang.Object"), arg1.jObj);
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `Comparator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort16(javalang:Object[] arg0, int arg1, int arg2, Comparator arg3) returns error? {
    java_util_Arrays_parallelSort16(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2, arg3.jObj);
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort17(int[] arg0) returns error? {
    java_util_Arrays_parallelSort17(check jarrays:toHandle(arg0, "short"));
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort18(int[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_parallelSort18(check jarrays:toHandle(arg0, "short"), arg1, arg2);
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort2(byte[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_parallelSort2(check jarrays:toHandle(arg0, "byte"), arg1, arg2);
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort3(int[] arg0) returns error? {
    java_util_Arrays_parallelSort3(check jarrays:toHandle(arg0, "char"));
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort4(int[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_parallelSort4(check jarrays:toHandle(arg0, "char"), arg1, arg2);
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Comparable[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort5(javalang:Comparable[] arg0) returns error? {
    java_util_Arrays_parallelSort5(check jarrays:toHandle(arg0, "java.lang.Comparable"));
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Comparable[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort6(javalang:Comparable[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_parallelSort6(check jarrays:toHandle(arg0, "java.lang.Comparable"), arg1, arg2);
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort7(float[] arg0) returns error? {
    java_util_Arrays_parallelSort7(check jarrays:toHandle(arg0, "double"));
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort8(float[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_parallelSort8(check jarrays:toHandle(arg0, "double"), arg1, arg2);
}

# The function that maps to the `parallelSort` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_parallelSort9(float[] arg0) returns error? {
    java_util_Arrays_parallelSort9(check jarrays:toHandle(arg0, "float"));
}

# The function that maps to the `setAll` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `javautilfunction:IntToDoubleFunction` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_setAll(float[] arg0, javautilfunction:IntToDoubleFunction arg1) returns error? {
    java_util_Arrays_setAll(check jarrays:toHandle(arg0, "double"), arg1.jObj);
}

# The function that maps to the `setAll` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `javautilfunction:IntUnaryOperator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_setAll2(int[] arg0, javautilfunction:IntUnaryOperator arg1) returns error? {
    java_util_Arrays_setAll2(check jarrays:toHandle(arg0, "int"), arg1.jObj);
}

# The function that maps to the `setAll` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `javautilfunction:IntToLongFunction` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_setAll3(int[] arg0, javautilfunction:IntToLongFunction arg1) returns error? {
    java_util_Arrays_setAll3(check jarrays:toHandle(arg0, "long"), arg1.jObj);
}

# The function that maps to the `setAll` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `javautilfunction:IntFunction` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_setAll4(javalang:Object[] arg0, javautilfunction:IntFunction arg1) returns error? {
    java_util_Arrays_setAll4(check jarrays:toHandle(arg0, "java.lang.Object"), arg1.jObj);
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort(byte[] arg0) returns error? {
    java_util_Arrays_sort(check jarrays:toHandle(arg0, "byte"));
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort10(int[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_sort10(check jarrays:toHandle(arg0, "int"), arg1, arg2);
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort11(int[] arg0) returns error? {
    java_util_Arrays_sort11(check jarrays:toHandle(arg0, "long"));
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort12(int[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_sort12(check jarrays:toHandle(arg0, "long"), arg1, arg2);
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort13(javalang:Object[] arg0) returns error? {
    java_util_Arrays_sort13(check jarrays:toHandle(arg0, "java.lang.Object"));
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `Comparator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort14(javalang:Object[] arg0, Comparator arg1) returns error? {
    java_util_Arrays_sort14(check jarrays:toHandle(arg0, "java.lang.Object"), arg1.jObj);
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort15(javalang:Object[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_sort15(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2);
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `Comparator` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort16(javalang:Object[] arg0, int arg1, int arg2, Comparator arg3) returns error? {
    java_util_Arrays_sort16(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2, arg3.jObj);
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort17(int[] arg0) returns error? {
    java_util_Arrays_sort17(check jarrays:toHandle(arg0, "short"));
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort18(int[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_sort18(check jarrays:toHandle(arg0, "short"), arg1, arg2);
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `byte[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort2(byte[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_sort2(check jarrays:toHandle(arg0, "byte"), arg1, arg2);
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort3(int[] arg0) returns error? {
    java_util_Arrays_sort3(check jarrays:toHandle(arg0, "char"));
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort4(int[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_sort4(check jarrays:toHandle(arg0, "char"), arg1, arg2);
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort5(float[] arg0) returns error? {
    java_util_Arrays_sort5(check jarrays:toHandle(arg0, "double"));
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort6(float[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_sort6(check jarrays:toHandle(arg0, "double"), arg1, arg2);
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort7(float[] arg0) returns error? {
    java_util_Arrays_sort7(check jarrays:toHandle(arg0, "float"));
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort8(float[] arg0, int arg1, int arg2) returns error? {
    java_util_Arrays_sort8(check jarrays:toHandle(arg0, "float"), arg1, arg2);
}

# The function that maps to the `sort` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `error?` value returning from the Java mapping.
public function Arrays_sort9(int[] arg0) returns error? {
    java_util_Arrays_sort9(check jarrays:toHandle(arg0, "int"));
}

# The function that maps to the `spliterator` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + return - The `OfDouble` value returning from the Java mapping.
public function Arrays_spliterator(float[] arg0) returns OfDouble|error {
    handle externalObj = java_util_Arrays_spliterator(check jarrays:toHandle(arg0, "double"));
    OfDouble newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `spliterator` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `OfDouble` value returning from the Java mapping.
public function Arrays_spliterator2(float[] arg0, int arg1, int arg2) returns OfDouble|error {
    handle externalObj = java_util_Arrays_spliterator2(check jarrays:toHandle(arg0, "double"), arg1, arg2);
    OfDouble newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `spliterator` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `OfInt` value returning from the Java mapping.
public function Arrays_spliterator3(int[] arg0) returns OfInt|error {
    handle externalObj = java_util_Arrays_spliterator3(check jarrays:toHandle(arg0, "int"));
    OfInt newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `spliterator` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `OfInt` value returning from the Java mapping.
public function Arrays_spliterator4(int[] arg0, int arg1, int arg2) returns OfInt|error {
    handle externalObj = java_util_Arrays_spliterator4(check jarrays:toHandle(arg0, "int"), arg1, arg2);
    OfInt newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `spliterator` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `OfLong` value returning from the Java mapping.
public function Arrays_spliterator5(int[] arg0) returns OfLong|error {
    handle externalObj = java_util_Arrays_spliterator5(check jarrays:toHandle(arg0, "long"));
    OfLong newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `spliterator` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `OfLong` value returning from the Java mapping.
public function Arrays_spliterator6(int[] arg0, int arg1, int arg2) returns OfLong|error {
    handle externalObj = java_util_Arrays_spliterator6(check jarrays:toHandle(arg0, "long"), arg1, arg2);
    OfLong newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `spliterator` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + return - The `Spliterator` value returning from the Java mapping.
public function Arrays_spliterator7(javalang:Object[] arg0) returns Spliterator|error {
    handle externalObj = java_util_Arrays_spliterator7(check jarrays:toHandle(arg0, "java.lang.Object"));
    Spliterator newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `spliterator` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `Spliterator` value returning from the Java mapping.
public function Arrays_spliterator8(javalang:Object[] arg0, int arg1, int arg2) returns Spliterator|error {
    handle externalObj = java_util_Arrays_spliterator8(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2);
    Spliterator newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `stream` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + return - The `javautilstream:DoubleStream` value returning from the Java mapping.
public function Arrays_stream(float[] arg0) returns javautilstream:DoubleStream|error {
    handle externalObj = java_util_Arrays_stream(check jarrays:toHandle(arg0, "double"));
    javautilstream:DoubleStream newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `stream` method of `java.util.Arrays`.
#
# + arg0 - The `float[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `javautilstream:DoubleStream` value returning from the Java mapping.
public function Arrays_stream2(float[] arg0, int arg1, int arg2) returns javautilstream:DoubleStream|error {
    handle externalObj = java_util_Arrays_stream2(check jarrays:toHandle(arg0, "double"), arg1, arg2);
    javautilstream:DoubleStream newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `stream` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `javautilstream:IntStream` value returning from the Java mapping.
public function Arrays_stream3(int[] arg0) returns javautilstream:IntStream|error {
    handle externalObj = java_util_Arrays_stream3(check jarrays:toHandle(arg0, "int"));
    javautilstream:IntStream newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `stream` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `javautilstream:IntStream` value returning from the Java mapping.
public function Arrays_stream4(int[] arg0, int arg1, int arg2) returns javautilstream:IntStream|error {
    handle externalObj = java_util_Arrays_stream4(check jarrays:toHandle(arg0, "int"), arg1, arg2);
    javautilstream:IntStream newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `stream` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + return - The `javautilstream:LongStream` value returning from the Java mapping.
public function Arrays_stream5(int[] arg0) returns javautilstream:LongStream|error {
    handle externalObj = java_util_Arrays_stream5(check jarrays:toHandle(arg0, "long"));
    javautilstream:LongStream newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `stream` method of `java.util.Arrays`.
#
# + arg0 - The `int[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `javautilstream:LongStream` value returning from the Java mapping.
public function Arrays_stream6(int[] arg0, int arg1, int arg2) returns javautilstream:LongStream|error {
    handle externalObj = java_util_Arrays_stream6(check jarrays:toHandle(arg0, "long"), arg1, arg2);
    javautilstream:LongStream newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `stream` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + return - The `javautilstream:Stream` value returning from the Java mapping.
public function Arrays_stream7(javalang:Object[] arg0) returns javautilstream:Stream|error {
    handle externalObj = java_util_Arrays_stream7(check jarrays:toHandle(arg0, "java.lang.Object"));
    javautilstream:Stream newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `stream` method of `java.util.Arrays`.
#
# + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + return - The `javautilstream:Stream` value returning from the Java mapping.
public function Arrays_stream8(javalang:Object[] arg0, int arg1, int arg2) returns javautilstream:Stream|error {
    handle externalObj = java_util_Arrays_stream8(check jarrays:toHandle(arg0, "java.lang.Object"), arg1, arg2);
    javautilstream:Stream newObj = new (externalObj);
    return newObj;
}

function java_util_Arrays_asList(handle arg0) returns handle = @java:Method {
    name: "asList",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;"]
} external;

function java_util_Arrays_binarySearch(handle arg0, byte arg1) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "byte"]
} external;

function java_util_Arrays_binarySearch10(handle arg0, int arg1, int arg2, int arg3) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int", "int", "int"]
} external;

function java_util_Arrays_binarySearch11(handle arg0, int arg1, int arg2, int arg3) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "int", "int", "long"]
} external;

function java_util_Arrays_binarySearch12(handle arg0, int arg1) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "long"]
} external;

function java_util_Arrays_binarySearch13(handle arg0, int arg1, int arg2, handle arg3) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int", "java.lang.Object"]
} external;

function java_util_Arrays_binarySearch14(handle arg0, int arg1, int arg2, handle arg3, handle arg4) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int", "java.lang.Object", "java.util.Comparator"]
} external;

function java_util_Arrays_binarySearch15(handle arg0, handle arg1) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "java.lang.Object"]
} external;

function java_util_Arrays_binarySearch16(handle arg0, handle arg1, handle arg2) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "java.lang.Object", "java.util.Comparator"]
} external;

function java_util_Arrays_binarySearch17(handle arg0, int arg1, int arg2, int arg3) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "int", "int", "short"]
} external;

function java_util_Arrays_binarySearch18(handle arg0, int arg1) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "short"]
} external;

function java_util_Arrays_binarySearch2(handle arg0, int arg1, int arg2, byte arg3) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "int", "int", "byte"]
} external;

function java_util_Arrays_binarySearch3(handle arg0, int arg1) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "char"]
} external;

function java_util_Arrays_binarySearch4(handle arg0, int arg1, int arg2, int arg3) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "int", "int", "char"]
} external;

function java_util_Arrays_binarySearch5(handle arg0, float arg1) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "double"]
} external;

function java_util_Arrays_binarySearch6(handle arg0, int arg1, int arg2, float arg3) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "int", "int", "double"]
} external;

function java_util_Arrays_binarySearch7(handle arg0, float arg1) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "float"]
} external;

function java_util_Arrays_binarySearch8(handle arg0, int arg1, int arg2, float arg3) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "int", "int", "float"]
} external;

function java_util_Arrays_binarySearch9(handle arg0, int arg1) returns int = @java:Method {
    name: "binarySearch",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int"]
} external;

function java_util_Arrays_compare(handle arg0, handle arg1) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[Z", "[Z"]
} external;

function java_util_Arrays_compare10(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "int", "int", "[D", "int", "int"]
} external;

function java_util_Arrays_compare11(handle arg0, handle arg1) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "[F"]
} external;

function java_util_Arrays_compare12(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "int", "int", "[F", "int", "int"]
} external;

function java_util_Arrays_compare13(handle arg0, handle arg1) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "[I"]
} external;

function java_util_Arrays_compare14(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int", "int", "[I", "int", "int"]
} external;

function java_util_Arrays_compare15(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "int", "int", "[J", "int", "int"]
} external;

function java_util_Arrays_compare16(handle arg0, handle arg1) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "[J"]
} external;

function java_util_Arrays_compare17(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5, handle arg6) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int", "[Ljava.lang.Object;", "int", "int", "java.util.Comparator"]
} external;

function java_util_Arrays_compare18(handle arg0, handle arg1, handle arg2) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "[Ljava.lang.Object;", "java.util.Comparator"]
} external;

function java_util_Arrays_compare19(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "int", "int", "[S", "int", "int"]
} external;

function java_util_Arrays_compare2(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[Z", "int", "int", "[Z", "int", "int"]
} external;

function java_util_Arrays_compare20(handle arg0, handle arg1) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "[S"]
} external;

function java_util_Arrays_compare3(handle arg0, handle arg1) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "[B"]
} external;

function java_util_Arrays_compare4(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "int", "int", "[B", "int", "int"]
} external;

function java_util_Arrays_compare5(handle arg0, handle arg1) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "[C"]
} external;

function java_util_Arrays_compare6(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "int", "int", "[C", "int", "int"]
} external;

function java_util_Arrays_compare7(handle arg0, handle arg1) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Comparable;", "[Ljava.lang.Comparable;"]
} external;

function java_util_Arrays_compare8(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Comparable;", "int", "int", "[Ljava.lang.Comparable;", "int", "int"]
} external;

function java_util_Arrays_compare9(handle arg0, handle arg1) returns int = @java:Method {
    name: "compare",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "[D"]
} external;

function java_util_Arrays_compareUnsigned(handle arg0, handle arg1) returns int = @java:Method {
    name: "compareUnsigned",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "[B"]
} external;

function java_util_Arrays_compareUnsigned2(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "compareUnsigned",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "int", "int", "[B", "int", "int"]
} external;

function java_util_Arrays_compareUnsigned3(handle arg0, handle arg1) returns int = @java:Method {
    name: "compareUnsigned",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "[I"]
} external;

function java_util_Arrays_compareUnsigned4(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "compareUnsigned",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int", "int", "[I", "int", "int"]
} external;

function java_util_Arrays_compareUnsigned5(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "compareUnsigned",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "int", "int", "[J", "int", "int"]
} external;

function java_util_Arrays_compareUnsigned6(handle arg0, handle arg1) returns int = @java:Method {
    name: "compareUnsigned",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "[J"]
} external;

function java_util_Arrays_compareUnsigned7(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "compareUnsigned",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "int", "int", "[S", "int", "int"]
} external;

function java_util_Arrays_compareUnsigned8(handle arg0, handle arg1) returns int = @java:Method {
    name: "compareUnsigned",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "[S"]
} external;

function java_util_Arrays_copyOf(handle arg0, int arg1) returns handle = @java:Method {
    name: "copyOf",
    'class: "java.util.Arrays",
    paramTypes: ["[Z", "int"]
} external;

function java_util_Arrays_copyOf10(handle arg0, int arg1) returns handle = @java:Method {
    name: "copyOf",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "int"]
} external;

function java_util_Arrays_copyOf2(handle arg0, int arg1) returns handle = @java:Method {
    name: "copyOf",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "int"]
} external;

function java_util_Arrays_copyOf3(handle arg0, int arg1) returns handle = @java:Method {
    name: "copyOf",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "int"]
} external;

function java_util_Arrays_copyOf4(handle arg0, int arg1) returns handle = @java:Method {
    name: "copyOf",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "int"]
} external;

function java_util_Arrays_copyOf5(handle arg0, int arg1) returns handle = @java:Method {
    name: "copyOf",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "int"]
} external;

function java_util_Arrays_copyOf6(handle arg0, int arg1) returns handle = @java:Method {
    name: "copyOf",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int"]
} external;

function java_util_Arrays_copyOf7(handle arg0, int arg1) returns handle = @java:Method {
    name: "copyOf",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "int"]
} external;

function java_util_Arrays_copyOf8(handle arg0, int arg1) returns handle = @java:Method {
    name: "copyOf",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int"]
} external;

function java_util_Arrays_copyOf9(handle arg0, int arg1, handle arg2) returns handle = @java:Method {
    name: "copyOf",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "java.lang.Class"]
} external;

function java_util_Arrays_copyOfRange(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "copyOfRange",
    'class: "java.util.Arrays",
    paramTypes: ["[Z", "int", "int"]
} external;

function java_util_Arrays_copyOfRange10(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "copyOfRange",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "int", "int"]
} external;

function java_util_Arrays_copyOfRange2(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "copyOfRange",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "int", "int"]
} external;

function java_util_Arrays_copyOfRange3(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "copyOfRange",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "int", "int"]
} external;

function java_util_Arrays_copyOfRange4(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "copyOfRange",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "int", "int"]
} external;

function java_util_Arrays_copyOfRange5(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "copyOfRange",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "int", "int"]
} external;

function java_util_Arrays_copyOfRange6(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "copyOfRange",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int", "int"]
} external;

function java_util_Arrays_copyOfRange7(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "copyOfRange",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "int", "int"]
} external;

function java_util_Arrays_copyOfRange8(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "copyOfRange",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int"]
} external;

function java_util_Arrays_copyOfRange9(handle arg0, int arg1, int arg2, handle arg3) returns handle = @java:Method {
    name: "copyOfRange",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int", "java.lang.Class"]
} external;

function java_util_Arrays_deepEquals(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "deepEquals",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "[Ljava.lang.Object;"]
} external;

function java_util_Arrays_deepHashCode(handle arg0) returns int = @java:Method {
    name: "deepHashCode",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;"]
} external;

function java_util_Arrays_deepToString(handle arg0) returns handle = @java:Method {
    name: "deepToString",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;"]
} external;

function java_util_Arrays_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_Arrays_equals10(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "[F"]
} external;

function java_util_Arrays_equals11(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "int", "int", "[F", "int", "int"]
} external;

function java_util_Arrays_equals12(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "[I"]
} external;

function java_util_Arrays_equals13(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int", "int", "[I", "int", "int"]
} external;

function java_util_Arrays_equals14(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "int", "int", "[J", "int", "int"]
} external;

function java_util_Arrays_equals15(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "[J"]
} external;

function java_util_Arrays_equals16(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int", "[Ljava.lang.Object;", "int", "int"]
} external;

function java_util_Arrays_equals17(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5, handle arg6) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int", "[Ljava.lang.Object;", "int", "int", "java.util.Comparator"]
} external;

function java_util_Arrays_equals18(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "[Ljava.lang.Object;"]
} external;

function java_util_Arrays_equals19(handle arg0, handle arg1, handle arg2) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "[Ljava.lang.Object;", "java.util.Comparator"]
} external;

function java_util_Arrays_equals2(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[Z", "[Z"]
} external;

function java_util_Arrays_equals20(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "int", "int", "[S", "int", "int"]
} external;

function java_util_Arrays_equals21(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "[S"]
} external;

function java_util_Arrays_equals3(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[Z", "int", "int", "[Z", "int", "int"]
} external;

function java_util_Arrays_equals4(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "[B"]
} external;

function java_util_Arrays_equals5(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "int", "int", "[B", "int", "int"]
} external;

function java_util_Arrays_equals6(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "[C"]
} external;

function java_util_Arrays_equals7(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "int", "int", "[C", "int", "int"]
} external;

function java_util_Arrays_equals8(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "[D"]
} external;

function java_util_Arrays_equals9(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "int", "int", "[D", "int", "int"]
} external;

function java_util_Arrays_fill(handle arg0, boolean arg1) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[Z", "boolean"]
} external;

function java_util_Arrays_fill10(handle arg0, int arg1, int arg2, float arg3) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "int", "int", "float"]
} external;

function java_util_Arrays_fill11(handle arg0, int arg1) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int"]
} external;

function java_util_Arrays_fill12(handle arg0, int arg1, int arg2, int arg3) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int", "int", "int"]
} external;

function java_util_Arrays_fill13(handle arg0, int arg1, int arg2, int arg3) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "int", "int", "long"]
} external;

function java_util_Arrays_fill14(handle arg0, int arg1) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "long"]
} external;

function java_util_Arrays_fill15(handle arg0, int arg1, int arg2, handle arg3) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int", "java.lang.Object"]
} external;

function java_util_Arrays_fill16(handle arg0, handle arg1) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "java.lang.Object"]
} external;

function java_util_Arrays_fill17(handle arg0, int arg1, int arg2, int arg3) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "int", "int", "short"]
} external;

function java_util_Arrays_fill18(handle arg0, int arg1) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "short"]
} external;

function java_util_Arrays_fill2(handle arg0, int arg1, int arg2, boolean arg3) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[Z", "int", "int", "boolean"]
} external;

function java_util_Arrays_fill3(handle arg0, byte arg1) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "byte"]
} external;

function java_util_Arrays_fill4(handle arg0, int arg1, int arg2, byte arg3) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "int", "int", "byte"]
} external;

function java_util_Arrays_fill5(handle arg0, int arg1) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "char"]
} external;

function java_util_Arrays_fill6(handle arg0, int arg1, int arg2, int arg3) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "int", "int", "char"]
} external;

function java_util_Arrays_fill7(handle arg0, float arg1) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "double"]
} external;

function java_util_Arrays_fill8(handle arg0, int arg1, int arg2, float arg3) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "int", "int", "double"]
} external;

function java_util_Arrays_fill9(handle arg0, float arg1) = @java:Method {
    name: "fill",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "float"]
} external;

function java_util_Arrays_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.util.Arrays",
    paramTypes: []
} external;

function java_util_Arrays_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.Arrays",
    paramTypes: []
} external;

function java_util_Arrays_hashCode10(handle arg0) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.Arrays",
    paramTypes: ["[S"]
} external;

function java_util_Arrays_hashCode2(handle arg0) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.Arrays",
    paramTypes: ["[Z"]
} external;

function java_util_Arrays_hashCode3(handle arg0) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.Arrays",
    paramTypes: ["[B"]
} external;

function java_util_Arrays_hashCode4(handle arg0) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.Arrays",
    paramTypes: ["[C"]
} external;

function java_util_Arrays_hashCode5(handle arg0) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.Arrays",
    paramTypes: ["[D"]
} external;

function java_util_Arrays_hashCode6(handle arg0) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.Arrays",
    paramTypes: ["[F"]
} external;

function java_util_Arrays_hashCode7(handle arg0) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.Arrays",
    paramTypes: ["[I"]
} external;

function java_util_Arrays_hashCode8(handle arg0) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.Arrays",
    paramTypes: ["[J"]
} external;

function java_util_Arrays_hashCode9(handle arg0) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;"]
} external;

function java_util_Arrays_mismatch(handle arg0, handle arg1) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[Z", "[Z"]
} external;

function java_util_Arrays_mismatch10(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "int", "int", "[F", "int", "int"]
} external;

function java_util_Arrays_mismatch11(handle arg0, handle arg1) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "[I"]
} external;

function java_util_Arrays_mismatch12(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int", "int", "[I", "int", "int"]
} external;

function java_util_Arrays_mismatch13(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "int", "int", "[J", "int", "int"]
} external;

function java_util_Arrays_mismatch14(handle arg0, handle arg1) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "[J"]
} external;

function java_util_Arrays_mismatch15(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int", "[Ljava.lang.Object;", "int", "int"]
} external;

function java_util_Arrays_mismatch16(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5, handle arg6) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int", "[Ljava.lang.Object;", "int", "int", "java.util.Comparator"]
} external;

function java_util_Arrays_mismatch17(handle arg0, handle arg1) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "[Ljava.lang.Object;"]
} external;

function java_util_Arrays_mismatch18(handle arg0, handle arg1, handle arg2) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "[Ljava.lang.Object;", "java.util.Comparator"]
} external;

function java_util_Arrays_mismatch19(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "int", "int", "[S", "int", "int"]
} external;

function java_util_Arrays_mismatch2(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[Z", "int", "int", "[Z", "int", "int"]
} external;

function java_util_Arrays_mismatch20(handle arg0, handle arg1) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "[S"]
} external;

function java_util_Arrays_mismatch3(handle arg0, handle arg1) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "[B"]
} external;

function java_util_Arrays_mismatch4(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "int", "int", "[B", "int", "int"]
} external;

function java_util_Arrays_mismatch5(handle arg0, handle arg1) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "[C"]
} external;

function java_util_Arrays_mismatch6(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "int", "int", "[C", "int", "int"]
} external;

function java_util_Arrays_mismatch7(handle arg0, handle arg1) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "[D"]
} external;

function java_util_Arrays_mismatch8(handle arg0, int arg1, int arg2, handle arg3, int arg4, int arg5) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "int", "int", "[D", "int", "int"]
} external;

function java_util_Arrays_mismatch9(handle arg0, handle arg1) returns int = @java:Method {
    name: "mismatch",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "[F"]
} external;

function java_util_Arrays_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "java.util.Arrays",
    paramTypes: []
} external;

function java_util_Arrays_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "java.util.Arrays",
    paramTypes: []
} external;

function java_util_Arrays_parallelPrefix(handle arg0, handle arg1) = @java:Method {
    name: "parallelPrefix",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "java.util.function.DoubleBinaryOperator"]
} external;

function java_util_Arrays_parallelPrefix2(handle arg0, int arg1, int arg2, handle arg3) = @java:Method {
    name: "parallelPrefix",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "int", "int", "java.util.function.DoubleBinaryOperator"]
} external;

function java_util_Arrays_parallelPrefix3(handle arg0, handle arg1) = @java:Method {
    name: "parallelPrefix",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "java.util.function.IntBinaryOperator"]
} external;

function java_util_Arrays_parallelPrefix4(handle arg0, int arg1, int arg2, handle arg3) = @java:Method {
    name: "parallelPrefix",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int", "int", "java.util.function.IntBinaryOperator"]
} external;

function java_util_Arrays_parallelPrefix5(handle arg0, int arg1, int arg2, handle arg3) = @java:Method {
    name: "parallelPrefix",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "int", "int", "java.util.function.LongBinaryOperator"]
} external;

function java_util_Arrays_parallelPrefix6(handle arg0, handle arg1) = @java:Method {
    name: "parallelPrefix",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "java.util.function.LongBinaryOperator"]
} external;

function java_util_Arrays_parallelPrefix7(handle arg0, handle arg1) = @java:Method {
    name: "parallelPrefix",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "java.util.function.BinaryOperator"]
} external;

function java_util_Arrays_parallelPrefix8(handle arg0, int arg1, int arg2, handle arg3) = @java:Method {
    name: "parallelPrefix",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int", "java.util.function.BinaryOperator"]
} external;

function java_util_Arrays_parallelSetAll(handle arg0, handle arg1) = @java:Method {
    name: "parallelSetAll",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "java.util.function.IntToDoubleFunction"]
} external;

function java_util_Arrays_parallelSetAll2(handle arg0, handle arg1) = @java:Method {
    name: "parallelSetAll",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "java.util.function.IntUnaryOperator"]
} external;

function java_util_Arrays_parallelSetAll3(handle arg0, handle arg1) = @java:Method {
    name: "parallelSetAll",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "java.util.function.IntToLongFunction"]
} external;

function java_util_Arrays_parallelSetAll4(handle arg0, handle arg1) = @java:Method {
    name: "parallelSetAll",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "java.util.function.IntFunction"]
} external;

function java_util_Arrays_parallelSort(handle arg0) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[B"]
} external;

function java_util_Arrays_parallelSort10(handle arg0, int arg1, int arg2) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "int", "int"]
} external;

function java_util_Arrays_parallelSort11(handle arg0) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[I"]
} external;

function java_util_Arrays_parallelSort12(handle arg0, int arg1, int arg2) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int", "int"]
} external;

function java_util_Arrays_parallelSort13(handle arg0) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[J"]
} external;

function java_util_Arrays_parallelSort14(handle arg0, int arg1, int arg2) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "int", "int"]
} external;

function java_util_Arrays_parallelSort15(handle arg0, handle arg1) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "java.util.Comparator"]
} external;

function java_util_Arrays_parallelSort16(handle arg0, int arg1, int arg2, handle arg3) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int", "java.util.Comparator"]
} external;

function java_util_Arrays_parallelSort17(handle arg0) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[S"]
} external;

function java_util_Arrays_parallelSort18(handle arg0, int arg1, int arg2) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "int", "int"]
} external;

function java_util_Arrays_parallelSort2(handle arg0, int arg1, int arg2) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "int", "int"]
} external;

function java_util_Arrays_parallelSort3(handle arg0) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[C"]
} external;

function java_util_Arrays_parallelSort4(handle arg0, int arg1, int arg2) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "int", "int"]
} external;

function java_util_Arrays_parallelSort5(handle arg0) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Comparable;"]
} external;

function java_util_Arrays_parallelSort6(handle arg0, int arg1, int arg2) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Comparable;", "int", "int"]
} external;

function java_util_Arrays_parallelSort7(handle arg0) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[D"]
} external;

function java_util_Arrays_parallelSort8(handle arg0, int arg1, int arg2) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "int", "int"]
} external;

function java_util_Arrays_parallelSort9(handle arg0) = @java:Method {
    name: "parallelSort",
    'class: "java.util.Arrays",
    paramTypes: ["[F"]
} external;

function java_util_Arrays_setAll(handle arg0, handle arg1) = @java:Method {
    name: "setAll",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "java.util.function.IntToDoubleFunction"]
} external;

function java_util_Arrays_setAll2(handle arg0, handle arg1) = @java:Method {
    name: "setAll",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "java.util.function.IntUnaryOperator"]
} external;

function java_util_Arrays_setAll3(handle arg0, handle arg1) = @java:Method {
    name: "setAll",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "java.util.function.IntToLongFunction"]
} external;

function java_util_Arrays_setAll4(handle arg0, handle arg1) = @java:Method {
    name: "setAll",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "java.util.function.IntFunction"]
} external;

function java_util_Arrays_sort(handle arg0) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[B"]
} external;

function java_util_Arrays_sort10(handle arg0, int arg1, int arg2) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int", "int"]
} external;

function java_util_Arrays_sort11(handle arg0) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[J"]
} external;

function java_util_Arrays_sort12(handle arg0, int arg1, int arg2) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "int", "int"]
} external;

function java_util_Arrays_sort13(handle arg0) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;"]
} external;

function java_util_Arrays_sort14(handle arg0, handle arg1) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "java.util.Comparator"]
} external;

function java_util_Arrays_sort15(handle arg0, int arg1, int arg2) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int"]
} external;

function java_util_Arrays_sort16(handle arg0, int arg1, int arg2, handle arg3) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int", "java.util.Comparator"]
} external;

function java_util_Arrays_sort17(handle arg0) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[S"]
} external;

function java_util_Arrays_sort18(handle arg0, int arg1, int arg2) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[S", "int", "int"]
} external;

function java_util_Arrays_sort2(handle arg0, int arg1, int arg2) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[B", "int", "int"]
} external;

function java_util_Arrays_sort3(handle arg0) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[C"]
} external;

function java_util_Arrays_sort4(handle arg0, int arg1, int arg2) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[C", "int", "int"]
} external;

function java_util_Arrays_sort5(handle arg0) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[D"]
} external;

function java_util_Arrays_sort6(handle arg0, int arg1, int arg2) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "int", "int"]
} external;

function java_util_Arrays_sort7(handle arg0) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[F"]
} external;

function java_util_Arrays_sort8(handle arg0, int arg1, int arg2) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[F", "int", "int"]
} external;

function java_util_Arrays_sort9(handle arg0) = @java:Method {
    name: "sort",
    'class: "java.util.Arrays",
    paramTypes: ["[I"]
} external;

function java_util_Arrays_spliterator(handle arg0) returns handle = @java:Method {
    name: "spliterator",
    'class: "java.util.Arrays",
    paramTypes: ["[D"]
} external;

function java_util_Arrays_spliterator2(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "spliterator",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "int", "int"]
} external;

function java_util_Arrays_spliterator3(handle arg0) returns handle = @java:Method {
    name: "spliterator",
    'class: "java.util.Arrays",
    paramTypes: ["[I"]
} external;

function java_util_Arrays_spliterator4(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "spliterator",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int", "int"]
} external;

function java_util_Arrays_spliterator5(handle arg0) returns handle = @java:Method {
    name: "spliterator",
    'class: "java.util.Arrays",
    paramTypes: ["[J"]
} external;

function java_util_Arrays_spliterator6(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "spliterator",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "int", "int"]
} external;

function java_util_Arrays_spliterator7(handle arg0) returns handle = @java:Method {
    name: "spliterator",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;"]
} external;

function java_util_Arrays_spliterator8(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "spliterator",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int"]
} external;

function java_util_Arrays_stream(handle arg0) returns handle = @java:Method {
    name: "stream",
    'class: "java.util.Arrays",
    paramTypes: ["[D"]
} external;

function java_util_Arrays_stream2(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "stream",
    'class: "java.util.Arrays",
    paramTypes: ["[D", "int", "int"]
} external;

function java_util_Arrays_stream3(handle arg0) returns handle = @java:Method {
    name: "stream",
    'class: "java.util.Arrays",
    paramTypes: ["[I"]
} external;

function java_util_Arrays_stream4(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "stream",
    'class: "java.util.Arrays",
    paramTypes: ["[I", "int", "int"]
} external;

function java_util_Arrays_stream5(handle arg0) returns handle = @java:Method {
    name: "stream",
    'class: "java.util.Arrays",
    paramTypes: ["[J"]
} external;

function java_util_Arrays_stream6(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "stream",
    'class: "java.util.Arrays",
    paramTypes: ["[J", "int", "int"]
} external;

function java_util_Arrays_stream7(handle arg0) returns handle = @java:Method {
    name: "stream",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;"]
} external;

function java_util_Arrays_stream8(handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "stream",
    'class: "java.util.Arrays",
    paramTypes: ["[Ljava.lang.Object;", "int", "int"]
} external;

function java_util_Arrays_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.Arrays",
    paramTypes: []
} external;

function java_util_Arrays_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.Arrays",
    paramTypes: ["long"]
} external;

function java_util_Arrays_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.Arrays",
    paramTypes: ["long", "int"]
} external;

