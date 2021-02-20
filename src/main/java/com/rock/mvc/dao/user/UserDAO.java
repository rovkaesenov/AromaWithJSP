package com.rock.mvc.dao.user;

import com.rock.mvc.entity.user.User;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
    private final SessionFactory sessionFactory;

    @Autowired
    public UserDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void saveUser(User user){
        sessionFactory.getCurrentSession().save(user);
    }

    public User getUserByUserName(String name){
        Query query = sessionFactory.getCurrentSession().createQuery("from " + User.class.getSimpleName() + " user where user.userName =: name");
        query.setParameter("name", name);
        return (User) query.uniqueResult();
    }

    public User getUserByEmail(String email){
        Query query = sessionFactory.getCurrentSession().createQuery("from " + User.class.getSimpleName() + " user where user.email =: email");
        query.setParameter("email", email);
        return (User) query.uniqueResult();
    }
}
