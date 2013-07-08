package br.com.jfive.gmud.controllers.login;


import br.com.caelum.vraptor.*;
import br.com.caelum.vraptor.simplemail.Mailer;
import br.com.caelum.vraptor.view.Results;
import br.com.jfive.gmud.models.Usuario;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

@Resource
public class LoginController {

    private final Result result;
    private Mailer mailer;

    public LoginController(Result result,Mailer mailer) {
        this.result = result;
        this.mailer = mailer;
    }

    @Path("/login")
    @Get
    public void login() {
        result.forwardTo("/login.jsp");
    }

    public void recuperar() {}

    @Post("/login/enviaSenha")
    @Consumes("application/json")
    public void enviarEmailRecuperacao(Usuario usuario) {

        Email emailSend = new SimpleEmail();
        emailSend.setSubject("[GMUD] - Nova Senha");
        try {
            emailSend.addTo(usuario.getEmail());
            emailSend.setMsg("Segue a nova senha: Rodrigo");

            mailer.send(emailSend);
        } catch (EmailException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }

        ResultString message = new ResultString("Nova senha enviada para seu e-mail verifique e tente novamente o login");

        result.use(Results.json()).withoutRoot().from(message).recursive().serialize();

    }

}
