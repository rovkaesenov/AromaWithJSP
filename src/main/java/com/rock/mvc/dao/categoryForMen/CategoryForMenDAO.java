package com.rock.mvc.dao.categoryForMen;

import com.rock.mvc.entity.men.CategoryForMen;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Iterator;
import java.util.List;

@Repository
public class CategoryForMenDAO {
    private final SessionFactory sessionFactory;

    @Autowired
    public CategoryForMenDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<CategoryForMen> getCategoryForMenList(){
        List<CategoryForMen> categoryForMenList = sessionFactory.getCurrentSession()
                .createQuery("from " + CategoryForMen.class.getName(), CategoryForMen.class).getResultList();
        Iterator<CategoryForMen> categoryForMenIterator = categoryForMenList.listIterator();
        while (categoryForMenIterator.hasNext()){
            CategoryForMen categoryForMen = categoryForMenIterator.next();
            Hibernate.initialize(categoryForMen.getCategory());
        }
        return categoryForMenList;
    }

    public CategoryForMen getCategoryForMen(Long id){
        CategoryForMen categoryForMen = sessionFactory.getCurrentSession().get(CategoryForMen.class, id);
        Hibernate.initialize(categoryForMen.getCategory());
        return categoryForMen;
    }
}
