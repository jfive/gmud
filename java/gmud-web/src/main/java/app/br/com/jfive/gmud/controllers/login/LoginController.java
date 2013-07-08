package app.br.com.jfive.gmud.controllers.login;


import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;

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

    @Path("/login/recuperar")
    public void recuperar() {}

    @Get("/login/recuperar/{email}")
    public void enviarEmailRecuperacao(String email) {

        ResultString message = new ResultString("E-mail enviado com sucesso");

        result.use(Results.json()).withoutRoot().from(message).recursive().serialize();

    }


}
