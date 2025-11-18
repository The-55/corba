@echo off
echo Downloading GlassFish CORBA ORB for Java 11+...
echo.

cd lib

echo Downloading glassfish-corba-orb...
curl -L -o glassfish-corba-orb.jar "https://repo1.maven.org/maven2/org/glassfish/corba/glassfish-corba-orb/4.2.4/glassfish-corba-orb-4.2.4.jar"

echo Downloading glassfish-corba-omgapi...
curl -L -o glassfish-corba-omgapi.jar "https://repo1.maven.org/maven2/org/glassfish/corba/glassfish-corba-omgapi/4.2.4/glassfish-corba-omgapi-4.2.4.jar"

echo Downloading pfl-basic...
curl -L -o pfl-basic.jar "https://repo1.maven.org/maven2/org/glassfish/pfl/pfl-basic/4.1.2/pfl-basic-4.1.2.jar"

echo Downloading pfl-tf...
curl -L -o pfl-tf.jar "https://repo1.maven.org/maven2/org/glassfish/pfl/pfl-tf/4.1.2/pfl-tf-4.1.2.jar"

cd ..

echo.
echo ========================================
echo CORBA libraries downloaded successfully!
echo ========================================
echo.
echo Next steps:
echo 1. Recompile the project with: compile.bat
echo 2. Start naming service with: start-nameserver.bat
echo 3. Start server with: start-server.bat
echo 4. Run client with: run-client.bat
echo.
pause

