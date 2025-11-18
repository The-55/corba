@echo off
echo ========================================
echo Downloading CORBA libraries for Java 11+
echo ========================================
echo.

if not exist lib mkdir lib

echo [1/4] Downloading glassfish-corba-orb.jar...
powershell -Command "$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://repo1.maven.org/maven2/org/glassfish/corba/glassfish-corba-orb/4.2.4/glassfish-corba-orb-4.2.4.jar' -OutFile 'lib\glassfish-corba-orb.jar'"
if exist lib\glassfish-corba-orb.jar (echo    Success!) else (echo    Failed!)

echo [2/4] Downloading glassfish-corba-omgapi.jar...
powershell -Command "$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://repo1.maven.org/maven2/org/glassfish/corba/glassfish-corba-omgapi/4.2.4/glassfish-corba-omgapi-4.2.4.jar' -OutFile 'lib\glassfish-corba-omgapi.jar'"
if exist lib\glassfish-corba-omgapi.jar (echo    Success!) else (echo    Failed!)

echo [3/4] Downloading pfl-basic.jar...
powershell -Command "$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://repo1.maven.org/maven2/org/glassfish/pfl/pfl-basic/4.1.2/pfl-basic-4.1.2.jar' -OutFile 'lib\pfl-basic.jar'"
if exist lib\pfl-basic.jar (echo    Success!) else (echo    Failed!)

echo [4/4] Downloading pfl-tf.jar...
powershell -Command "$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://repo1.maven.org/maven2/org/glassfish/pfl/pfl-tf/4.1.2/pfl-tf-4.1.2.jar' -OutFile 'lib\pfl-tf.jar'"
if exist lib\pfl-tf.jar (echo    Success!) else (echo    Failed!)

echo.
echo ========================================
echo Download complete!
echo ========================================
echo.
dir /B lib
echo.
pause

