import org.omg.CORBA.ORB;
import org.omg.PortableServer.POA;
import org.omg.PortableServer.POAHelper;
import org.omg.CosNaming.NamingContextExt;
import org.omg.CosNaming.NamingContextExtHelper;
import eniso.*;

public class Serveur {
    public static void main(String[] args) {
        try {
            // Initialize the ORB
            ORB orb = ORB.init(args, null);

            // Get reference to RootPOA and activate the POAManager
            POA rootpoa = POAHelper.narrow(orb.resolve_initial_references("RootPOA"));
            rootpoa.the_POAManager().activate();

            // Get the naming service
            NamingContextExt nameServer = NamingContextExtHelper.narrow(orb.resolve_initial_references("NameService"));

            // Create servant and register it with the ORB
            CalcImpl calcImpl = new CalcImpl();
            calcImpl.setORB(orb);

            org.omg.CORBA.Object ref = rootpoa.servant_to_reference(calcImpl);
            Calc calc = CalcHelper.narrow(ref);

            // Bind the object in the Naming Service
            nameServer.rebind(nameServer.to_name("MyCalc"), calc);

            System.out.println("Serveur: Calc bound as 'MyCalc' and waiting...");
            // Wait for invocations from clients
            orb.run();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
