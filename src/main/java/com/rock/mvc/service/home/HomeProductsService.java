package com.rock.mvc.service.home;

import com.rock.mvc.dao.home.HomeProductsDAO;
import com.rock.mvc.entity.home.HomeProducts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class HomeProductsService {
    private HomeProductsDAO homeProductsDAO;

    @Autowired
    public void setHomeProductsDAO(HomeProductsDAO homeProductsDAO) {
        this.homeProductsDAO = homeProductsDAO;
    }

    @Transactional
    public List<HomeProducts> getHomeProductsList(){
        return homeProductsDAO.getHomeProductsList();
    }

    @Transactional
    public HomeProducts getHomeProductsById(Long id){
        return homeProductsDAO.getHomeProductsById(id);
    }
}
