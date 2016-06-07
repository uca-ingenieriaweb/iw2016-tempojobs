package es.uca.iw.tempojobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Demandante extends AbstractUsuario {

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "demandante")
    private Set<Perfil> perfiles = new HashSet<Perfil>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "demandante")
    private Set<Formacion> formaciones = new HashSet<Formacion>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "demandante")
    private Set<Experiencia> experiencias = new HashSet<Experiencia>();
}
