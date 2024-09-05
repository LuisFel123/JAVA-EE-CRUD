/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.proyectonuevo.persistencia;

import com.mycompany.proyectonuevo.logica.Usuario;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author luis
 */
public class ControladorPersistencia {

    UsuarioJpaController usujpa = new UsuarioJpaController();

    public void crearUsuario(Usuario usuario) {
        usujpa.create(usuario);
    }
    
   public ArrayList<Usuario> traerUsuarios() {
        List<Usuario> listita= usujpa.findUsuarioEntities();
        ArrayList <Usuario> lista2= new ArrayList <Usuario>(listita);
        return lista2;
    }
}
