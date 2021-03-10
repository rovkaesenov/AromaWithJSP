package com.rock.mvc.service.sport;

import com.rock.mvc.dao.sport.SportProductsDAO;
import com.rock.mvc.entity.sport.SportProducts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class SportProductsService {
    private final SportProductsDAO sportProductsDAO;

    @Autowired
    public SportProductsService(SportProductsDAO sportProductsDAO) {
        this.sportProductsDAO = sportProductsDAO;
    }

    @Transactional
    public List<SportProducts> getSportProductsList(){
        return sportProductsDAO.getSportProductsList();
    }

    @Transactional
    public SportProducts getSportProductsById(Long id){
        return sportProductsDAO.getSportProductsById(id);
    }
}
