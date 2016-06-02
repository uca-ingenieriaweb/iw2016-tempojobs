package es.uca.iw.tempojobs.domain;
import org.gvnix.addon.jpa.annotations.batch.GvNIXJpaBatch;
import org.springframework.stereotype.Service;

@Service
@GvNIXJpaBatch(entity = Admin.class)
public class AdminBatchService {
}
