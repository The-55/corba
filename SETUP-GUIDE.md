# CORBA Calculator Project - Java 22 Compatible

This project is configured to work with Java 22 using GlassFish CORBA libraries.

## Setup Instructions (One-time)

### Step 1: Download CORBA Libraries
Run this command to download the required CORBA libraries:
```bash
./download-libs.bat
```

This will download 4 JAR files into the `lib/` directory:
- glassfish-corba-orb.jar
- glassfish-corba-omgapi.jar
- pfl-basic.jar
- pfl-tf.jar

### Step 2: Compile the Project
```bash
./compile.bat
```

This compiles all Java source files with the CORBA libraries in the classpath.

## Running the Application

You need to run 3 separate terminals in this order:

### Terminal 1: Start the Naming Service
```bash
./start-nameserver.bat
```

This starts the CORBA naming service on port 1050. Keep this terminal open.

### Terminal 2: Start the Server
```bash
./start-server.bat
```

This registers the Calc object with the naming service. Keep this terminal open.

### Terminal 3: Run the Client
```bash
./run-client.bat
```

This calls the remote `div(30, 3)` method and displays the result.

## Expected Output

**Server Terminal:**
```
Serveur: Calc bound as 'MyCalc' and waiting...
div(30,3) = 10
```

**Client Terminal:**
```
Client: result = 10
```

## Project Structure

- `calc.idl` - CORBA IDL interface definition
- `src/` - Java source files
  - `CalcImpl.java` - Implementation of the Calc interface
  - `Serveur.java` - Server that registers the Calc object
  - `Client.java` - Client that calls the remote method
  - `eniso/` - Generated CORBA stubs and skeletons
- `bin/` - Compiled class files
- `lib/` - CORBA libraries (created after running download-libs.bat)

## Troubleshooting

If you get "command not found" or class loading errors:
1. Make sure you ran `download-libs.bat` first
2. Make sure you compiled with `compile.bat`
3. Make sure the naming service is running before starting the server
4. Make sure both naming service and server are running before running the client

## Notes

- This project uses GlassFish CORBA 4.2.4 which is compatible with Java 11+
- The naming service runs on port 1050 (instead of the traditional 900 or 5000)
- No need to install Java 8 - everything works with your current Java 22!

