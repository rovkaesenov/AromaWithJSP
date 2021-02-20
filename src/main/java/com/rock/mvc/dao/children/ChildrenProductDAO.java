package com.rock.mvc.dao.children;

import com.rock.mvc.entity.children.ChildrenProducts;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Iterator;
import java.util.List;

@Repository
public class ChildrenProductDAO {
    private final SessionFactory sessionFactory;

    @Autowired
    public ChildrenProductDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<ChildrenProducts> getChildrenProductsList(){
        List<ChildrenProducts> childrenProductsList = sessionFactory.getCurrentSession().
                createQuery("from " + ChildrenProducts.class.getName(), ChildrenProducts.class).getResultList();
        Iterator<ChildrenProducts> childrenProductsIterator = childrenProductsList.iterator();
        while (childrenProductsIterator.hasNext()){
            ChildrenProducts childrenProducts = childrenProductsIterator.next();
            Hibernate.initialize(childrenProducts.getCategoryChildren().getCategory());
        }
        return childrenProductsList;
    }

    public ChildrenProducts getChildrenProducts(Long id){
        ChildrenProducts childrenProducts = sessionFactory.getCurrentSession().get(ChildrenProducts.class, id);
        Hibernate.initialize(childrenProducts.getCategoryChildren().getCategory());
        return childrenProducts;
    }
}
