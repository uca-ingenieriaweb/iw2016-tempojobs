package es.uca.iw.tempojobs.domain;
import org.gvnix.addon.jpa.annotations.batch.GvNIXJpaBatch;
import org.springframework.stereotype.Service;

@Service
@GvNIXJpaBatch(entity = Empresa.class)
public class EmpresaBatchService {
}
