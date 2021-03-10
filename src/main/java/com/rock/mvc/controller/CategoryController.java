package com.rock.mvc.controller;

import com.rock.mvc.entity.children.ChildrenProducts;
import com.rock.mvc.entity.men.MenProducts;
import com.rock.mvc.service.children.CategoryChildrenService;
import com.rock.mvc.service.men.CategoryForMenService;
import com.rock.mvc.service.children.ChildrenProductsService;
import com.rock.mvc.service.men.MenProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/rock")
public class CategoryController {

    private final ChildrenProductsService childrenProductsService;
    private final MenProductsService menProductsService;
    private final CategoryChildrenService categoryChildrenService;
    private final CategoryForMenService categoryForMenService;

    @Autowired
    public CategoryController(ChildrenProductsService childrenProductsService, MenProductsService menProductsService, CategoryChildrenService categoryChildrenService, CategoryForMenService categoryForMenService) {
        this.childrenProductsService = childrenProductsService;
        this.menProductsService = menProductsService;
        this.categoryChildrenService = categoryChildrenService;
        this.categoryForMenService = categoryForMenService;
    }

    /*------------------------start: Для обычного вызова---------------------------- */

    /*-------------------------category children----------------------------------*/

    @GetMapping(value = "/category/children")
    public String getCategoriesChildren(ModelMap map){
        List<ChildrenProducts> childrenProductsList = childrenProductsService.getChildrenProductsList();
        for (ChildrenProducts childrenProducts : childrenProductsList) {
            String[] names = childrenProducts.getProductName().split("/");
            childrenProducts.setProductName(names[0] + names[1]);
        }
        map.addAttribute("childrenProductsList", childrenProductsList);
        return "category";
    }

    @GetMapping(value = "/category/displayChildren/{id}", produces = MediaType.IMAGE_JPEG_VALUE)
    public void getImageForChildren(@PathVariable("id") Long id, HttpServletResponse response) throws IOException {
        byte[] bytes = childrenProductsService.getChildrenProducts(id).getImage();
        StreamUtils.copy(bytes, response.getOutputStream());
        response.getOutputStream().close();
    }


    /*--------------------------------category men--------------------------------*/
    @GetMapping(value = "/category/men")
    public String getCategoriesMen(ModelMap map){
        List<MenProducts> menProductsList = menProductsService.getMenProductsList();
        for (MenProducts menProducts : menProductsList) {
            String[] names = menProducts.getProductName().split("/");
            menProducts.setProductName(names[0] + names[1]);
        }
        map.addAttribute("menProductsList", menProductsList);
        return "category";
    }

    @GetMapping(value = "/category/displayMen/{id}", produces = MediaType.IMAGE_JPEG_VALUE)
    public void getImageForMen(@PathVariable("id") Long id, HttpServletResponse response) throws IOException {
        byte[] bytes = menProductsService.getMenProducts(id).getImage();
        StreamUtils.copy(bytes, response.getOutputStream());
        response.getOutputStream().close();
    }

    /*------------------------end: Для обычного вызова---------------------------- */

    /*------------------------start: сортировка колекции----------------------------*/
//    @PostMapping(value = "/category/children/sortProducts")
//    public String getSortChildrenProducts(ModelMap map){
//        return "redirect:/rock/category/children";
//    }
    /*------------------------start: сортировка колекции----------------------------*/
}
