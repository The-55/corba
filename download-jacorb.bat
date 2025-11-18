@echo off
echo This project requires CORBA support which is not available in Java 11+
echo.
echo === SOLUTION OPTIONS ===
echo.
echo Option 1: Install Java 8 (Easiest)
echo   - Download from: https://www.oracle.com/java/technologies/javase/javase8-archive-downloads.html
echo   - Or use AdoptOpenJDK 8: https://adoptium.net/temurin/releases/?version=8
echo   - Set JAVA_HOME to Java 8 and add to PATH
echo.
echo Option 2: Use JacORB (for modern Java)
echo   - Download JacORB from: https://www.jacorb.org/
echo   - Extract and add jacorb.jar to classpath
echo   - Use jacorb's naming service instead of orbd
echo.
echo Option 3: Use GlassFish ORB
echo   - This is more complex and requires additional setup
echo.
pause

