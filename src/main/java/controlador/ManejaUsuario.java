package controlador;

import modelo.*;
import org.hibernate.*;
import java.util.List;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author usuario
 */
public class ManejaUsuario {

    private Session sesion;
    private Transaction tran;

    public ManejaUsuario() {

    }

    public void inicioOperacion() throws HibernateException {
        sesion = HibernateUtil.getSessionFactory().openSession();
        tran = sesion.beginTransaction();
        System.out.println("Operacion iniciada.");
    }

    /**
     * Almacena un nuevo usuario en la aplición.
     *
     * @param usuario
     */
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

    /**
     * Almacena en la BD una cuenta de usuario.
     *
     * @param cuenta
     */
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

    /**
     * Obtiene un usuario en concreto.
     *
     * @param id
     * @return
     */
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

    /**
     * Obtiene un usuario en concreto.
     *
     * @param nombre
     * @return
     */
    public Usuarios obtenUsuario(String nombre) {
        try {
            inicioOperacion();
            Criteria cr = sesion.createCriteria(Usuarios.class);
            cr.add(Restrictions.eq("nombreInicio", nombre));
            List results = cr.list();
            Usuarios u = new Usuarios();
            u = (Usuarios) results.get(0);
            return u;
        } catch (HibernateException he) {
            throw he;
        } finally {
            finalizaOperacion();
        }
    }
    
    public Boolean login(String nombre, String password){
        try {
            inicioOperacion();
            String queryString = "SELECT * FROM usuarios u WHERE u.nombreInicio='" + nombre + "' AND u.passInicio='" + password + "'";
            Query query = sesion.createSQLQuery(queryString);
            List<Object[]> cuentas = query.list();
            if(cuentas.isEmpty()){
                return false;
            }else{
                return true;
            }
        } catch (HibernateException he) {
            throw he;
        } finally {
            finalizaOperacion();
        }
    }
    /**
     * Obtiene todas las cuentas almacenadas de un usuario.
     *
     * @param idUsuario
     */
    public List<Object[]> obtenCuentas(Integer idUsuario) {
        try {
            inicioOperacion();
            String queryString = "SELECT * FROM cuentas c WHERE c.usuario='" + idUsuario + "'";
            Query query = sesion.createSQLQuery(queryString);
            List<Object[]> cuentas = query.list();
            return cuentas;
        } catch (HibernateException he) {
            throw he;
        } finally {
            finalizaOperacion();
        }
    }

    /**
     * Obtiene una cuenta en concreto almacenada de un usuario.
     *
     * @param nombre
     */
    public Cuentas obtenCuenta(String nombre) {
        try {
            inicioOperacion();
            Criteria cr = sesion.createCriteria(Cuentas.class);
            cr.add(Restrictions.eq("nombre", nombre));
            List results = cr.list();
            Cuentas c = new Cuentas();
            c = (Cuentas) results.get(0);
            return c;
        } catch (HibernateException he) {
            throw he;
        } finally {
            finalizaOperacion();
        }
    }

    /**
     * Elimina un usuario de la BD.
     *
     * @param usuario
     */
    public void eliminaUsuario(Usuarios usuario) {
        try {
            inicioOperacion();
            sesion.delete(usuario);
            System.out.println("usuario eliminado correctamente");
        } catch (HibernateException he) {
            throw he;
        } finally {
            finalizaOperacion();
        }
    }

    /**
     * Elimina una cuenta de un usuario en concreto de la BD.
     *
     * @param cuenta
     */
    public void eliminaCuenta(Cuentas cuenta) {
        try {
            inicioOperacion();
            sesion.delete(cuenta);
            System.out.println("Cuenta eliminada correctamente");
        } catch (HibernateException he) {
            throw he;
        } finally {
            finalizaOperacion();
        }
    }

    /**
     * Modificar un usuario.
     *
     * @param usuario
     */
    public void modificarUsuario(Usuarios usuario) {
        try {
            inicioOperacion();
            sesion.update(usuario);
            System.out.println("Usuario actualizado correctamente");
        } catch (HibernateException he) {
            throw he;
        } finally {
            finalizaOperacion();
        }
    }

    public void finalizaOperacion() {
        tran.commit();
        sesion.close();
        System.out.println("Operacion finalizada.");
    }
}
