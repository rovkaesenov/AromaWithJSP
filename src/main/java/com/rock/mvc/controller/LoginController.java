package com.rock.mvc.controller;

import com.rock.mvc.validator.UserLoginValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/rock")
public class LoginController {

    private final UserLoginValidator userLoginValidator;

    @Autowired
    public LoginController(UserLoginValidator userLoginValidator) {
        this.userLoginValidator = userLoginValidator;
    }

    @PostMapping("/login")
    public String getPostLogin(ModelMap map){
        return "login";
    }

    @GetMapping("/login")
    public String getLogin(ModelMap map){
        return "login";
    }
}
