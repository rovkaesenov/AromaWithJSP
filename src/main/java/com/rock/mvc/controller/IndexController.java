package com.rock.mvc.controller;

import com.rock.mvc.entity.children.ChildrenProducts;
import com.rock.mvc.service.children.ChildrenProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.ui.ModelMap;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

@RestController
@RequestMapping("/rock")
public class IndexController {

    private ChildrenProductsService childrenProductsService;

    @Autowired
    public void setAllServices(ChildrenProductsService childrenProductsService) {
        this.childrenProductsService = childrenProductsService;
    }

    @GetMapping("/index")
    public String getIndex(ModelMap map, Principal principal){
        List<ChildrenProducts> childrenProductsList = childrenProductsService.getChildrenProductsList().subList(0, 8);
        for (ChildrenProducts childrenProducts : childrenProductsList) {
            String[] names = childrenProducts.getProductName().split("/", 2);
            childrenProducts.setProductName(names[0]);
        }
        map.addAttribute("childrenProductsList", childrenProductsList);
        return "index";
    }

    @GetMapping(value = "/index/display/{id}", produces = MediaType.IMAGE_JPEG_VALUE)
    public void getImage(@PathVariable("id") Long id, HttpServletResponse response) throws IOException {
        byte[] bytes = childrenProductsService.getChildrenProducts(id).getImage();
        StreamUtils.copy(bytes, response.getOutputStream());
        response.getOutputStream().close();
    }


//    @GetMapping(value = "/display/{id}")
//    public ResponseEntity<byte[]> getImageForExample(@PathVariable("id") Long id, HttpServletResponse response) throws IOException {
//        byte[] image1 = accessoriesService.getAccessories(id).getImage();
//        return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(image1);
//    }

}
