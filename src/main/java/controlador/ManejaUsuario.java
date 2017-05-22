package controlador;

import modelo.*;
import org.hibernate.*;
import java.util.List;
import org.hibernate.criterion.Restrictions;
/**
 *
 * @author usuario
 */
public class ManejaUsuario {
    private Session sesion;
    private Transaction tran;
    public ManejaUsuario()
    {
        
    }
    public void inicioOperacion() throws HibernateException
    {
        sesion=HibernateUtil.getSessionFactory().openSession();
        tran=sesion.beginTransaction();
        System.out.println("Operacion iniciada.");
    }
    public void guardaExperto(Usuarios usuario){
        try {
            inicioOperacion();
            sesion.save(usuario);
            System.out.println("usuario insertado correctamente");
        } catch (HibernateException he) {
            throw he;
        } finally {
            finalizaOperacion();
        }
    }    
    
    public void guardaUsuario(Usuarios usuario) {
        try {
            inicioOperacion();
            sesion.save(usuario);
            System.out.println("usuario insertado correctamente");
        } catch (HibernateException he) {
            throw he;
        } finally {
            finalizaOperacion();
        }
    }

    public void guardaCuenta(Cuentas cuenta) {
        try {
            inicioOperacion();
            sesion.save(cuenta);
            System.out.println("cuenta insertada correctamente");
        } catch (HibernateException he) {
            throw he;
        } finally {
            finalizaOperacion();
        }
    }

    public Usuarios obtenUsuario(Integer id) {
        try {
            inicioOperacion();
            return (Usuarios) sesion.get(Usuarios.class, id);
        } catch (HibernateException he) {
            throw he;
        } finally {
            finalizaOperacion();
        }
    }

    public void obtenCuentas(Integer idUsuario) {
        try {
            inicioOperacion();
            String queryString = "SELECT * FROM cuentas c WHERE c.usuario='" + idUsuario + "'";
            Query query = sesion.createSQLQuery(queryString);
            List<Object[]> cuentas = query.list();
            for (int i = 0; i < cuentas.size(); i++) {
                System.out.println("Cuenta: " + cuentas.get(i)[2]);
            }
        } catch (HibernateException he) {
            throw he;
        } finally {
            finalizaOperacion();
        }
    }
    public void finalizaOperacion(){
        tran.commit();
        sesion.close();    
        System.out.println("Operacion finalizada.");
    }
}
