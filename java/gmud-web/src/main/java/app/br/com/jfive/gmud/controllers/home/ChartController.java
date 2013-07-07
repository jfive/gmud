package app.br.com.jfive.gmud.controllers.home;

import app.br.com.jfive.gmud.annotations.Category;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
@Category("chart")
public class ChartController {


    private final Result result;

    public ChartController(Result result) {
        this.result = result;
    }

    @Path("/chart")
    public void load(){
        result.forwardTo("/WEB-INF/jsp/home/chart.jsp");
    }

}
