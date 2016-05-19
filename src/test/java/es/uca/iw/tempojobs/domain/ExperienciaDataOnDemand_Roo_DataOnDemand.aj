// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Experiencia;
import es.uca.iw.tempojobs.domain.ExperienciaDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect ExperienciaDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ExperienciaDataOnDemand: @Component;
    
    private Random ExperienciaDataOnDemand.rnd = new SecureRandom();
    
    private List<Experiencia> ExperienciaDataOnDemand.data;
    
    public Experiencia ExperienciaDataOnDemand.getNewTransientExperiencia(int index) {
        Experiencia obj = new Experiencia();
        return obj;
    }
    
    public Experiencia ExperienciaDataOnDemand.getSpecificExperiencia(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Experiencia obj = data.get(index);
        Long id = obj.getId();
        return Experiencia.findExperiencia(id);
    }
    
    public Experiencia ExperienciaDataOnDemand.getRandomExperiencia() {
        init();
        Experiencia obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Experiencia.findExperiencia(id);
    }
    
    public boolean ExperienciaDataOnDemand.modifyExperiencia(Experiencia obj) {
        return false;
    }
    
    public void ExperienciaDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Experiencia.findExperienciaEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Experiencia' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Experiencia>();
        for (int i = 0; i < 10; i++) {
            Experiencia obj = getNewTransientExperiencia(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}