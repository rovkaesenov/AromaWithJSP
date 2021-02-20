package com.rock.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/rock")
public class BlogController {

    @GetMapping("/blog")
    public String getBlog(ModelMap map){
        return "blog";
    }
}
