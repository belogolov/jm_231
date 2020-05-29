package hiber.dao;

import hiber.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface UserDao {
   List<User> listUsers();

   User getUserById(Long id);

   User getUserByEmail(String email);

   void add(User user);

   void delete(User user);

   void delete(Long id);

   void update(User user);
}
