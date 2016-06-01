package es.uca.iw.tempojobs.web;
import es.uca.iw.tempojobs.domain.Sede;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;
import es.uca.iw.tempojobs.domain.SedeBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;

@RequestMapping("/sedes")
@Controller
@RooWebScaffold(path = "sedes", formBackingObject = Sede.class)
@RooWebFinder
@GvNIXWebJpaBatch(service = SedeBatchService.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true)
public class SedeController {
}
