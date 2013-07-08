/**
 * Created with IntelliJ IDEA.
 * User: rodrigoalmeida
 * Date: 07/07/13
 * Time: 20:13
 * To change this template use File | Settings | File Templates.
 */
Backbone.emulateHTTP = true;
Backbone.emulateJSON = true;

User = Backbone.Model.extend({

    el: $('body'),

    initialize : function(){
        this.bind('invalid', function( model, error ) {
            $('#errorMessage').append("<div class='alert alert-error'>"+ error +"</div>")
            console.error(error);
            return false;
        });

    },


    defaults : {
        email: ""
    },

    urlRoot : "/gmud/login/recuperar",

    url: function() {
        return this.urlRoot + "/" + this.get('email');
    },


    validate : function(attributes) {
        if(attributes.email == ''){
            return "Email Obrigatório";
        }


    }

});

View = Backbone.View.extend({

    el: $('#formRecupera'),

    initialize: function(){
        this.model = new User();
    },

    events: {
        "click #btnSubmit" : "send"
    },

    send : function(event) {

        event.preventDefault();

        var emailTxt = this.$('input[name=email]').val();
        var result = new Message();

        this.model.set({email: emailTxt})
            .fetch({
                success: function(result) {
                    console.log(result.get('message'));
                }

            });
    }

});

//<div class="alert alert-error">Login ou senha inválidos</div>

var view = new View();
