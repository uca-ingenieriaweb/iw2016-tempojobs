// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Sede;
import es.uca.iw.tempojobs.domain.SedeDataOnDemand;
import es.uca.iw.tempojobs.domain.SedeIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SedeIntegrationTest_Roo_IntegrationTest {
    
    declare @type: SedeIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: SedeIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: SedeIntegrationTest: @Transactional;
    
    @Autowired
    SedeDataOnDemand SedeIntegrationTest.dod;
    
    @Test
    public void SedeIntegrationTest.testCountSedes() {
        Assert.assertNotNull("Data on demand for 'Sede' failed to initialize correctly", dod.getRandomSede());
        long count = Sede.countSedes();
        Assert.assertTrue("Counter for 'Sede' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void SedeIntegrationTest.testFindSede() {
        Sede obj = dod.getRandomSede();
        Assert.assertNotNull("Data on demand for 'Sede' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Sede' failed to provide an identifier", id);
        obj = Sede.findSede(id);
        Assert.assertNotNull("Find method for 'Sede' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Sede' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void SedeIntegrationTest.testFindAllSedes() {
        Assert.assertNotNull("Data on demand for 'Sede' failed to initialize correctly", dod.getRandomSede());
        long count = Sede.countSedes();
        Assert.assertTrue("Too expensive to perform a find all test for 'Sede', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Sede> result = Sede.findAllSedes();
        Assert.assertNotNull("Find all method for 'Sede' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Sede' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void SedeIntegrationTest.testFindSedeEntries() {
        Assert.assertNotNull("Data on demand for 'Sede' failed to initialize correctly", dod.getRandomSede());
        long count = Sede.countSedes();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Sede> result = Sede.findSedeEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Sede' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Sede' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void SedeIntegrationTest.testFlush() {
        Sede obj = dod.getRandomSede();
        Assert.assertNotNull("Data on demand for 'Sede' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Sede' failed to provide an identifier", id);
        obj = Sede.findSede(id);
        Assert.assertNotNull("Find method for 'Sede' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifySede(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Sede' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void SedeIntegrationTest.testMergeUpdate() {
        Sede obj = dod.getRandomSede();
        Assert.assertNotNull("Data on demand for 'Sede' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Sede' failed to provide an identifier", id);
        obj = Sede.findSede(id);
        boolean modified =  dod.modifySede(obj);
        Integer currentVersion = obj.getVersion();
        Sede merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Sede' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void SedeIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Sede' failed to initialize correctly", dod.getRandomSede());
        Sede obj = dod.getNewTransientSede(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Sede' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Sede' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'Sede' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void SedeIntegrationTest.testRemove() {
        Sede obj = dod.getRandomSede();
        Assert.assertNotNull("Data on demand for 'Sede' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Sede' failed to provide an identifier", id);
        obj = Sede.findSede(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Sede' with identifier '" + id + "'", Sede.findSede(id));
    }
    
}