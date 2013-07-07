package app.br.com.jfive.gmud.controllers.home;

import app.br.com.jfive.gmud.annotations.Category;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;


@Resource
@Category("home")
public class HomeController {

    private final Result result;

    public HomeController(Result result) {
        this.result = result;
    }

    @Path("/app/index")
    public void index(){}


}
