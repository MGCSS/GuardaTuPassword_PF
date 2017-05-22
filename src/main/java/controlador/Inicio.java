/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.util.List;
import modelo.*;
//import static java.lang.Thread.sleep;
//import java.sql.Time;

/**
 *
 * @author usuario
 */
public class Inicio {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws InterruptedException {
        ManejaUsuario mu = new ManejaUsuario();
        //Usuarios usuario = new Usuarios("pepe", "pepe"); 
        //mu.guardaUsuario(usuario); 

        //Cuentas cuenta = new Cuentas(usuario, "cuenta1", "cuenta1pass", "Cuenta de pruebas de Pepe"); 
        //mu.guardaCuenta(cuenta); 
        Usuarios usuario1 = new Usuarios();
        usuario1 = mu.obtenUsuario("pepe");
        System.out.println("ID: " + usuario1.getIdInicio() + ", NOMBRE: " + usuario1.getNombreInicio() + ", PASSWORD: " + usuario1.getPassInicio());

        //mu.eliminaUsuario(usuario1);
        //usuario1.setPassInicio("newpass");
        //mu.modificarUsuario(usuario1);
        /*List<Object[]> r = mu.obtenCuentas(usuario1.getIdInicio());
        for (int i = 0; i < r.size(); i++) {
            System.out.println(r.get(i)[2]);
        }*/
        
        Cuentas c = new Cuentas();
        System.out.println(mu.obtenCuenta("cuenta1").getDescripcion());

    }

}
