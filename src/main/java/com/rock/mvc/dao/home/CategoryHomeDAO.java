package com.rock.mvc.dao.home;

import com.rock.mvc.entity.home.CategoryHome;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryHomeDAO {

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<CategoryHome> getCategoryHomeList(){
        List<CategoryHome> categoryHomeList = sessionFactory.getCurrentSession()
                .createQuery("from " + CategoryHome.class.getSimpleName(), CategoryHome.class).getResultList();
//        for (CategoryHome categoryHome : categoryHomeList){
//            Hibernate.initialize(categoryHome.getCategory());
//        }
        return categoryHomeList;
    }

    public CategoryHome getCategoryHomeById(Long id){
        CategoryHome categoryHome = sessionFactory.getCurrentSession().get(CategoryHome.class, id);
//        Hibernate.initialize(categoryHome.getCategory());
        return categoryHome;
    }
}
