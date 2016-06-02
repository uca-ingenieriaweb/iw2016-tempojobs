// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Experiencia;
import es.uca.iw.tempojobs.domain.Inscripcion;
import es.uca.iw.tempojobs.domain.Perfil;
import es.uca.iw.tempojobs.domain.Puesto;
import java.util.Set;

privileged aspect Perfil_Roo_JavaBean {
    
    public String Perfil.getFoto() {
        return this.foto;
    }
    
    public void Perfil.setFoto(String foto) {
        this.foto = foto;
    }
    
    public Set<Inscripcion> Perfil.getInscripciones() {
        return this.inscripciones;
    }
    
    public void Perfil.setInscripciones(Set<Inscripcion> inscripciones) {
        this.inscripciones = inscripciones;
    }
    
    public Set<Puesto> Perfil.getPuestos() {
        return this.puestos;
    }
    
    public void Perfil.setPuestos(Set<Puesto> puestos) {
        this.puestos = puestos;
    }
    
    public Set<Experiencia> Perfil.getExperiencias() {
        return this.experiencias;
    }
    
    public void Perfil.setExperiencias(Set<Experiencia> experiencias) {
        this.experiencias = experiencias;
    }
    
}