package com.rock.mvc.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rock")
public class CartController {

    @GetMapping("/cart")
    public String getCart(){
        return "cart";
    }
}
