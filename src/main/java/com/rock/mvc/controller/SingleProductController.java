package com.rock.mvc.controller;

import com.rock.mvc.entity.children.ChildrenProducts;
import com.rock.mvc.entity.men.MenProducts;
import com.rock.mvc.service.ChildrenProductsService;
import com.rock.mvc.service.MenProductsService;
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

    @Autowired
    public SingleProductController(ChildrenProductsService childrenProductsService, MenProductsService menProductsService) {
        this.childrenProductsService = childrenProductsService;
        this.menProductsService = menProductsService;
    }


    @GetMapping(value = "/single-product/children")
    public String getSingleProductWithChildrenId(@RequestParam("productId") Long id, ModelMap map){
        ChildrenProducts childrenProducts = childrenProductsService.getChildrenProducts(id);
        map.addAttribute("childrenProduct", childrenProducts);
        return "single-product";
    }

    @GetMapping(value = "/single-product/displayChildren/{id}", produces = MediaType.IMAGE_JPEG_VALUE)
    public void getChildrenProductImage(@PathVariable("id") Long id, HttpServletResponse response) throws IOException {
        byte[] bytes = childrenProductsService.getChildrenProducts(id).getImage();
        StreamUtils.copy(bytes, response.getOutputStream());
        response.getOutputStream().close();
    }

    @GetMapping(value = "/single-product/men")
    public String getSingleProductWithMenId(@RequestParam("productId") Long id, ModelMap map){
        MenProducts menProducts = menProductsService.getMenProducts(id);
        map.addAttribute("menProduct", menProducts);
        return "single-product";
    }

    @GetMapping(value = "/single-product/displayMen/{id}", produces = MediaType.IMAGE_JPEG_VALUE)
    public void getMenProductImage(@PathVariable("id") Long id, HttpServletResponse response) throws IOException {
        byte[] bytes = menProductsService.getMenProducts(id).getImage();
        StreamUtils.copy(bytes, response.getOutputStream());
        response.getOutputStream().close();
    }
}
