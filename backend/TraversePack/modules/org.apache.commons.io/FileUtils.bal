import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import backendv2.java.lang as javalang;
import backendv2.java.util as javautil;
import backendv2.java.net as javanet;
import backendv2.java.io as javaio;
import backendv2.java.math as javamath;
import backendv2.java.util.zip as javautilzip;
import backendv2.org.apache.commons.io.filefilter as orgapachecommonsiofilefilter;
import backendv2.java.nio.charset as javaniocharset;

# Ballerina class mapping for the Java `org.apache.commons.io.FileUtils` class.
@java:Binding {'class: "org.apache.commons.io.FileUtils"}
public distinct class FileUtils {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `org.apache.commons.io.FileUtils` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `org.apache.commons.io.FileUtils` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.apache.commons.io.FileUtils` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
    # The function that maps to the `equals` method of `org.apache.commons.io.FileUtils`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return org_apache_commons_io_FileUtils_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `org.apache.commons.io.FileUtils`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = org_apache_commons_io_FileUtils_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `org.apache.commons.io.FileUtils`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return org_apache_commons_io_FileUtils_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `org.apache.commons.io.FileUtils`.
    public function notify() {
        org_apache_commons_io_FileUtils_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `org.apache.commons.io.FileUtils`.
    public function notifyAll() {
        org_apache_commons_io_FileUtils_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `org.apache.commons.io.FileUtils`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = org_apache_commons_io_FileUtils_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.apache.commons.io.FileUtils`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = org_apache_commons_io_FileUtils_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.apache.commons.io.FileUtils`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = org_apache_commons_io_FileUtils_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `org.apache.commons.io.FileUtils`.
#
# + return - The new `FileUtils` class generated.
public function newFileUtils1() returns FileUtils {
    handle externalObj = org_apache_commons_io_FileUtils_newFileUtils1();
    FileUtils newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `byteCountToDisplaySize` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javamath:BigInteger` value required to map with the Java method parameter.
# + return - The `string` value returning from the Java mapping.
public function FileUtils_byteCountToDisplaySize(javamath:BigInteger arg0) returns string? {
    return java:toString(org_apache_commons_io_FileUtils_byteCountToDisplaySize(arg0.jObj));
}

# The function that maps to the `byteCountToDisplaySize` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `int` value required to map with the Java method parameter.
# + return - The `string` value returning from the Java mapping.
public function FileUtils_byteCountToDisplaySize2(int arg0) returns string? {
    return java:toString(org_apache_commons_io_FileUtils_byteCountToDisplaySize2(arg0));
}

# The function that maps to the `checksum` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javautilzip:Checksum` value required to map with the Java method parameter.
# + return - The `javautilzip:Checksum` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_checksum(javaio:File arg0, javautilzip:Checksum arg1) returns javautilzip:Checksum|javaio:IOException {
    handle|error externalObj = org_apache_commons_io_FileUtils_checksum(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautilzip:Checksum newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `checksumCRC32` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `int` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_checksumCRC32(javaio:File arg0) returns int|javaio:IOException {
    int|error externalObj = org_apache_commons_io_FileUtils_checksumCRC32(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return externalObj;
    }
}

# The function that maps to the `cleanDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_cleanDirectory(javaio:File arg0) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_cleanDirectory(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `contentEquals` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `boolean` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_contentEquals(javaio:File arg0, javaio:File arg1) returns boolean|javaio:IOException {
    boolean|error externalObj = org_apache_commons_io_FileUtils_contentEquals(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return externalObj;
    }
}

# The function that maps to the `contentEqualsIgnoreEOL` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + arg2 - The `string` value required to map with the Java method parameter.
# + return - The `boolean` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_contentEqualsIgnoreEOL(javaio:File arg0, javaio:File arg1, string arg2) returns boolean|javaio:IOException {
    boolean|error externalObj = org_apache_commons_io_FileUtils_contentEqualsIgnoreEOL(arg0.jObj, arg1.jObj, java:fromString(arg2));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return externalObj;
    }
}

# The function that maps to the `convertFileCollectionToFileArray` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javautil:Collection` value required to map with the Java method parameter.
# + return - The `javaio:File[]` value returning from the Java mapping.
public function FileUtils_convertFileCollectionToFileArray(javautil:Collection arg0) returns javaio:File[]|error {
    handle externalObj = org_apache_commons_io_FileUtils_convertFileCollectionToFileArray(arg0.jObj);
    javaio:File[] newObj = [];
    handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
    int count = anyObj.length();
    foreach int i in 0 ... count - 1 {
        javaio:File element = new (anyObj[i]);
        newObj[i] = element;
    }
    return newObj;
}

# The function that maps to the `copyDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyDirectory(javaio:File arg0, javaio:File arg1) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_copyDirectory(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `copyDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + arg2 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyDirectory2(javaio:File arg0, javaio:File arg1, boolean arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_copyDirectory2(arg0.jObj, arg1.jObj, arg2);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `copyDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + arg2 - The `javaio:FileFilter` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyDirectory3(javaio:File arg0, javaio:File arg1, javaio:FileFilter arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_copyDirectory3(arg0.jObj, arg1.jObj, arg2.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `copyDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + arg2 - The `javaio:FileFilter` value required to map with the Java method parameter.
# + arg3 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyDirectory4(javaio:File arg0, javaio:File arg1, javaio:FileFilter arg2, boolean arg3) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_copyDirectory4(arg0.jObj, arg1.jObj, arg2.jObj, arg3);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `copyDirectoryToDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyDirectoryToDirectory(javaio:File arg0, javaio:File arg1) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_copyDirectoryToDirectory(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `copyFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyFile(javaio:File arg0, javaio:File arg1) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_copyFile(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `copyFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + arg2 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyFile2(javaio:File arg0, javaio:File arg1, boolean arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_copyFile2(arg0.jObj, arg1.jObj, arg2);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `copyFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:OutputStream` value required to map with the Java method parameter.
# + return - The `int` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyFile3(javaio:File arg0, javaio:OutputStream arg1) returns int|javaio:IOException {
    int|error externalObj = org_apache_commons_io_FileUtils_copyFile3(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return externalObj;
    }
}

# The function that maps to the `copyFileToDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyFileToDirectory(javaio:File arg0, javaio:File arg1) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_copyFileToDirectory(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `copyFileToDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + arg2 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyFileToDirectory2(javaio:File arg0, javaio:File arg1, boolean arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_copyFileToDirectory2(arg0.jObj, arg1.jObj, arg2);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `copyInputStreamToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:InputStream` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyInputStreamToFile(javaio:InputStream arg0, javaio:File arg1) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_copyInputStreamToFile(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `copyToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:InputStream` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyToFile(javaio:InputStream arg0, javaio:File arg1) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_copyToFile(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `copyURLToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javanet:URL` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyURLToFile(javanet:URL arg0, javaio:File arg1) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_copyURLToFile(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `copyURLToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javanet:URL` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_copyURLToFile2(javanet:URL arg0, javaio:File arg1, int arg2, int arg3) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_copyURLToFile2(arg0.jObj, arg1.jObj, arg2, arg3);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `deleteDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_deleteDirectory(javaio:File arg0) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_deleteDirectory(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `deleteQuietly` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function FileUtils_deleteQuietly(javaio:File arg0) returns boolean {
    return org_apache_commons_io_FileUtils_deleteQuietly(arg0.jObj);
}

# The function that maps to the `directoryContains` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `boolean` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_directoryContains(javaio:File arg0, javaio:File arg1) returns boolean|javaio:IOException {
    boolean|error externalObj = org_apache_commons_io_FileUtils_directoryContains(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return externalObj;
    }
}

# The function that maps to the `forceDelete` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_forceDelete(javaio:File arg0) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_forceDelete(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `forceDeleteOnExit` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_forceDeleteOnExit(javaio:File arg0) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_forceDeleteOnExit(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `forceMkdir` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_forceMkdir(javaio:File arg0) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_forceMkdir(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `forceMkdirParent` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_forceMkdirParent(javaio:File arg0) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_forceMkdirParent(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `getFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string[]` value required to map with the Java method parameter.
# + return - The `javaio:File` value returning from the Java mapping.
public function FileUtils_getFile(javaio:File arg0, string[] arg1) returns javaio:File|error {
    handle externalObj = org_apache_commons_io_FileUtils_getFile(arg0.jObj, check jarrays:toHandle(arg1, "java.lang.String"));
    javaio:File newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `getFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `string[]` value required to map with the Java method parameter.
# + return - The `javaio:File` value returning from the Java mapping.
public function FileUtils_getFile2(string[] arg0) returns javaio:File|error {
    handle externalObj = org_apache_commons_io_FileUtils_getFile2(check jarrays:toHandle(arg0, "java.lang.String"));
    javaio:File newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `getTempDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + return - The `javaio:File` value returning from the Java mapping.
public function FileUtils_getTempDirectory() returns javaio:File {
    handle externalObj = org_apache_commons_io_FileUtils_getTempDirectory();
    javaio:File newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `getTempDirectoryPath` method of `org.apache.commons.io.FileUtils`.
#
# + return - The `string` value returning from the Java mapping.
public function FileUtils_getTempDirectoryPath() returns string? {
    return java:toString(org_apache_commons_io_FileUtils_getTempDirectoryPath());
}

# The function that maps to the `getUserDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + return - The `javaio:File` value returning from the Java mapping.
public function FileUtils_getUserDirectory() returns javaio:File {
    handle externalObj = org_apache_commons_io_FileUtils_getUserDirectory();
    javaio:File newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `getUserDirectoryPath` method of `org.apache.commons.io.FileUtils`.
#
# + return - The `string` value returning from the Java mapping.
public function FileUtils_getUserDirectoryPath() returns string? {
    return java:toString(org_apache_commons_io_FileUtils_getUserDirectoryPath());
}

# The function that maps to the `isFileNewer` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javautil:Date` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function FileUtils_isFileNewer(javaio:File arg0, javautil:Date arg1) returns boolean {
    return org_apache_commons_io_FileUtils_isFileNewer(arg0.jObj, arg1.jObj);
}

# The function that maps to the `isFileNewer` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function FileUtils_isFileNewer2(javaio:File arg0, javaio:File arg1) returns boolean {
    return org_apache_commons_io_FileUtils_isFileNewer2(arg0.jObj, arg1.jObj);
}

# The function that maps to the `isFileNewer` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function FileUtils_isFileNewer3(javaio:File arg0, int arg1) returns boolean {
    return org_apache_commons_io_FileUtils_isFileNewer3(arg0.jObj, arg1);
}

# The function that maps to the `isFileOlder` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javautil:Date` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function FileUtils_isFileOlder(javaio:File arg0, javautil:Date arg1) returns boolean {
    return org_apache_commons_io_FileUtils_isFileOlder(arg0.jObj, arg1.jObj);
}

# The function that maps to the `isFileOlder` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function FileUtils_isFileOlder2(javaio:File arg0, javaio:File arg1) returns boolean {
    return org_apache_commons_io_FileUtils_isFileOlder2(arg0.jObj, arg1.jObj);
}

# The function that maps to the `isFileOlder` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function FileUtils_isFileOlder3(javaio:File arg0, int arg1) returns boolean {
    return org_apache_commons_io_FileUtils_isFileOlder3(arg0.jObj, arg1);
}

# The function that maps to the `isSymlink` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `boolean` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_isSymlink(javaio:File arg0) returns boolean|javaio:IOException {
    boolean|error externalObj = org_apache_commons_io_FileUtils_isSymlink(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return externalObj;
    }
}

# The function that maps to the `iterateFiles` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `orgapachecommonsiofilefilter:IOFileFilter` value required to map with the Java method parameter.
# + arg2 - The `orgapachecommonsiofilefilter:IOFileFilter` value required to map with the Java method parameter.
# + return - The `javautil:Iterator` value returning from the Java mapping.
public function FileUtils_iterateFiles(javaio:File arg0, orgapachecommonsiofilefilter:IOFileFilter arg1, orgapachecommonsiofilefilter:IOFileFilter arg2) returns javautil:Iterator {
    handle externalObj = org_apache_commons_io_FileUtils_iterateFiles(arg0.jObj, arg1.jObj, arg2.jObj);
    javautil:Iterator newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `iterateFiles` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string[]` value required to map with the Java method parameter.
# + arg2 - The `boolean` value required to map with the Java method parameter.
# + return - The `javautil:Iterator` value returning from the Java mapping.
public function FileUtils_iterateFiles2(javaio:File arg0, string[] arg1, boolean arg2) returns javautil:Iterator|error {
    handle externalObj = org_apache_commons_io_FileUtils_iterateFiles2(arg0.jObj, check jarrays:toHandle(arg1, "java.lang.String"), arg2);
    javautil:Iterator newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `iterateFilesAndDirs` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `orgapachecommonsiofilefilter:IOFileFilter` value required to map with the Java method parameter.
# + arg2 - The `orgapachecommonsiofilefilter:IOFileFilter` value required to map with the Java method parameter.
# + return - The `javautil:Iterator` value returning from the Java mapping.
public function FileUtils_iterateFilesAndDirs(javaio:File arg0, orgapachecommonsiofilefilter:IOFileFilter arg1, orgapachecommonsiofilefilter:IOFileFilter arg2) returns javautil:Iterator {
    handle externalObj = org_apache_commons_io_FileUtils_iterateFilesAndDirs(arg0.jObj, arg1.jObj, arg2.jObj);
    javautil:Iterator newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `lineIterator` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `LineIterator` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_lineIterator(javaio:File arg0) returns LineIterator|javaio:IOException {
    handle|error externalObj = org_apache_commons_io_FileUtils_lineIterator(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        LineIterator newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `lineIterator` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + return - The `LineIterator` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_lineIterator2(javaio:File arg0, string arg1) returns LineIterator|javaio:IOException {
    handle|error externalObj = org_apache_commons_io_FileUtils_lineIterator2(arg0.jObj, java:fromString(arg1));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        LineIterator newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `listFiles` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `orgapachecommonsiofilefilter:IOFileFilter` value required to map with the Java method parameter.
# + arg2 - The `orgapachecommonsiofilefilter:IOFileFilter` value required to map with the Java method parameter.
# + return - The `javautil:Collection` value returning from the Java mapping.
public function FileUtils_listFiles(javaio:File arg0, orgapachecommonsiofilefilter:IOFileFilter arg1, orgapachecommonsiofilefilter:IOFileFilter arg2) returns javautil:Collection {
    handle externalObj = org_apache_commons_io_FileUtils_listFiles(arg0.jObj, arg1.jObj, arg2.jObj);
    javautil:Collection newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `listFiles` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string[]` value required to map with the Java method parameter.
# + arg2 - The `boolean` value required to map with the Java method parameter.
# + return - The `javautil:Collection` value returning from the Java mapping.
public function FileUtils_listFiles2(javaio:File arg0, string[] arg1, boolean arg2) returns javautil:Collection|error {
    handle externalObj = org_apache_commons_io_FileUtils_listFiles2(arg0.jObj, check jarrays:toHandle(arg1, "java.lang.String"), arg2);
    javautil:Collection newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `listFilesAndDirs` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `orgapachecommonsiofilefilter:IOFileFilter` value required to map with the Java method parameter.
# + arg2 - The `orgapachecommonsiofilefilter:IOFileFilter` value required to map with the Java method parameter.
# + return - The `javautil:Collection` value returning from the Java mapping.
public function FileUtils_listFilesAndDirs(javaio:File arg0, orgapachecommonsiofilefilter:IOFileFilter arg1, orgapachecommonsiofilefilter:IOFileFilter arg2) returns javautil:Collection {
    handle externalObj = org_apache_commons_io_FileUtils_listFilesAndDirs(arg0.jObj, arg1.jObj, arg2.jObj);
    javautil:Collection newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `moveDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_moveDirectory(javaio:File arg0, javaio:File arg1) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_moveDirectory(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `moveDirectoryToDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + arg2 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_moveDirectoryToDirectory(javaio:File arg0, javaio:File arg1, boolean arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_moveDirectoryToDirectory(arg0.jObj, arg1.jObj, arg2);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `moveFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_moveFile(javaio:File arg0, javaio:File arg1) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_moveFile(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `moveFileToDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + arg2 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_moveFileToDirectory(javaio:File arg0, javaio:File arg1, boolean arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_moveFileToDirectory(arg0.jObj, arg1.jObj, arg2);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `moveToDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaio:File` value required to map with the Java method parameter.
# + arg2 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_moveToDirectory(javaio:File arg0, javaio:File arg1, boolean arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_moveToDirectory(arg0.jObj, arg1.jObj, arg2);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `openInputStream` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:FileInputStream` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_openInputStream(javaio:File arg0) returns javaio:FileInputStream|javaio:IOException {
    handle|error externalObj = org_apache_commons_io_FileUtils_openInputStream(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaio:FileInputStream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `openOutputStream` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:FileOutputStream` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_openOutputStream(javaio:File arg0) returns javaio:FileOutputStream|javaio:IOException {
    handle|error externalObj = org_apache_commons_io_FileUtils_openOutputStream(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaio:FileOutputStream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `openOutputStream` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:FileOutputStream` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_openOutputStream2(javaio:File arg0, boolean arg1) returns javaio:FileOutputStream|javaio:IOException {
    handle|error externalObj = org_apache_commons_io_FileUtils_openOutputStream2(arg0.jObj, arg1);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaio:FileOutputStream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `readFileToByteArray` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `byte[]` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_readFileToByteArray(javaio:File arg0) returns byte[]|javaio:IOException|error {
    handle|error externalObj = org_apache_commons_io_FileUtils_readFileToByteArray(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return <byte[]>check jarrays:fromHandle(externalObj, "byte");
    }
}

# The function that maps to the `readFileToString` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `string` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_readFileToString(javaio:File arg0) returns string?|javaio:IOException {
    handle|error externalObj = org_apache_commons_io_FileUtils_readFileToString(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return java:toString(externalObj);
    }
}

# The function that maps to the `readFileToString` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaniocharset:Charset` value required to map with the Java method parameter.
# + return - The `string` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_readFileToString2(javaio:File arg0, javaniocharset:Charset arg1) returns string?|javaio:IOException {
    handle|error externalObj = org_apache_commons_io_FileUtils_readFileToString2(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return java:toString(externalObj);
    }
}

# The function that maps to the `readFileToString` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + return - The `string` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_readFileToString3(javaio:File arg0, string arg1) returns string?|javaio:IOException {
    handle|error externalObj = org_apache_commons_io_FileUtils_readFileToString3(arg0.jObj, java:fromString(arg1));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return java:toString(externalObj);
    }
}

# The function that maps to the `readLines` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javautil:List` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_readLines(javaio:File arg0) returns javautil:List|javaio:IOException {
    handle|error externalObj = org_apache_commons_io_FileUtils_readLines(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautil:List newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `readLines` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javaniocharset:Charset` value required to map with the Java method parameter.
# + return - The `javautil:List` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_readLines2(javaio:File arg0, javaniocharset:Charset arg1) returns javautil:List|javaio:IOException {
    handle|error externalObj = org_apache_commons_io_FileUtils_readLines2(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautil:List newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `readLines` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + return - The `javautil:List` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_readLines3(javaio:File arg0, string arg1) returns javautil:List|javaio:IOException {
    handle|error externalObj = org_apache_commons_io_FileUtils_readLines3(arg0.jObj, java:fromString(arg1));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautil:List newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `sizeOf` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function FileUtils_sizeOf(javaio:File arg0) returns int {
    return org_apache_commons_io_FileUtils_sizeOf(arg0.jObj);
}

# The function that maps to the `sizeOfAsBigInteger` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javamath:BigInteger` value returning from the Java mapping.
public function FileUtils_sizeOfAsBigInteger(javaio:File arg0) returns javamath:BigInteger {
    handle externalObj = org_apache_commons_io_FileUtils_sizeOfAsBigInteger(arg0.jObj);
    javamath:BigInteger newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `sizeOfDirectory` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
public function FileUtils_sizeOfDirectory(javaio:File arg0) returns int {
    return org_apache_commons_io_FileUtils_sizeOfDirectory(arg0.jObj);
}

# The function that maps to the `sizeOfDirectoryAsBigInteger` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javamath:BigInteger` value returning from the Java mapping.
public function FileUtils_sizeOfDirectoryAsBigInteger(javaio:File arg0) returns javamath:BigInteger {
    handle externalObj = org_apache_commons_io_FileUtils_sizeOfDirectoryAsBigInteger(arg0.jObj);
    javamath:BigInteger newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `toFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javanet:URL` value required to map with the Java method parameter.
# + return - The `javaio:File` value returning from the Java mapping.
public function FileUtils_toFile(javanet:URL arg0) returns javaio:File {
    handle externalObj = org_apache_commons_io_FileUtils_toFile(arg0.jObj);
    javaio:File newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `toFiles` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javanet:URL[]` value required to map with the Java method parameter.
# + return - The `javaio:File[]` value returning from the Java mapping.
public function FileUtils_toFiles(javanet:URL[] arg0) returns javaio:File[]|error {
    handle externalObj = org_apache_commons_io_FileUtils_toFiles(check jarrays:toHandle(arg0, "java.net.URL"));
    javaio:File[] newObj = [];
    handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
    int count = anyObj.length();
    foreach int i in 0 ... count - 1 {
        javaio:File element = new (anyObj[i]);
        newObj[i] = element;
    }
    return newObj;
}

# The function that maps to the `toURLs` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File[]` value required to map with the Java method parameter.
# + return - The `javanet:URL[]` or the `javaio:IOException` value returning from the Java mapping.
public function FileUtils_toURLs(javaio:File[] arg0) returns javanet:URL[]|javaio:IOException|error {
    handle|error externalObj = org_apache_commons_io_FileUtils_toURLs(check jarrays:toHandle(arg0, "java.io.File"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javanet:URL[] newObj = [];
        handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
        int count = anyObj.length();
        foreach int i in 0 ... count - 1 {
            javanet:URL element = new (anyObj[i]);
            newObj[i] = element;
        }
    }
    return newObj;
}

# The function that maps to the `touch` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_touch(javaio:File arg0) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_touch(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `waitFor` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function FileUtils_waitFor(javaio:File arg0, int arg1) returns boolean {
    return org_apache_commons_io_FileUtils_waitFor(arg0.jObj, arg1);
}

# The function that maps to the `write` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javalang:CharSequence` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_write(javaio:File arg0, javalang:CharSequence arg1) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_write(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `write` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javalang:CharSequence` value required to map with the Java method parameter.
# + arg2 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_write2(javaio:File arg0, javalang:CharSequence arg1, boolean arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_write2(arg0.jObj, arg1.jObj, arg2);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `write` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javalang:CharSequence` value required to map with the Java method parameter.
# + arg2 - The `javaniocharset:Charset` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_write3(javaio:File arg0, javalang:CharSequence arg1, javaniocharset:Charset arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_write3(arg0.jObj, arg1.jObj, arg2.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `write` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javalang:CharSequence` value required to map with the Java method parameter.
# + arg2 - The `javaniocharset:Charset` value required to map with the Java method parameter.
# + arg3 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_write4(javaio:File arg0, javalang:CharSequence arg1, javaniocharset:Charset arg2, boolean arg3) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_write4(arg0.jObj, arg1.jObj, arg2.jObj, arg3);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `write` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javalang:CharSequence` value required to map with the Java method parameter.
# + arg2 - The `string` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_write5(javaio:File arg0, javalang:CharSequence arg1, string arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_write5(arg0.jObj, arg1.jObj, java:fromString(arg2));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `write` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javalang:CharSequence` value required to map with the Java method parameter.
# + arg2 - The `string` value required to map with the Java method parameter.
# + arg3 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_write6(javaio:File arg0, javalang:CharSequence arg1, string arg2, boolean arg3) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_write6(arg0.jObj, arg1.jObj, java:fromString(arg2), arg3);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeByteArrayToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `byte[]` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeByteArrayToFile(javaio:File arg0, byte[] arg1) returns javaio:IOException?|error? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeByteArrayToFile(arg0.jObj, check jarrays:toHandle(arg1, "byte"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeByteArrayToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `byte[]` value required to map with the Java method parameter.
# + arg2 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeByteArrayToFile2(javaio:File arg0, byte[] arg1, boolean arg2) returns javaio:IOException?|error? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeByteArrayToFile2(arg0.jObj, check jarrays:toHandle(arg1, "byte"), arg2);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeByteArrayToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `byte[]` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeByteArrayToFile3(javaio:File arg0, byte[] arg1, int arg2, int arg3) returns javaio:IOException?|error? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeByteArrayToFile3(arg0.jObj, check jarrays:toHandle(arg1, "byte"), arg2, arg3);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeByteArrayToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `byte[]` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `int` value required to map with the Java method parameter.
# + arg4 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeByteArrayToFile4(javaio:File arg0, byte[] arg1, int arg2, int arg3, boolean arg4) returns javaio:IOException?|error? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeByteArrayToFile4(arg0.jObj, check jarrays:toHandle(arg1, "byte"), arg2, arg3, arg4);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeLines` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javautil:Collection` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeLines(javaio:File arg0, javautil:Collection arg1) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeLines(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeLines` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javautil:Collection` value required to map with the Java method parameter.
# + arg2 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeLines2(javaio:File arg0, javautil:Collection arg1, boolean arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeLines2(arg0.jObj, arg1.jObj, arg2);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeLines` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javautil:Collection` value required to map with the Java method parameter.
# + arg2 - The `string` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeLines3(javaio:File arg0, javautil:Collection arg1, string arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeLines3(arg0.jObj, arg1.jObj, java:fromString(arg2));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeLines` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `javautil:Collection` value required to map with the Java method parameter.
# + arg2 - The `string` value required to map with the Java method parameter.
# + arg3 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeLines4(javaio:File arg0, javautil:Collection arg1, string arg2, boolean arg3) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeLines4(arg0.jObj, arg1.jObj, java:fromString(arg2), arg3);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeLines` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `javautil:Collection` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeLines5(javaio:File arg0, string arg1, javautil:Collection arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeLines5(arg0.jObj, java:fromString(arg1), arg2.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeLines` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `javautil:Collection` value required to map with the Java method parameter.
# + arg3 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeLines6(javaio:File arg0, string arg1, javautil:Collection arg2, boolean arg3) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeLines6(arg0.jObj, java:fromString(arg1), arg2.jObj, arg3);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeLines` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `javautil:Collection` value required to map with the Java method parameter.
# + arg3 - The `string` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeLines7(javaio:File arg0, string arg1, javautil:Collection arg2, string arg3) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeLines7(arg0.jObj, java:fromString(arg1), arg2.jObj, java:fromString(arg3));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeLines` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `javautil:Collection` value required to map with the Java method parameter.
# + arg3 - The `string` value required to map with the Java method parameter.
# + arg4 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeLines8(javaio:File arg0, string arg1, javautil:Collection arg2, string arg3, boolean arg4) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeLines8(arg0.jObj, java:fromString(arg1), arg2.jObj, java:fromString(arg3), arg4);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeStringToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeStringToFile(javaio:File arg0, string arg1) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeStringToFile(arg0.jObj, java:fromString(arg1));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeStringToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeStringToFile2(javaio:File arg0, string arg1, boolean arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeStringToFile2(arg0.jObj, java:fromString(arg1), arg2);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeStringToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `javaniocharset:Charset` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeStringToFile3(javaio:File arg0, string arg1, javaniocharset:Charset arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeStringToFile3(arg0.jObj, java:fromString(arg1), arg2.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeStringToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `javaniocharset:Charset` value required to map with the Java method parameter.
# + arg3 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeStringToFile4(javaio:File arg0, string arg1, javaniocharset:Charset arg2, boolean arg3) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeStringToFile4(arg0.jObj, java:fromString(arg1), arg2.jObj, arg3);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeStringToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `string` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeStringToFile5(javaio:File arg0, string arg1, string arg2) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeStringToFile5(arg0.jObj, java:fromString(arg1), java:fromString(arg2));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `writeStringToFile` method of `org.apache.commons.io.FileUtils`.
#
# + arg0 - The `javaio:File` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `string` value required to map with the Java method parameter.
# + arg3 - The `boolean` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function FileUtils_writeStringToFile6(javaio:File arg0, string arg1, string arg2, boolean arg3) returns javaio:IOException? {
    error|() externalObj = org_apache_commons_io_FileUtils_writeStringToFile6(arg0.jObj, java:fromString(arg1), java:fromString(arg2), arg3);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that retrieves the value of the public field `ONE_KB`.
#
# + return - The `int` value of the field.
public function FileUtils_getONE_KB() returns int {
    return org_apache_commons_io_FileUtils_getONE_KB();
}

# The function that retrieves the value of the public field `ONE_KB_BI`.
#
# + return - The `BigInteger` value of the field.
public function FileUtils_getONE_KB_BI() returns javamath:BigInteger {
    handle externalObj = org_apache_commons_io_FileUtils_getONE_KB_BI();
    javamath:BigInteger newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `ONE_MB`.
#
# + return - The `int` value of the field.
public function FileUtils_getONE_MB() returns int {
    return org_apache_commons_io_FileUtils_getONE_MB();
}

# The function that retrieves the value of the public field `ONE_MB_BI`.
#
# + return - The `BigInteger` value of the field.
public function FileUtils_getONE_MB_BI() returns javamath:BigInteger {
    handle externalObj = org_apache_commons_io_FileUtils_getONE_MB_BI();
    javamath:BigInteger newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `ONE_GB`.
#
# + return - The `int` value of the field.
public function FileUtils_getONE_GB() returns int {
    return org_apache_commons_io_FileUtils_getONE_GB();
}

# The function that retrieves the value of the public field `ONE_GB_BI`.
#
# + return - The `BigInteger` value of the field.
public function FileUtils_getONE_GB_BI() returns javamath:BigInteger {
    handle externalObj = org_apache_commons_io_FileUtils_getONE_GB_BI();
    javamath:BigInteger newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `ONE_TB`.
#
# + return - The `int` value of the field.
public function FileUtils_getONE_TB() returns int {
    return org_apache_commons_io_FileUtils_getONE_TB();
}

# The function that retrieves the value of the public field `ONE_TB_BI`.
#
# + return - The `BigInteger` value of the field.
public function FileUtils_getONE_TB_BI() returns javamath:BigInteger {
    handle externalObj = org_apache_commons_io_FileUtils_getONE_TB_BI();
    javamath:BigInteger newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `ONE_PB`.
#
# + return - The `int` value of the field.
public function FileUtils_getONE_PB() returns int {
    return org_apache_commons_io_FileUtils_getONE_PB();
}

# The function that retrieves the value of the public field `ONE_PB_BI`.
#
# + return - The `BigInteger` value of the field.
public function FileUtils_getONE_PB_BI() returns javamath:BigInteger {
    handle externalObj = org_apache_commons_io_FileUtils_getONE_PB_BI();
    javamath:BigInteger newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `ONE_EB`.
#
# + return - The `int` value of the field.
public function FileUtils_getONE_EB() returns int {
    return org_apache_commons_io_FileUtils_getONE_EB();
}

# The function that retrieves the value of the public field `ONE_EB_BI`.
#
# + return - The `BigInteger` value of the field.
public function FileUtils_getONE_EB_BI() returns javamath:BigInteger {
    handle externalObj = org_apache_commons_io_FileUtils_getONE_EB_BI();
    javamath:BigInteger newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `ONE_ZB`.
#
# + return - The `BigInteger` value of the field.
public function FileUtils_getONE_ZB() returns javamath:BigInteger {
    handle externalObj = org_apache_commons_io_FileUtils_getONE_ZB();
    javamath:BigInteger newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `ONE_YB`.
#
# + return - The `BigInteger` value of the field.
public function FileUtils_getONE_YB() returns javamath:BigInteger {
    handle externalObj = org_apache_commons_io_FileUtils_getONE_YB();
    javamath:BigInteger newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `EMPTY_FILE_ARRAY`.
#
# + return - The `File[]` value of the field.
public function FileUtils_getEMPTY_FILE_ARRAY() returns javaio:File[]|error {
    handle externalObj = org_apache_commons_io_FileUtils_getEMPTY_FILE_ARRAY();
    javaio:File[] newObj = [];
    handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
    int count = anyObj.length();
    foreach int i in 0 ... count - 1 {
        javaio:File[] element = new (anyObj[i]);
        newObj[i] = element;
    }
    return newObj;
}

function org_apache_commons_io_FileUtils_byteCountToDisplaySize(handle arg0) returns handle = @java:Method {
    name: "byteCountToDisplaySize",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.math.BigInteger"]
} external;

function org_apache_commons_io_FileUtils_byteCountToDisplaySize2(int arg0) returns handle = @java:Method {
    name: "byteCountToDisplaySize",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["long"]
} external;

function org_apache_commons_io_FileUtils_checksum(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "checksum",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.util.zip.Checksum"]
} external;

function org_apache_commons_io_FileUtils_checksumCRC32(handle arg0) returns int|error = @java:Method {
    name: "checksumCRC32",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_cleanDirectory(handle arg0) returns error? = @java:Method {
    name: "cleanDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_contentEquals(handle arg0, handle arg1) returns boolean|error = @java:Method {
    name: "contentEquals",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File"]
} external;

function org_apache_commons_io_FileUtils_contentEqualsIgnoreEOL(handle arg0, handle arg1, handle arg2) returns boolean|error = @java:Method {
    name: "contentEqualsIgnoreEOL",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File", "java.lang.String"]
} external;

function org_apache_commons_io_FileUtils_convertFileCollectionToFileArray(handle arg0) returns handle = @java:Method {
    name: "convertFileCollectionToFileArray",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.util.Collection"]
} external;

function org_apache_commons_io_FileUtils_copyDirectory(handle arg0, handle arg1) returns error? = @java:Method {
    name: "copyDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File"]
} external;

function org_apache_commons_io_FileUtils_copyDirectory2(handle arg0, handle arg1, boolean arg2) returns error? = @java:Method {
    name: "copyDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File", "boolean"]
} external;

function org_apache_commons_io_FileUtils_copyDirectory3(handle arg0, handle arg1, handle arg2) returns error? = @java:Method {
    name: "copyDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File", "java.io.FileFilter"]
} external;

function org_apache_commons_io_FileUtils_copyDirectory4(handle arg0, handle arg1, handle arg2, boolean arg3) returns error? = @java:Method {
    name: "copyDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File", "java.io.FileFilter", "boolean"]
} external;

function org_apache_commons_io_FileUtils_copyDirectoryToDirectory(handle arg0, handle arg1) returns error? = @java:Method {
    name: "copyDirectoryToDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File"]
} external;

function org_apache_commons_io_FileUtils_copyFile(handle arg0, handle arg1) returns error? = @java:Method {
    name: "copyFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File"]
} external;

function org_apache_commons_io_FileUtils_copyFile2(handle arg0, handle arg1, boolean arg2) returns error? = @java:Method {
    name: "copyFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File", "boolean"]
} external;

function org_apache_commons_io_FileUtils_copyFile3(handle arg0, handle arg1) returns int|error = @java:Method {
    name: "copyFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.OutputStream"]
} external;

function org_apache_commons_io_FileUtils_copyFileToDirectory(handle arg0, handle arg1) returns error? = @java:Method {
    name: "copyFileToDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File"]
} external;

function org_apache_commons_io_FileUtils_copyFileToDirectory2(handle arg0, handle arg1, boolean arg2) returns error? = @java:Method {
    name: "copyFileToDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File", "boolean"]
} external;

function org_apache_commons_io_FileUtils_copyInputStreamToFile(handle arg0, handle arg1) returns error? = @java:Method {
    name: "copyInputStreamToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.InputStream", "java.io.File"]
} external;

function org_apache_commons_io_FileUtils_copyToFile(handle arg0, handle arg1) returns error? = @java:Method {
    name: "copyToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.InputStream", "java.io.File"]
} external;

function org_apache_commons_io_FileUtils_copyURLToFile(handle arg0, handle arg1) returns error? = @java:Method {
    name: "copyURLToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.net.URL", "java.io.File"]
} external;

function org_apache_commons_io_FileUtils_copyURLToFile2(handle arg0, handle arg1, int arg2, int arg3) returns error? = @java:Method {
    name: "copyURLToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.net.URL", "java.io.File", "int", "int"]
} external;

function org_apache_commons_io_FileUtils_deleteDirectory(handle arg0) returns error? = @java:Method {
    name: "deleteDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_deleteQuietly(handle arg0) returns boolean = @java:Method {
    name: "deleteQuietly",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_directoryContains(handle arg0, handle arg1) returns boolean|error = @java:Method {
    name: "directoryContains",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File"]
} external;

function org_apache_commons_io_FileUtils_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.lang.Object"]
} external;

function org_apache_commons_io_FileUtils_forceDelete(handle arg0) returns error? = @java:Method {
    name: "forceDelete",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_forceDeleteOnExit(handle arg0) returns error? = @java:Method {
    name: "forceDeleteOnExit",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_forceMkdir(handle arg0) returns error? = @java:Method {
    name: "forceMkdir",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_forceMkdirParent(handle arg0) returns error? = @java:Method {
    name: "forceMkdirParent",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: []
} external;

function org_apache_commons_io_FileUtils_getFile(handle arg0, handle arg1) returns handle = @java:Method {
    name: "getFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "[Ljava.lang.String;"]
} external;

function org_apache_commons_io_FileUtils_getFile2(handle arg0) returns handle = @java:Method {
    name: "getFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["[Ljava.lang.String;"]
} external;

function org_apache_commons_io_FileUtils_getTempDirectory() returns handle = @java:Method {
    name: "getTempDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: []
} external;

function org_apache_commons_io_FileUtils_getTempDirectoryPath() returns handle = @java:Method {
    name: "getTempDirectoryPath",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: []
} external;

function org_apache_commons_io_FileUtils_getUserDirectory() returns handle = @java:Method {
    name: "getUserDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: []
} external;

function org_apache_commons_io_FileUtils_getUserDirectoryPath() returns handle = @java:Method {
    name: "getUserDirectoryPath",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: []
} external;

function org_apache_commons_io_FileUtils_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: []
} external;

function org_apache_commons_io_FileUtils_isFileNewer(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "isFileNewer",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.util.Date"]
} external;

function org_apache_commons_io_FileUtils_isFileNewer2(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "isFileNewer",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File"]
} external;

function org_apache_commons_io_FileUtils_isFileNewer3(handle arg0, int arg1) returns boolean = @java:Method {
    name: "isFileNewer",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "long"]
} external;

function org_apache_commons_io_FileUtils_isFileOlder(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "isFileOlder",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.util.Date"]
} external;

function org_apache_commons_io_FileUtils_isFileOlder2(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "isFileOlder",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File"]
} external;

function org_apache_commons_io_FileUtils_isFileOlder3(handle arg0, int arg1) returns boolean = @java:Method {
    name: "isFileOlder",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "long"]
} external;

function org_apache_commons_io_FileUtils_isSymlink(handle arg0) returns boolean|error = @java:Method {
    name: "isSymlink",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_iterateFiles(handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "iterateFiles",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "org.apache.commons.io.filefilter.IOFileFilter", "org.apache.commons.io.filefilter.IOFileFilter"]
} external;

function org_apache_commons_io_FileUtils_iterateFiles2(handle arg0, handle arg1, boolean arg2) returns handle = @java:Method {
    name: "iterateFiles",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "[Ljava.lang.String;", "boolean"]
} external;

function org_apache_commons_io_FileUtils_iterateFilesAndDirs(handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "iterateFilesAndDirs",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "org.apache.commons.io.filefilter.IOFileFilter", "org.apache.commons.io.filefilter.IOFileFilter"]
} external;

function org_apache_commons_io_FileUtils_lineIterator(handle arg0) returns handle|error = @java:Method {
    name: "lineIterator",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_lineIterator2(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "lineIterator",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.String"]
} external;

function org_apache_commons_io_FileUtils_listFiles(handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "listFiles",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "org.apache.commons.io.filefilter.IOFileFilter", "org.apache.commons.io.filefilter.IOFileFilter"]
} external;

function org_apache_commons_io_FileUtils_listFiles2(handle arg0, handle arg1, boolean arg2) returns handle = @java:Method {
    name: "listFiles",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "[Ljava.lang.String;", "boolean"]
} external;

function org_apache_commons_io_FileUtils_listFilesAndDirs(handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "listFilesAndDirs",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "org.apache.commons.io.filefilter.IOFileFilter", "org.apache.commons.io.filefilter.IOFileFilter"]
} external;

function org_apache_commons_io_FileUtils_moveDirectory(handle arg0, handle arg1) returns error? = @java:Method {
    name: "moveDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File"]
} external;

function org_apache_commons_io_FileUtils_moveDirectoryToDirectory(handle arg0, handle arg1, boolean arg2) returns error? = @java:Method {
    name: "moveDirectoryToDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File", "boolean"]
} external;

function org_apache_commons_io_FileUtils_moveFile(handle arg0, handle arg1) returns error? = @java:Method {
    name: "moveFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File"]
} external;

function org_apache_commons_io_FileUtils_moveFileToDirectory(handle arg0, handle arg1, boolean arg2) returns error? = @java:Method {
    name: "moveFileToDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File", "boolean"]
} external;

function org_apache_commons_io_FileUtils_moveToDirectory(handle arg0, handle arg1, boolean arg2) returns error? = @java:Method {
    name: "moveToDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.io.File", "boolean"]
} external;

function org_apache_commons_io_FileUtils_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: []
} external;

function org_apache_commons_io_FileUtils_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: []
} external;

function org_apache_commons_io_FileUtils_openInputStream(handle arg0) returns handle|error = @java:Method {
    name: "openInputStream",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_openOutputStream(handle arg0) returns handle|error = @java:Method {
    name: "openOutputStream",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_openOutputStream2(handle arg0, boolean arg1) returns handle|error = @java:Method {
    name: "openOutputStream",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "boolean"]
} external;

function org_apache_commons_io_FileUtils_readFileToByteArray(handle arg0) returns handle|error = @java:Method {
    name: "readFileToByteArray",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_readFileToString(handle arg0) returns handle|error = @java:Method {
    name: "readFileToString",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_readFileToString2(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "readFileToString",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.nio.charset.Charset"]
} external;

function org_apache_commons_io_FileUtils_readFileToString3(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "readFileToString",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.String"]
} external;

function org_apache_commons_io_FileUtils_readLines(handle arg0) returns handle|error = @java:Method {
    name: "readLines",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_readLines2(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "readLines",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.nio.charset.Charset"]
} external;

function org_apache_commons_io_FileUtils_readLines3(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "readLines",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.String"]
} external;

function org_apache_commons_io_FileUtils_sizeOf(handle arg0) returns int = @java:Method {
    name: "sizeOf",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_sizeOfAsBigInteger(handle arg0) returns handle = @java:Method {
    name: "sizeOfAsBigInteger",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_sizeOfDirectory(handle arg0) returns int = @java:Method {
    name: "sizeOfDirectory",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_sizeOfDirectoryAsBigInteger(handle arg0) returns handle = @java:Method {
    name: "sizeOfDirectoryAsBigInteger",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_toFile(handle arg0) returns handle = @java:Method {
    name: "toFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.net.URL"]
} external;

function org_apache_commons_io_FileUtils_toFiles(handle arg0) returns handle = @java:Method {
    name: "toFiles",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["[Ljava.net.URL;"]
} external;

function org_apache_commons_io_FileUtils_toURLs(handle arg0) returns handle|error = @java:Method {
    name: "toURLs",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["[Ljava.io.File;"]
} external;

function org_apache_commons_io_FileUtils_touch(handle arg0) returns error? = @java:Method {
    name: "touch",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File"]
} external;

function org_apache_commons_io_FileUtils_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: []
} external;

function org_apache_commons_io_FileUtils_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["long"]
} external;

function org_apache_commons_io_FileUtils_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["long", "int"]
} external;

function org_apache_commons_io_FileUtils_waitFor(handle arg0, int arg1) returns boolean = @java:Method {
    name: "waitFor",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "int"]
} external;

function org_apache_commons_io_FileUtils_write(handle arg0, handle arg1) returns error? = @java:Method {
    name: "write",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.CharSequence"]
} external;

function org_apache_commons_io_FileUtils_write2(handle arg0, handle arg1, boolean arg2) returns error? = @java:Method {
    name: "write",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.CharSequence", "boolean"]
} external;

function org_apache_commons_io_FileUtils_write3(handle arg0, handle arg1, handle arg2) returns error? = @java:Method {
    name: "write",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.CharSequence", "java.nio.charset.Charset"]
} external;

function org_apache_commons_io_FileUtils_write4(handle arg0, handle arg1, handle arg2, boolean arg3) returns error? = @java:Method {
    name: "write",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.CharSequence", "java.nio.charset.Charset", "boolean"]
} external;

function org_apache_commons_io_FileUtils_write5(handle arg0, handle arg1, handle arg2) returns error? = @java:Method {
    name: "write",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.CharSequence", "java.lang.String"]
} external;

function org_apache_commons_io_FileUtils_write6(handle arg0, handle arg1, handle arg2, boolean arg3) returns error? = @java:Method {
    name: "write",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.CharSequence", "java.lang.String", "boolean"]
} external;

function org_apache_commons_io_FileUtils_writeByteArrayToFile(handle arg0, handle arg1) returns error? = @java:Method {
    name: "writeByteArrayToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "[B"]
} external;

function org_apache_commons_io_FileUtils_writeByteArrayToFile2(handle arg0, handle arg1, boolean arg2) returns error? = @java:Method {
    name: "writeByteArrayToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "[B", "boolean"]
} external;

function org_apache_commons_io_FileUtils_writeByteArrayToFile3(handle arg0, handle arg1, int arg2, int arg3) returns error? = @java:Method {
    name: "writeByteArrayToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "[B", "int", "int"]
} external;

function org_apache_commons_io_FileUtils_writeByteArrayToFile4(handle arg0, handle arg1, int arg2, int arg3, boolean arg4) returns error? = @java:Method {
    name: "writeByteArrayToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "[B", "int", "int", "boolean"]
} external;

function org_apache_commons_io_FileUtils_writeLines(handle arg0, handle arg1) returns error? = @java:Method {
    name: "writeLines",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.util.Collection"]
} external;

function org_apache_commons_io_FileUtils_writeLines2(handle arg0, handle arg1, boolean arg2) returns error? = @java:Method {
    name: "writeLines",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.util.Collection", "boolean"]
} external;

function org_apache_commons_io_FileUtils_writeLines3(handle arg0, handle arg1, handle arg2) returns error? = @java:Method {
    name: "writeLines",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.util.Collection", "java.lang.String"]
} external;

function org_apache_commons_io_FileUtils_writeLines4(handle arg0, handle arg1, handle arg2, boolean arg3) returns error? = @java:Method {
    name: "writeLines",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.util.Collection", "java.lang.String", "boolean"]
} external;

function org_apache_commons_io_FileUtils_writeLines5(handle arg0, handle arg1, handle arg2) returns error? = @java:Method {
    name: "writeLines",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.String", "java.util.Collection"]
} external;

function org_apache_commons_io_FileUtils_writeLines6(handle arg0, handle arg1, handle arg2, boolean arg3) returns error? = @java:Method {
    name: "writeLines",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.String", "java.util.Collection", "boolean"]
} external;

function org_apache_commons_io_FileUtils_writeLines7(handle arg0, handle arg1, handle arg2, handle arg3) returns error? = @java:Method {
    name: "writeLines",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.String", "java.util.Collection", "java.lang.String"]
} external;

function org_apache_commons_io_FileUtils_writeLines8(handle arg0, handle arg1, handle arg2, handle arg3, boolean arg4) returns error? = @java:Method {
    name: "writeLines",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.String", "java.util.Collection", "java.lang.String", "boolean"]
} external;

function org_apache_commons_io_FileUtils_writeStringToFile(handle arg0, handle arg1) returns error? = @java:Method {
    name: "writeStringToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.String"]
} external;

function org_apache_commons_io_FileUtils_writeStringToFile2(handle arg0, handle arg1, boolean arg2) returns error? = @java:Method {
    name: "writeStringToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.String", "boolean"]
} external;

function org_apache_commons_io_FileUtils_writeStringToFile3(handle arg0, handle arg1, handle arg2) returns error? = @java:Method {
    name: "writeStringToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.String", "java.nio.charset.Charset"]
} external;

function org_apache_commons_io_FileUtils_writeStringToFile4(handle arg0, handle arg1, handle arg2, boolean arg3) returns error? = @java:Method {
    name: "writeStringToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.String", "java.nio.charset.Charset", "boolean"]
} external;

function org_apache_commons_io_FileUtils_writeStringToFile5(handle arg0, handle arg1, handle arg2) returns error? = @java:Method {
    name: "writeStringToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.String", "java.lang.String"]
} external;

function org_apache_commons_io_FileUtils_writeStringToFile6(handle arg0, handle arg1, handle arg2, boolean arg3) returns error? = @java:Method {
    name: "writeStringToFile",
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: ["java.io.File", "java.lang.String", "java.lang.String", "boolean"]
} external;

function org_apache_commons_io_FileUtils_getONE_KB() returns int = @java:FieldGet {
    name: "ONE_KB",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getONE_KB_BI() returns handle = @java:FieldGet {
    name: "ONE_KB_BI",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getONE_MB() returns int = @java:FieldGet {
    name: "ONE_MB",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getONE_MB_BI() returns handle = @java:FieldGet {
    name: "ONE_MB_BI",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getONE_GB() returns int = @java:FieldGet {
    name: "ONE_GB",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getONE_GB_BI() returns handle = @java:FieldGet {
    name: "ONE_GB_BI",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getONE_TB() returns int = @java:FieldGet {
    name: "ONE_TB",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getONE_TB_BI() returns handle = @java:FieldGet {
    name: "ONE_TB_BI",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getONE_PB() returns int = @java:FieldGet {
    name: "ONE_PB",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getONE_PB_BI() returns handle = @java:FieldGet {
    name: "ONE_PB_BI",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getONE_EB() returns int = @java:FieldGet {
    name: "ONE_EB",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getONE_EB_BI() returns handle = @java:FieldGet {
    name: "ONE_EB_BI",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getONE_ZB() returns handle = @java:FieldGet {
    name: "ONE_ZB",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getONE_YB() returns handle = @java:FieldGet {
    name: "ONE_YB",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_getEMPTY_FILE_ARRAY() returns handle = @java:FieldGet {
    name: "EMPTY_FILE_ARRAY",
    'class: "org.apache.commons.io.FileUtils"
} external;

function org_apache_commons_io_FileUtils_newFileUtils1() returns handle = @java:Constructor {
    'class: "org.apache.commons.io.FileUtils",
    paramTypes: []
} external;

