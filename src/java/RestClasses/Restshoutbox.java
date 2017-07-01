package RestClasses;

import java.util.ArrayList;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import Model.ShoutboxNachricht;
import java.util.Date;
import javax.ws.rs.Consumes;
import javax.ws.rs.PUT;
import javax.ws.rs.core.Response;

@Path("/shoutbox")
public class Restshoutbox {

    ArrayList<ShoutboxNachricht> list;

    public Restshoutbox() {
        list = new ArrayList<ShoutboxNachricht>();
        list.add(new ShoutboxNachricht("Hans Peter", "23.09.1810", "Dies ist ein Testeintrag"));
        list.add(new ShoutboxNachricht("Peter Lustig", "16.11.1960", "Dies auch"));
    }
    
    
    @GET
    @Path("/p")
    @Produces(MediaType.TEXT_PLAIN)
    public String getServerTime() {
        System.out.println("RESTful Service 'MessageService' is running ==> ping");
        return "Test Zeit: " + new Date().toString();
    }

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public ArrayList<ShoutboxNachricht> getShoutboxInfo() {
        return list;
    }
    
    @PUT
    @Consumes("application/json")
    public Response addInfo(ShoutboxNachricht s) {
        if(s.getName() != null && s.getDatum() != null && s.getNachricht() != null)
        {
            list.add(s);
            return Response.status(Response.Status.OK).build();
        }
        else
        {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
    }
}
