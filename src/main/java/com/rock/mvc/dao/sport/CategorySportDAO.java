package com.rock.mvc.dao.sport;

import com.rock.mvc.entity.sport.CategorySport;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategorySportDAO {
    private final SessionFactory sessionFactory;

    @Autowired
    public CategorySportDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<CategorySport> getCategorySportList(){
        List<CategorySport> categorySportList = sessionFactory.getCurrentSession()
                .createQuery("from " + CategorySport.class.getSimpleName(), CategorySport.class).getResultList();

        for (CategorySport categorySport : categorySportList){
            Hibernate.initialize(categorySport.getCategory());
        }
        return categorySportList;
    }

    public CategorySport getCategorySportById(Long id){
        CategorySport categorySport = sessionFactory.getCurrentSession().get(CategorySport.class, id);
        Hibernate.initialize(categorySport.getCategory());
        return categorySport;
    }
}
