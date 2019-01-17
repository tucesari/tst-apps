package com.example.tst.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Calculator {

    @RequestMapping("/")
    public String home() {
        return "Hello Docker World";
    }


    @RequestMapping("/hello")
    public String homeCGI() {
        return "Hello CGI";
    }

}
