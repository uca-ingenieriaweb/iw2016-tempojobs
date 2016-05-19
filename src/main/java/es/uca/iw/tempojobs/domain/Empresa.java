package es.uca.iw.tempojobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Empresa extends AbstractUsuario {

    /**
     */
    @Size(min = 3, max = 32)
    private String sTitulo;

    /**
     */
    @NotNull
    @Size(min = 9, max = 16)
    private String sCIF;

    /**
     */
    @NotNull
    @Size(min = 3, max = 64)
    private String sActividadProfesional;

    /**
     */
    @NotNull
    private Integer iEmpleados;
}