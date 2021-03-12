package com.rock.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rock")
public class TrackingOrder {

    @GetMapping("/tracking-order")
    public String getTrackingOder(ModelMap map){
        return "tracking-order";
    }
}
