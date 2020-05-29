package hiber.dao;

import hiber.model.Role;

public interface RoleDao{
    Role getRoleById(Long id);
    Role getRoleByName(String name);
}
