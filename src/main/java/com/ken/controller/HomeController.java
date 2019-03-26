package com.ken.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author yhq
 * @date 2018/12/24
 */
@RestController
public class HomeController {

    @GetMapping("/index")
    public String home() {
        return "home";
    }
}
