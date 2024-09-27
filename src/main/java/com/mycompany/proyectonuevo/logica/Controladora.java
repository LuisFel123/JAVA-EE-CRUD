/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.proyectonuevo.logica;

import com.mycompany.proyectonuevo.persistencia.ControladorPersistencia;
import java.util.ArrayList;

/**
 *
 * @author luis
 */
public class Controladora {
    
    ControladorPersistencia usuarioPer = new ControladorPersistencia();
    
    public void crearUsuario(Usuario usuario) {
        usuarioPer.crearUsuario(usuario);
    }
    
    public ArrayList<Usuario> traerUsuarios() {
        return usuarioPer.traerUsuarios();
    }
    
    public void eliminarUsuario(int idEliminar) {
        usuarioPer.borrarUsuarios(idEliminar);
    }
    
    public Usuario traerUsuario(int id_editar) {
        return usuarioPer.traerUsuarioOtro(id_editar);
    }

    public void editarUsuario(Usuario usu) {
        usuarioPer.editarUsuario(usu);
    }
    
}
