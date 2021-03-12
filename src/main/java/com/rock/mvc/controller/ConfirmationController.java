package com.rock.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rock")
public class ConfirmationController {


    @GetMapping("/confirmation")
    public String getConfirmation(ModelMap map){
        return "confirmation";
    }
}
