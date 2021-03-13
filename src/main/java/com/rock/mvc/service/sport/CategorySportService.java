package com.rock.mvc.service.sport;

import com.rock.mvc.dao.sport.CategorySportDAO;
import com.rock.mvc.entity.sport.CategorySport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CategorySportService {
    private CategorySportDAO categorySportDAO;

    @Autowired
    public void setCategorySportDAO(CategorySportDAO categorySportDAO) {
        this.categorySportDAO = categorySportDAO;
    }

    @Transactional
    public List<CategorySport> getCategorySportList(){
        return categorySportDAO.getCategorySportList();
    }

    @Transactional
    public CategorySport getCategorySportById(Long id){
        return categorySportDAO.getCategorySportById(id);
    }
}
