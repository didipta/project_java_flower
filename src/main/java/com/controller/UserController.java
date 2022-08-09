package com.controller;

import com.model.User;
import com.service.Userinfoservice;
import com.service.Userservices;
import com.service.productservice;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/User")
public class UserController {

    private final Userservices userserviceim;

    private final Userinfoservice userinfoserviceim;

    private final productservice productservice;

    public UserController(Userservices userserviceim, Userinfoservice userinfoserviceim, com.service.productservice productservice) {
        this.userserviceim = userserviceim;
        this.userinfoserviceim = userinfoserviceim;
        this.productservice = productservice;
    }

    @RequestMapping("/home")
    public String productPage(Model model) {
        Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        model.addAttribute("loggedInUser", name);
        model.addAttribute("products",productservice.getAll());
        return "Userview/Homepage";
    }
    @RequestMapping(value= "/profile",method = RequestMethod.GET)
    public String profileshow(Model model)
    {
        Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        User user=userserviceim.get(name);
        model.addAttribute("userinfo",user);
        return "Userview/Profilepage";

    }
    @RequestMapping(value = "/profile", method = RequestMethod.POST)
    public String Profileupdate(HttpServletRequest request, Model model)
    {
        Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        User user=userserviceim.get(name);
        user.getUser().setAddress(request.getParameter("address"));
        user.getUser().setPhomenumber(request.getParameter("phone"));
        user.getUser().setEmail(request.getParameter("email"));
        userinfoserviceim.update(user.getUser());
        System.out.println(user.getUser().getFirstname());
        return "redirect:profile";

    }

    @RequestMapping("/allprobuct")
    public String Allproductshow(Model model) {
        model.addAttribute("products",productservice.getAll());
        return "Userview/Productpage/product";
    }
}
