/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package RestClasses;

import Model.ShoutboxNachricht;
import static java.nio.file.Files.list;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.HashSet;
import java.util.Set;
import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

/**
 *
 * @author Marcel
 */
@ApplicationPath("resources")
public class RestApplication extends Application {

    private Set<Object> singletons = new HashSet<Object>();

    public RestApplication() {
        singletons.add(new Restshoutbox());
    }

    @Override
    public Set<Class<?>> getClasses() {
        return new HashSet<Class<?>>();
    }

    @Override
    public Set<Object> getSingletons() {
        return singletons;
    }

}
