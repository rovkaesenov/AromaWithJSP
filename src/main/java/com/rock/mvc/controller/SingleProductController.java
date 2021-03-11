package com.rock.mvc.controller;

import com.rock.mvc.entity.children.ChildrenProducts;
import com.rock.mvc.entity.men.MenProducts;
import com.rock.mvc.service.children.ChildrenProductsService;
import com.rock.mvc.service.home.HomeProductsService;
import com.rock.mvc.service.men.MenProductsService;
import com.rock.mvc.service.sport.SportProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/rock")
public class SingleProductController {

    private final ChildrenProductsService childrenProductsService;
    private final MenProductsService menProductsService;
    private final SportProductsService sportProductsService;
    private final HomeProductsService homeProductsService;

    @Autowired
    public SingleProductController(ChildrenProductsService childrenProductsService, MenProductsService menProductsService,
                                   SportProductsService sportProductsService, HomeProductsService homeProductsService) {
        this.childrenProductsService = childrenProductsService;
        this.menProductsService = menProductsService;
        this.sportProductsService = sportProductsService;
        this.homeProductsService = homeProductsService;
    }


//    @GetMapping(value = "/single-product")
//    public String getSingleProductWithChildrenId(@RequestParam("productId") Long id, @RequestParam("category") String category, ModelMap map){
//        ChildrenProducts childrenProducts = childrenProductsService.getChildrenProducts(id);
//        map.addAttribute("childrenProduct", childrenProducts);
//        return "single-product";
//    }
//
//    @GetMapping(value = "/single-product/image", produces = MediaType.IMAGE_JPEG_VALUE)
//    public void getChildrenProductImage(@RequestParam("id") Long id, @RequestParam("category") String category, HttpServletResponse response) throws IOException {
//        byte[] bytes = childrenProductsService.getChildrenProducts(id).getImage();
//        StreamUtils.copy(bytes, response.getOutputStream());
//        response.getOutputStream().close();
//    }
}
