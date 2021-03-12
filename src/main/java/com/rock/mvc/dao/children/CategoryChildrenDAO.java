package com.rock.mvc.dao.children;

import com.rock.mvc.entity.children.CategoryChildren;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryChildrenDAO {
    private final SessionFactory sessionFactory;

    @Autowired
    public CategoryChildrenDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<CategoryChildren> getCategoryChildrenList(){
        List<CategoryChildren> categoryChildrenList = sessionFactory.getCurrentSession()
                .createQuery("from " + CategoryChildren.class.getName(), CategoryChildren.class).getResultList();
        for (CategoryChildren categoryChildren : categoryChildrenList) {
            Hibernate.initialize(categoryChildren.getCategory());
        }
        return categoryChildrenList;
    }

    public CategoryChildren getCategoryChildren(Long id){
        CategoryChildren categoryChildren = sessionFactory.getCurrentSession().get(CategoryChildren.class, id);
        Hibernate.initialize(categoryChildren.getCategory());
        return categoryChildren;
    }
}
