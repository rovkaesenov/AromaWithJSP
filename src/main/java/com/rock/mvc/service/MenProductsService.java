package com.rock.mvc.service;

import com.rock.mvc.dao.men.MenProductsDAO;
import com.rock.mvc.entity.men.MenProducts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class MenProductsService {

    private final MenProductsDAO menProductsDAO;

    @Autowired
    public MenProductsService(MenProductsDAO menProductsDAO) {
        this.menProductsDAO = menProductsDAO;
    }

    @Transactional
    public List<MenProducts> getMenProductsList(){
        return menProductsDAO.getMenProductsList();
    }

    @Transactional
    public MenProducts getMenProducts(Long id){
        return menProductsDAO.getMenProducts(id);
    }

}
