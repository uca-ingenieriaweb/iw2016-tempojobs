package es.uca.iw.tempojobs.web;
import es.uca.iw.tempojobs.domain.Puesto;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import es.uca.iw.tempojobs.domain.PuestoBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;

@RequestMapping("/puestoes")
@Controller
@RooWebScaffold(path = "puestoes", formBackingObject = Puesto.class)
@GvNIXWebJpaBatch(service = PuestoBatchService.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true)
public class PuestoController {
}
