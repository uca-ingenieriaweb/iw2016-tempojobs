package es.uca.iw.tempojobs.web;
import es.uca.iw.tempojobs.domain.Inscripcion;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import es.uca.iw.tempojobs.domain.InscripcionBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;

@RequestMapping("/inscripcions")
@Controller
@RooWebScaffold(path = "inscripcions", formBackingObject = Inscripcion.class)
@GvNIXWebJpaBatch(service = InscripcionBatchService.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true, mode = "show")
public class InscripcionController {
}
