package rest.integration;

import user.authentication.LoginAuth;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.sql.SQLException;

/**
 * Created by yashaswi on 3/9/17.
 */
@Path("/first")
public class FirstResource {

    /**
     * Authenticate login user.
     * @URL http://localhost:8080/restapp/rest/first/auth
     * @param emp
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException
     */

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/auth")
    public boolean getAuthJSON(Employee emp) throws SQLException, ClassNotFoundException {
        System.out.println("getMessage called");
        LoginAuth authUser = LoginAuth.getInstance();
        authUser.setUserName(emp.getName());
        authUser.setPass(emp.getPassword());
        return LoginAuth.userExistance(authUser);
    }
}
