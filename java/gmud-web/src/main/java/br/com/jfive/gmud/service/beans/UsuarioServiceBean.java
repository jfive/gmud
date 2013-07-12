package br.com.jfive.gmud.service.beans;

import br.com.caelum.vraptor.ioc.Component;
import br.com.jfive.gmud.models.UsuarioEntity;
import br.com.jfive.gmud.models.querys.UsuarioQuery;
import br.com.jfive.gmud.repositories.usuario.UsuarioRepository;
import br.com.jfive.gmud.service.UsuarioService;

@Component
public class UsuarioServiceBean implements UsuarioService {


    private UsuarioRepository repository;

    public UsuarioServiceBean(UsuarioRepository repository) {
        this.repository = repository;
    }


    @Override
    public UsuarioEntity resetarSenhaUsuario(String login) {
        UsuarioEntity usuarioEntity = repository.buscarUsuarioPorLogin(new UsuarioQuery(login));

        if(usuarioEntity != null){
            usuarioEntity.setSenha("gmud123");
            repository.beginTransaction();
            repository.update(usuarioEntity);
            repository.commit();
        }

        return usuarioEntity;
    }



}
