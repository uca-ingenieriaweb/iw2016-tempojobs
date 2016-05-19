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

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Oferta {

    /**
     */
    @NotNull
    @Size(min = 3, max = 32)
    private String sTipoContrato;

    /**
     */
    @NotNull
    private Double dSueldoBruto;

    /**
     */
    @NotNull
    private Integer iVacantes;

    /**
     */
    @NotNull
    @Size(min = 3, max = 256)
    private String sFormacion;

    /**
     */
    @NotNull
    @Size(min = 3, max = 64)
    private String sExperiencia;

    /**
     */
    @NotNull
    @Size(min = 3, max = 32)
    private String sEstado;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fInicioActividad;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fFechaInicio;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fFechaFin;
}
