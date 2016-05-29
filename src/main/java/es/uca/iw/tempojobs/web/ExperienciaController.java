package es.uca.iw.tempojobs.web;
import es.uca.iw.tempojobs.domain.Experiencia;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;
import es.uca.iw.tempojobs.domain.ExperienciaBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;

@RequestMapping("/experiencias")
@Controller
@RooWebScaffold(path = "experiencias", formBackingObject = Experiencia.class)
@RooWebFinder
@GvNIXWebJpaBatch(service = ExperienciaBatchService.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true)
public class ExperienciaController {
}
