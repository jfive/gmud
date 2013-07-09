package br.com.jfive.gmud.repositories.usuario;

import br.com.caelum.vraptor.ioc.Component;
import br.com.jfive.gmud.models.UsuarioEntity;
import br.com.jfive.gmud.models.querys.UsuarioQuery;
import br.com.jfive.gmud.repositories.Repository;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;


@Component
public class UsuarioRepository extends Repository<UsuarioEntity,Long> {

    public UsuarioRepository(EntityManager entityManager) {
        super(entityManager);
    }

    public UsuarioEntity buscarUsuarioPorLogin(UsuarioQuery query) {

        try {

            TypedQuery<UsuarioEntity> queryJPA = this.entityManager.createQuery("select U from UsuarioEntity U where U.login = :login", UsuarioEntity.class);

            queryJPA.setParameter("login",query.getLogin());

            return queryJPA.getSingleResult();

        } catch (NoResultException e) {
            return null;
        }

    }

}
