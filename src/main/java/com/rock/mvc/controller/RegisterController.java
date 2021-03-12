package com.rock.mvc.controller;

import com.rock.mvc.entity.user.User;
import com.rock.mvc.service.SecurityService;
import com.rock.mvc.service.UserService;
import com.rock.mvc.validator.UserRegisterValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("/rock")
public class RegisterController {

    private UserService userService;
    private SecurityService securityService;
    private UserRegisterValidator userRegisterValidator;

    @Autowired
    public void setAllServices(UserService userService, SecurityService securityService, UserRegisterValidator userRegisterValidator) {
        this.userService = userService;
        this.securityService = securityService;
        this.userRegisterValidator = userRegisterValidator;
    }

    @GetMapping("/register")
    public String getRegister(ModelMap map){
        map.put("user", new User());
        return "register";
    }

    @PostMapping("/postRegister")
    public String postRegister(@ModelAttribute("user") @Valid User user, BindingResult bindingResult){
        userRegisterValidator.validate(user, bindingResult);
        if (bindingResult.hasErrors()){
           return "register";
        }

        userService.saveUser(user);
        securityService.autoLogin(user.getEmail(), user.getPassword());
        return "redirect:/rock/index";

    }
}
