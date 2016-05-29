package es.uca.iw.tempojobs.web;
import es.uca.iw.tempojobs.domain.Sede;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import es.uca.iw.tempojobs.domain.SedeBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;

@RequestMapping("/sedes")
@Controller
@RooWebScaffold(path = "sedes", formBackingObject = Sede.class)
@GvNIXWebJpaBatch(service = SedeBatchService.class)
@GvNIXWebJQuery
public class SedeController {
}
