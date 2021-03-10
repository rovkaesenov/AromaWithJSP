package com.rock.mvc.service.men;

import com.rock.mvc.dao.men.CategoryForMenDAO;
import com.rock.mvc.entity.men.CategoryForMen;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CategoryForMenService {
    private final CategoryForMenDAO categoryForMenDAO;

    @Autowired
    public CategoryForMenService(CategoryForMenDAO categoryForMenDAO) {
        this.categoryForMenDAO = categoryForMenDAO;
    }

    @Transactional
    public List<CategoryForMen> getCategoryForMenList(){
        return categoryForMenDAO.getCategoryForMenList();
    }

    @Transactional
    public CategoryForMen getCategoryForMen(Long id){
        return categoryForMenDAO.getCategoryForMen(id);
    }
}
