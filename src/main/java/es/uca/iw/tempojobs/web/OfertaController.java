package es.uca.iw.tempojobs.web;
import es.uca.iw.tempojobs.domain.Oferta;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;
import es.uca.iw.tempojobs.domain.OfertaBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;

@RequestMapping("/ofertas")
@Controller
@RooWebScaffold(path = "ofertas", formBackingObject = Oferta.class)
@RooWebFinder
@GvNIXWebJpaBatch(service = OfertaBatchService.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true)
public class OfertaController {
}
