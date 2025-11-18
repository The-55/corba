@echo off
setlocal

REM Set the classpath with all CORBA libraries
set CP=lib\glassfish-corba-orb.jar;lib\glassfish-corba-omgapi.jar;lib\pfl-basic.jar;lib\pfl-tf.jar

echo Recompiling project with CORBA libraries...
echo.

REM Clean bin directory
if exist bin\*.class del /Q bin\*.class
if exist bin\eniso\*.class del /Q bin\eniso\*.class

REM Compile all source files
javac -cp "%CP%" -d bin src\*.java src\eniso\*.java

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo Compilation successful!
    echo ========================================
) else (
    echo.
    echo ========================================
    echo Compilation failed! Check errors above.
    echo ========================================
)

pause

