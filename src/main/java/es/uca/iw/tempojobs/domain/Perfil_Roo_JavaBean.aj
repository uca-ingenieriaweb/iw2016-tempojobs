// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Experiencia;
import es.uca.iw.tempojobs.domain.Formacion;
import es.uca.iw.tempojobs.domain.Inscripcion;
import es.uca.iw.tempojobs.domain.Perfil;
import java.util.Set;

privileged aspect Perfil_Roo_JavaBean {
    
    public String Perfil.getSFoto() {
        return this.sFoto;
    }
    
    public void Perfil.setSFoto(String sFoto) {
        this.sFoto = sFoto;
    }
    
    public Set<Experiencia> Perfil.getExperiencias() {
        return this.experiencias;
    }
    
    public void Perfil.setExperiencias(Set<Experiencia> experiencias) {
        this.experiencias = experiencias;
    }
    
    public Set<Formacion> Perfil.getFormaciones() {
        return this.formaciones;
    }
    
    public void Perfil.setFormaciones(Set<Formacion> formaciones) {
        this.formaciones = formaciones;
    }
    
    public Set<Inscripcion> Perfil.getInscripcion() {
        return this.inscripcion;
    }
    
    public void Perfil.setInscripcion(Set<Inscripcion> inscripcion) {
        this.inscripcion = inscripcion;
    }
    
}