package com.controller;

import com.service.Userservices;
import com.service.orderservice;
import com.service.productservice;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminController {
    private final com.service.productservice productservice;
    private final orderservice orderservices;
    private final Userservices userserviceim;

    public AdminController(com.service.productservice productservice, orderservice orderservices, Userservices userserviceim) {
        this.productservice = productservice;
        this.orderservices = orderservices;
        this.userserviceim = userserviceim;
    }

    @RequestMapping("/one")
    public String productPage(Model model) {
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        model.addAttribute("loggedInUser", name);
        model.addAttribute("Users", userserviceim.getAll());
        model.addAttribute("orders",orderservices.getAlls());
        model.addAttribute("product",productservice.getAll());

        return "Adminpage/home";
    }
    @RequestMapping("/productlist")
    public String productlist(Model model)
    {
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        model.addAttribute("loggedInUser", name);
        model.addAttribute("product",productservice.getAll());

        return "Adminpage/productlist";
    }
    @RequestMapping("/addproduct")
    public String addproduct(HttpServletRequest request,Model model)
    {
        System.out.println(request.getParameter("file"));
        return " ";
    }
    @RequestMapping("/orderlist")
    public String allorderlist(Model model)
    {
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        model.addAttribute("loggedInUser", name);
        model.addAttribute("orders",orderservices.getAlls());
        return "Adminpage/adminorderlist";
    }
}
