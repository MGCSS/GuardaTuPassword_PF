/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controlador;

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
        // TODO code application logic here
        /*Time time = new Time(System.currentTimeMillis());
        long inicio=time.getTime();
        sleep(2505);
        Time tfinal=new Time(System.currentTimeMillis());
        long mfinal=tfinal.getTime();
        System.out.println(mfinal-inicio);*/
        ManejaUsuario me=new ManejaUsuario();
        Usuarios usuario = new Usuarios("drap", "pass");
        me.guardaExperto(usuario);
    }
    
}
