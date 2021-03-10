package com.rock.mvc.dao.home;

import com.rock.mvc.entity.home.HomeProducts;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class HomeProductsDAO {
    private final SessionFactory sessionFactory;

    @Autowired
    public HomeProductsDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<HomeProducts> getHomeProductsList(){
        List<HomeProducts> homeProductsList = sessionFactory.getCurrentSession()
                .createQuery("from " + HomeProducts.class.getSimpleName(), HomeProducts.class).getResultList();
        for (HomeProducts homeProducts : homeProductsList){
            Hibernate.initialize(homeProducts.getCategoryHome().getCategory());
        }
        return homeProductsList;
    }

    public HomeProducts getHomeProductsById(Long id){
        HomeProducts homeProducts = sessionFactory.getCurrentSession().get(HomeProducts.class, id);
        Hibernate.initialize(homeProducts.getCategoryHome().getCategory());
        return homeProducts;
    }
}
