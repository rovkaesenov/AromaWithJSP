package com.rock.mvc.controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rock")
public class CheckoutController {

    @GetMapping("/checkout")
    public String getCheckout(ModelMap map){
        return "checkout";
    }
}
