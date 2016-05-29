package es.uca.iw.tempojobs.web;
import es.uca.iw.tempojobs.domain.Experiencia;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import es.uca.iw.tempojobs.domain.ExperienciaBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;

@RequestMapping("/experiencias")
@Controller
@RooWebScaffold(path = "experiencias", formBackingObject = Experiencia.class)
@GvNIXWebJpaBatch(service = ExperienciaBatchService.class)
@GvNIXWebJQuery
public class ExperienciaController {
}
