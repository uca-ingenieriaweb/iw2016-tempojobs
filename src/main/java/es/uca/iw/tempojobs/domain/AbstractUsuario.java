package es.uca.iw.tempojobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public abstract class AbstractUsuario {

    /**
     */
    @Size(min = 3, max = 32)
    private String sNombre;

    /**
     */
    @NotNull
    @Size(min = 3, max = 64)
    private String sApellidos;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fFechaNac;

    /**
     */
    @NotNull
    @Size(min = 3, max = 128)
    private String sDireccion;

    /**
     */
    @NotNull
    @Size(min = 6, max = 128)
    private String sEmail;

    /**
     */
    @NotNull
    @Size(min = 9, max = 16)
    private String sTelefono;
}
