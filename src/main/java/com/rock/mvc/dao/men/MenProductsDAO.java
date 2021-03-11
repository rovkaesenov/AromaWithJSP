package com.rock.mvc.dao.men;

import com.rock.mvc.entity.men.MenProducts;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Iterator;
import java.util.List;

@Repository
public class MenProductsDAO {

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<MenProducts> getMenProductsList(){
        List<MenProducts> menProductsList = sessionFactory.getCurrentSession().
                createQuery("from " + MenProducts.class.getName(), MenProducts.class).getResultList();
        Iterator<MenProducts> menProductsIterator = menProductsList.iterator();
        while (menProductsIterator.hasNext()){
            MenProducts menProducts = menProductsIterator.next();
            Hibernate.initialize(menProducts.getCategoryForMen().getCategory());
        }
        return menProductsList;
    }

    public MenProducts getMenProducts(Long id){
        MenProducts menProducts = sessionFactory.getCurrentSession().get(MenProducts.class, id);
        Hibernate.initialize(menProducts.getCategoryForMen().getCategory());
        return menProducts;
    }


}
