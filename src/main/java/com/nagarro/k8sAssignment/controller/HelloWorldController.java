package com.nagarro.k8sAssignment.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
    
    @GetMapping("/")
    public String appController(){
        return "Hi, Welcome to the app!";
    }

}
