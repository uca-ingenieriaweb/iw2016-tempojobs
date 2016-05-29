package es.uca.iw.tempojobs.web;
import es.uca.iw.tempojobs.domain.UsuarioEmpresa;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import es.uca.iw.tempojobs.domain.UsuarioEmpresaBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;

@RequestMapping("/usuarioempresas")
@Controller
@RooWebScaffold(path = "usuarioempresas", formBackingObject = UsuarioEmpresa.class)
@GvNIXWebJpaBatch(service = UsuarioEmpresaBatchService.class)
@GvNIXWebJQuery
public class UsuarioEmpresaController {
}
