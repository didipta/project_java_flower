package com.controller;

import com.service.Userinfoservice;
import com.service.Userservice;
import com.service.productservice;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/api")
public class ProductController {

    private final Userservice userserviceim;

    private final Userinfoservice userinfoserviceim;

    private final com.service.productservice productservice;



    public ProductController(Userinfoservice userinfoserviceim, Userservice userserviceim ,productservice productservice) {
        this.userinfoserviceim = userinfoserviceim;
        this.userserviceim = userserviceim;
        this.productservice=productservice;
    }

    @RequestMapping("/one")
    public String productPage(Model model) {
        model.addAttribute("products",productservice.getAll());
        return "Userview/Homepage";
    }
}
