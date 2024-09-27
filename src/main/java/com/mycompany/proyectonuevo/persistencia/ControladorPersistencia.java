/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.proyectonuevo.persistencia;

import com.mycompany.proyectonuevo.logica.Usuario;
import com.mycompany.proyectonuevo.persistencia.exceptions.NonexistentEntityException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

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
        List<Usuario> listita = usujpa.findUsuarioEntities();
        ArrayList<Usuario> lista2 = new ArrayList<Usuario>(listita);
        return lista2;
    }

    /*

    public void eliminarUsuario(int id) {

        try {
            usujpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            System.err.print(ex);
        }
    }
     */
    public void borrarUsuarios(int idEliminar) {
        try {
            usujpa.destroy(idEliminar);
        } catch (NonexistentEntityException ex) {
            System.err.print(ex + "      Error al eliminar ");
        }
    }

    public Usuario traerUsuarioOtro(int id_editar) {
       return  usujpa.findUsuario(id_editar);
    }

    public void editarUsuario(Usuario usu) {
        try {
            usujpa.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(ControladorPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
