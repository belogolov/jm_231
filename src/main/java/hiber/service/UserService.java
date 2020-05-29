package hiber.service;

import hiber.model.User;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface UserService {
    List<User> listUsers();

    User getUserById(Long id);

    User getUserByEmail(String email);

    void add(User user);

    void delete(User user);
    void delete(Long id);

    void update(User user, String roles);
}
