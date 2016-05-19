package es.uca.iw.tempojobs.web;
import es.uca.iw.tempojobs.domain.Empleado;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/empleadoes")
@Controller
@RooWebScaffold(path = "empleadoes", formBackingObject = Empleado.class)
public class EmpleadoController {
}
