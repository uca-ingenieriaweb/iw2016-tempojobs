package es.uca.iw.tempojobs.web;
import es.uca.iw.tempojobs.domain.Puesto;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/puestoes")
@Controller
@RooWebScaffold(path = "puestoes", formBackingObject = Puesto.class)
public class PuestoController {
}
