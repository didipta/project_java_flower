package com.controller;

import com.service.Userservice;
import com.service.productservice;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/api")
public class ProductController {

    private final Userservice userserviceim;

//    private final Userinfoservice userinfoserviceim;

    private final com.service.productservice productservice;



    public ProductController( Userservice userserviceim ,productservice productservice) {

        this.userserviceim = userserviceim;
        this.productservice=productservice;
    }

    @RequestMapping("/one")
    public String productPage(Model model) {
        Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        model.addAttribute("loggedInUser", name);
        model.addAttribute("products",productservice.getAll());
        return "Userview/Homepage";
    }
}
