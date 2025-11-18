public class ServeurDeNom {
    public static void main(String[] args) {
        try {
            // This starts the ORB daemon in a separate process. On many JDKs this is
            // provided by 'orbd'.
            // Adjust the path to 'orbd' if necessary on Windows. Example shell command:
            // orbd -ORBInitialPort 5000 -ORBInitialHost localhost

            String[] cmd = new String[] { "orbd", "-ORBInitialPort", "5000", "-ORBInitialHost", "localhost" };
            System.out.println("Starting orbd (Name Service) ...");
            java.lang.Runtime.getRuntime().exec(cmd);
            System.out.println("orbd started (check its console). This program will exit; keep orbd running.");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
