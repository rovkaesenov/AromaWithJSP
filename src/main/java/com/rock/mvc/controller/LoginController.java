package com.rock.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rock")
public class LoginController {

    @PostMapping("/postLogin")
    public String getPostLogin(ModelMap map){
        return "redirect:/rock/login";
    }

    @GetMapping("/login")
    public String getLogin(ModelMap map){
        return "login";
    }
}
