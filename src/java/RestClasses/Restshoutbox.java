package RestClasses;

import java.util.ArrayList;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import Model.ShoutboxNachricht;
import javax.ws.rs.Consumes;
import javax.ws.rs.PUT;
import javax.ws.rs.QueryParam;

@Path("/shoutbox")
public class Restshoutbox {

    ArrayList<ShoutboxNachricht> list;

    public Restshoutbox() {
        list = new ArrayList<ShoutboxNachricht>();
        list.add(new ShoutboxNachricht("Hans Peter", "23.09.1810", "Dies ist ein Testeintrag"));
        list.add(new ShoutboxNachricht("Peter Lustig", "16.11.1960", "Dies auch"));
    }

    @GET
    @Produces("application/json")
    public String getShoutboxInfo() {
        String back;
        back = "[";
        int i = 0;
        for (ShoutboxNachricht s : list) {

            if(i>0)
            {
                back += ", ";
            }
            
            back += "{ \"ID\" : " + i++ + " \"Name\" : " + s.getName() + " \"Datum\" : " + s.getDatum() + " \"Nachricht\" : " + s.getNachricht() + "}";
            
            
        }
        back += "]";
        return back;
    }
    
    @PUT
    @Consumes(MediaType.TEXT_PLAIN)
    @Produces(MediaType.TEXT_PLAIN)
    public String addInfo(@QueryParam("Name") String name, @QueryParam("Datum") String datum, @QueryParam("Nachricht") String msg) {
        list.add(new ShoutboxNachricht(name,datum,msg));
        return "test";
    }
}
