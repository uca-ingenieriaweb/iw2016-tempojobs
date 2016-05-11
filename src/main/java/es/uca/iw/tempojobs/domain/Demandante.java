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
import javax.persistence.OneToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Demandante {

    /**
     * Nombre
     */
    @Size(min = 3, max = 32)
    private String sNombre;

    /**
     * Apellidos
     */
    @NotNull
    @Size(min = 3, max = 64)
    private String sApellidos;

    /**
     * Fecha de Nacimiento
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fFechaNac;

    /**
     * Dirección
     */
    @NotNull
    @Size(min = 3, max = 128)
    private String sDireccion;

    /**
     * Email
     */
    @NotNull
    @Size(min = 6, max = 128)
    private String sEmail;

    /**
     * Teléfono
     */
    @NotNull
    @Size(min = 9, max = 16)
    private String sTelefono;

    /**
     */
    @OneToOne
    private Demandante UsuarioDemandante;
}
