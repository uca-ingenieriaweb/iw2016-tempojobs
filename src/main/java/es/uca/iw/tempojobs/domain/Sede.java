package es.uca.iw.tempojobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.beans.factory.annotation.Value;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Sede {

    /**
     */
    @NotNull
    @Size(min = 3, max = 16)
    private String nombre;

    /**
     */
    @NotNull
    @Size(min = 3, max = 128)
    private String direccion;

    /**
     */
    @NotNull
    @Size(min = 3, max = 64)
    private String localidad;

    /**
     */
    @NotNull
    @Size(min = 3, max = 16)
    private String provincia;

    /**
     */
    @NotNull
    @Value("España")
    @Size(min = 3, max = 32)
    private String pais;

    /**
     */
    @NotNull
    @Size(min = 9, max = 16)
    private String telefono;
}
