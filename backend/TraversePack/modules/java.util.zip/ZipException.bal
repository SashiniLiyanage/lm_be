// Ballerina error type for `java.util.zip.ZipException`.

public const ZIPEXCEPTION = "ZipException";

type ZipExceptionData record {
    string message;
};

public type ZipException distinct error<ZipExceptionData>;

