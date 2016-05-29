package es.uca.iw.tempojobs.web;
import es.uca.iw.tempojobs.domain.Empleado;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import es.uca.iw.tempojobs.domain.EmpleadoBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;

@RequestMapping("/empleadoes")
@Controller
@RooWebScaffold(path = "empleadoes", formBackingObject = Empleado.class)
@GvNIXWebJpaBatch(service = EmpleadoBatchService.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true, mode = "show")
public class EmpleadoController {
}
