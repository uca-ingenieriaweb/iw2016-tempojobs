package es.uca.iw.tempojobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Oferta {

    /**
     */
    @NotNull
    @Size(min = 3, max = 32)
    private String tipoContrato;

    /**
     */
    @NotNull
    private Double sueldoBruto;

    /**
     */
    @NotNull
    private Integer vacantes;

    /**
     */
    @NotNull
    @Size(min = 3, max = 256)
    private String formacion;

    /**
     */
    @NotNull
    @Size(min = 3, max = 64)
    private String experiencia;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date inicioActividad;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fechaInicio;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fechaFin;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Inscripcion> inscripciones = new HashSet<Inscripcion>();

    /**
     */
    @ManyToOne
    private Empresa empresa;
}
