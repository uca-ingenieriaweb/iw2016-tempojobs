package es.uca.iw.tempojobs.web;
import es.uca.iw.tempojobs.domain.Formacion;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import es.uca.iw.tempojobs.domain.FormacionBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;

@RequestMapping("/formacions")
@Controller
@RooWebScaffold(path = "formacions", formBackingObject = Formacion.class)
@GvNIXWebJpaBatch(service = FormacionBatchService.class)
@GvNIXWebJQuery
public class FormacionController {
}
