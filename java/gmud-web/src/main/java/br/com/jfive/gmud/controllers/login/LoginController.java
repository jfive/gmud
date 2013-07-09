package br.com.jfive.gmud.controllers.login;


import br.com.caelum.vraptor.*;
import br.com.caelum.vraptor.simplemail.Mailer;
import br.com.caelum.vraptor.view.Results;
import br.com.jfive.gmud.models.UsuarioDTO;
import br.com.jfive.gmud.models.UsuarioEntity;
import br.com.jfive.gmud.service.UsuarioService;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

@Resource
public class LoginController {

    private final Result result;
    private Mailer mailer;
    private UsuarioService usuarioService;

    public LoginController(Result result,Mailer mailer, UsuarioService usuarioService) {
        this.result = result;
        this.mailer = mailer;
        this.usuarioService = usuarioService;
    }

    @Path("/login")
    @Get
    public void login() {
        result.forwardTo("/login.jsp");
    }

    public void recuperar() {}

    @Post("/login/enviaSenha")
    @Consumes("application/json")
    public void enviarEmailRecuperacao(UsuarioDTO usuario) {

        UsuarioEntity usuarioRecupera = usuarioService.resetarSenhaUsuario(usuario.getEmail());

        if(usuarioRecupera == null) {
            ResultString message = message = new ResultString("E-mail não encontrado", true);

            result.use(Results.json()).withoutRoot().from(message).recursive().serialize();
        }else{

            Email emailSend = new SimpleEmail();
            emailSend.setSubject("[GMUD] - Nova Senha");
            try {
                emailSend.addTo(usuario.getEmail());
                emailSend.setMsg("Segue a nova senha: " + usuarioRecupera.getSenha());

                mailer.send(emailSend);
            } catch (EmailException e) {
                e.printStackTrace();
            }


            ResultString message = message = new ResultString("Nova senha enviada para seu e-mail verifique e tente novamente o login", false);

            result.use(Results.json()).withoutRoot().from(message).recursive().serialize();
        }

    }

}
