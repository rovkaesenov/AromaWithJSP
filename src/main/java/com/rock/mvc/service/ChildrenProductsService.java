package com.rock.mvc.service;

import com.rock.mvc.dao.children.ChildrenProductDAO;
import com.rock.mvc.entity.children.ChildrenProducts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ChildrenProductsService {

    private final ChildrenProductDAO childrenProductDAO;

    @Autowired
    public ChildrenProductsService(ChildrenProductDAO childrenProductDAO) {
        this.childrenProductDAO = childrenProductDAO;
    }


    @Transactional
    public List<ChildrenProducts> getChildrenProductsList(){
        return childrenProductDAO.getChildrenProductsList();
    }

    @Transactional
    public ChildrenProducts getChildrenProducts(Long id){
        return childrenProductDAO.getChildrenProducts(id);
    }


}
