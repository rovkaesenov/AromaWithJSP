package com.rock.mvc.dao.user;

import com.rock.mvc.entity.user.Role;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RoleDAO {

    private final SessionFactory sessionFactory;

    @Autowired
    public RoleDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Role getRole(Long id){
        return sessionFactory.getCurrentSession().get(Role.class, id);
    }
}
