// Model default para trabalhar com mensagem do tipo String
Message = Backbone.Model.extend({

    defaults: {
        message: ''
    }

});


$(function(){

    var menu = $(menuActive);

    menu.append("<div class='pointer'>" +
        "  <div class='arrow'></div>" +
        "  <div class='arrow_border'></div>" +
        "</div>");

    menu.addClass("active");

})

