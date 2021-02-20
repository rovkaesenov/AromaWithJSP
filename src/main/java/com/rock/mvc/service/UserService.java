package com.rock.mvc.service;

import com.rock.mvc.dao.user.RoleDAO;
import com.rock.mvc.dao.user.UserDAO;
import com.rock.mvc.entity.user.Role;
import com.rock.mvc.entity.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

@Service
@Transactional
public class UserService {

    private final UserDAO userDAO;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;
    private final RoleDAO roleDAO;

    @Autowired
    public UserService(UserDAO userDAO, BCryptPasswordEncoder bCryptPasswordEncoder, RoleDAO roleDAO) {
        this.userDAO = userDAO;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
        this.roleDAO = roleDAO;
    }

    @Transactional
    public void saveUser(User user){
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        Set<Role> roles = new HashSet<>();
        roles.add(roleDAO.getRole(1L));
        user.setRoles(roles);
        userDAO.saveUser(user);
    }

    @Transactional
    public User getUserByName(String name){
        return userDAO.getUserByUserName(name);
    }

    public User getUserByEmail(String email){
        return userDAO.getUserByEmail(email);
    }
}
