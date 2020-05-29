package hiber.dao;

import hiber.model.Role;
import hiber.model.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

@Repository
public class RoleDaoImp implements RoleDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Role getRoleById(Long id) {
        TypedQuery<Role> query = sessionFactory.getCurrentSession().createQuery("FROM Role r WHERE r.id=:id", Role.class);
        query.setParameter("id", id);
        query.setMaxResults(1);
        try {
            return query.getSingleResult();
        } catch (NoResultException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Role getRoleByName(String name) {
        TypedQuery<Role> query = sessionFactory.getCurrentSession().createQuery("FROM Role r WHERE r.role=:role", Role.class);
        query.setParameter("role", name);
        query.setMaxResults(1);
        try {
            return query.getSingleResult();
        } catch (NoResultException e) {
            e.printStackTrace();
        }
        return null;
    }

}
