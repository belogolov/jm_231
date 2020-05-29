package hiber.dao;

import hiber.model.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.TypedQuery;
import java.util.List;

@Repository
public class UserDaoImp implements UserDao {

   @Autowired
   private SessionFactory sessionFactory;

   @Override
   public void add(User user) {
      sessionFactory.getCurrentSession().save(user);
   }

   @Override
   public void delete(User user) {
      sessionFactory.getCurrentSession().delete(user);
   }

   @Override
   public void delete(Long id) {
      delete(getUserById(id));
   }

   @Override
   public void update(User user) {
//      sessionFactory.getCurrentSession().saveOrUpdate(user);
//      Session currentSession = sessionFactory.getCurrentSession();
//      currentSession.saveOrUpdate(user.getRoles());
//      currentSession.saveOrUpdate(user);
   }

   @Override
   @SuppressWarnings("unchecked")
   public List<User> listUsers() {
      TypedQuery<User> query = sessionFactory.getCurrentSession().createQuery("FROM User", User.class);
      return query.getResultList();
   }

   @Override
   @SuppressWarnings("unchecked")
   public User getUserById(Long id) {
      TypedQuery<User> query = sessionFactory.getCurrentSession().createQuery("FROM User u WHERE u.id=:id", User.class);
      query.setParameter("id", id);
      query.setMaxResults(1);
      return query.getSingleResult();
   }

   @Override
   @Transactional(readOnly = true)
   @SuppressWarnings("unchecked")
   public User getUserByEmail(String email) {
      Session session;
      try {
         session = sessionFactory.getCurrentSession();
      } catch (HibernateException e) {
         session = sessionFactory.openSession();
      }
      TypedQuery<User> query = session.createQuery("FROM User u WHERE u.email=:email", User.class);
      query.setParameter("email", email);
      query.setMaxResults(1);
      return query.getSingleResult();
   }
}
