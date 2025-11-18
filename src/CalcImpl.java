import org.omg.CORBA.*;
import org.omg.PortableServer.*;
import eniso.*;

/**
 * Implementation of the CORBA Calc servant.
 * This class expects IDL-generated classes (CalcPOA, DivByZeroException,
 * CalcHelper) to be generated
 * by running: idlj -fall calc.idl -d src
 */
public class CalcImpl extends CalcPOA {
    private ORB orb;

    public void setORB(ORB orb_val) {
        orb = orb_val;
    }

    @Override
    public int div(int a, int b) throws DivByZeroException {
        if (b == 0) {
            System.out.println("Attempted division by zero: " + a + "/" + b);
            throw new DivByZeroException("Division par zero");
        }
        int r = a / b;
        System.out.println("div(" + a + "," + b + ") = " + r);
        return r;
    }
}
