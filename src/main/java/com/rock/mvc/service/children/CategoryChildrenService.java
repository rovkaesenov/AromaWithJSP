package com.rock.mvc.service.children;

import com.rock.mvc.dao.children.CategoryChildrenDAO;
import com.rock.mvc.entity.children.CategoryChildren;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CategoryChildrenService {
    private CategoryChildrenDAO categoryChildrenDAO;

    @Autowired
    public void setCategoryChildrenDAO(CategoryChildrenDAO categoryChildrenDAO) {
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
