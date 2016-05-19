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

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Perfil {

    /**
     */
    @NotNull
    @Size(min = 3, max = 128)
    private String sFoto;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Experiencia> experiencias = new HashSet<Experiencia>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Formacion> formaciones = new HashSet<Formacion>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Inscripcion> inscripcion = new HashSet<Inscripcion>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Puesto> puestos = new HashSet<Puesto>();
}
