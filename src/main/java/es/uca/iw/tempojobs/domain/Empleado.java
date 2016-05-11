package es.uca.iw.tempojobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Empleado {

    /**
     * Fecha comienzo
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fInicio;

    /**
     * Fecha finalización
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fFinal;

    /**
     * Puesto
     */
    @NotNull
    @Size(min = 3, max = 32)
    private String sPuesto;
}
