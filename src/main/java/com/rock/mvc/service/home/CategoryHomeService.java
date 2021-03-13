package com.rock.mvc.service.home;

import com.rock.mvc.dao.home.CategoryHomeDAO;
import com.rock.mvc.entity.home.CategoryHome;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CategoryHomeService {
    private CategoryHomeDAO categoryHomeDAO;

    @Autowired
    public void setCategoryHomeDAO(CategoryHomeDAO categoryHomeDAO) {
        this.categoryHomeDAO = categoryHomeDAO;
    }

    @Transactional
    public List<CategoryHome> getCategoryHomeList(){
        return categoryHomeDAO.getCategoryHomeList();
    }

    @Transactional
    public CategoryHome getCategoryHomeById(Long id){
        return categoryHomeDAO.getCategoryHomeById(id);
    }
}
