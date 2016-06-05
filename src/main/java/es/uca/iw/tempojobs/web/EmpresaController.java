package es.uca.iw.tempojobs.web;
import es.uca.iw.tempojobs.domain.Empresa;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;
import es.uca.iw.tempojobs.domain.EmpresaBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;

@RequestMapping("/empresas")
@Controller
@RooWebScaffold(path = "empresas", formBackingObject = Empresa.class)
@RooWebFinder
@GvNIXWebJpaBatch(service = EmpresaBatchService.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true)
public class EmpresaController {
}
