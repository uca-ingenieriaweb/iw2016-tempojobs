package es.uca.iw.tempojobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Inscripcion {

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fechaInscripcion;

    /**
     */
    @ManyToOne
    private Oferta oferta;

    /**
     */
    @ManyToOne
    private Perfil perfil;
}
