package com.rock.mvc.dao.sport;

import com.rock.mvc.entity.sport.SportProducts;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SportProductsDAO {
    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<SportProducts> getSportProductsList(){
        List<SportProducts> sportProductsList = sessionFactory.getCurrentSession()
                .createQuery("from " + SportProducts.class.getSimpleName(), SportProducts.class).getResultList();

//        for (SportProducts sportProducts : sportProductsList){
//            Hibernate.initialize(sportProducts.getCategorySport().getCategory());
//        }
        return sportProductsList;
    }

    public SportProducts getSportProductsById(Long id){
        SportProducts sportProducts = sessionFactory.getCurrentSession().get(SportProducts.class, id);
//        Hibernate.initialize(sportProducts.getCategorySport().getCategory());
        return sportProducts;
    }
}
