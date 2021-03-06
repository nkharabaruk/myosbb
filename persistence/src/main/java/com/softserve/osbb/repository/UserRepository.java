package com.softserve.osbb.repository;

import com.softserve.osbb.model.Osbb;
import com.softserve.osbb.model.Role;
import com.softserve.osbb.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by cavayman on 05.07.2016.
 */
@Repository
public interface UserRepository extends JpaRepository<User,Integer> {

    public User findByUserId(long id);
    public List<User> findUserByEmail(String emailAddress);
    public List<User> findByFirstName(String firstName);
    public List<User> findByLastName(String lastName);
    public List<User> findByRole(Role role);
    public List<User> findByOsbb(Osbb osbb);


}
