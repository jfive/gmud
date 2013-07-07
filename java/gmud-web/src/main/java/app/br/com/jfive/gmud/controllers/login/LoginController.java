package app.br.com.jfive.gmud.controllers.login;


import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class LoginController {

    private final Result result;

    public LoginController(Result result) {
        this.result = result;
    }



    @Path("/login")
    @Get
    public void login() {
        result.forwardTo("/login.jsp");

    }

}
