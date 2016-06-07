package es.uca.iw.tempojobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Perfil {

    /**
     */
    @NotNull
    @Size(min = 3, max = 16)
    private String nombre;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "perfil")
    private Set<Inscripcion> inscripciones = new HashSet<Inscripcion>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Puesto> puestos = new HashSet<Puesto>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "perfil")
    private Set<Experiencia> experiencias = new HashSet<Experiencia>();

    /**
     */
    @ManyToOne
    private Demandante demandante;
}
