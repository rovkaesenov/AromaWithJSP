package com.rock.mvc.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rock")
public class BlogController {

    @GetMapping("/blog")
    public String getBlog(){
        return "blog";
    }
}
