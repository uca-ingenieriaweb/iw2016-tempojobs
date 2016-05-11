package es.uca.iw.tempojobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;
import javax.persistence.OneToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Empresa {

    /**
     * Nombre
     */
    @Size(min = 3, max = 32)
    private String sNombre;

    /**
     * CIF
     */
    @NotNull
    @Size(min = 9, max = 16)
    private String sCIF;

    /**
     * Actividad Profesional
     */
    @NotNull
    @Size(min = 3, max = 64)
    private String sActividadProfesional;

    /**
     * Número de Empleados
     */
    @NotNull
    private Integer iEmpleados;

    /**
     */
    @OneToOne
    private Empresa UsuarioEmpresa;
}
