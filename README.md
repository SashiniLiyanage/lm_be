# lm_be

Before running the modules create a file named config.toml in the root directory and add the following and provide the values:

DBhost= 
DBuser= 
DBpassword= 
DBname= 
DBport=


Navigate to the TraversePack directory and issue the following commands:  
`mvn clean install` 

`bal bindgen -mvn TraversePack:TraversePack:1.0-SNAPSHOT java.io.FileInputStream java.util.ArrayList java.util.Arrays java.util.List java.util.Stack java.util.UUID java.util.jar.Attributes java.util.jar.Manifest java.util.zip.ZipInputStream org.apache.commons.io.FileUtils java.io.BufferedOutputStream java.io.FileOutputStream java.io.InputStream java.io.OutputStream java.io.IOException java.util.Enumeration java.util.zip.ZipEntry java.util.zip.ZipFile` 

To run the module, navigate to the root directory of ballerina project and issue the following command:  

`bal build`   
`bal run .\target\bin\backend.jar`