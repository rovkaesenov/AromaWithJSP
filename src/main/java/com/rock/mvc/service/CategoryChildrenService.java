package com.rock.mvc.service;

import com.rock.mvc.dao.categoryChildren.CategoryChildrenDAO;
import com.rock.mvc.entity.children.CategoryChildren;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CategoryChildrenService {
    private final CategoryChildrenDAO categoryChildrenDAO;

    @Autowired
    public CategoryChildrenService(CategoryChildrenDAO categoryChildrenDAO) {
        this.categoryChildrenDAO = categoryChildrenDAO;
    }

    @Transactional
    public List<CategoryChildren> getCategoryChildrenList(){
        return categoryChildrenDAO.getCategoryChildrenList();
    }

    @Transactional
    public CategoryChildren getCategoryChildren(Long id){
        return categoryChildrenDAO.getCategoryChildren(id);
    }
}
