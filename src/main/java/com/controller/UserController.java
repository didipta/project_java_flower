package com.controller;

import com.model.User;
import com.model.Userinfos;
import com.service.*;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class UserController {

      private final Userservices userserviceim;

      private final Userinfoservice userinfoserviceim;

      private final productservice productservice;

    public UserController(Userservices userserviceim, Userinfoservice userinfoserviceim, com.service.productservice productservice) {
        this.userserviceim = userserviceim;
        this.userinfoserviceim = userinfoserviceim;
        this.productservice = productservice;
    }

//    public UserController(Userserviceim userserviceim) {
//        this.userserviceim = userserviceim;
//    }

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);

    }

    @GetMapping( value = "/login")
    public String Loginpage(Model model) {
        User user=new User();
        model.addAttribute("user",user);

        return "common_page/Sign_in";
    }

    @RequestMapping("/fail")
    public String fail() {
        return "common_page/fail";
    }


//    @RequestMapping(value = "/Sign_in",method = RequestMethod.POST)
//    public  String loginsubmit(@Valid @ModelAttribute("user") User user,BindingResult bindingResult,Model model)
//    {
//        if (bindingResult.hasErrors()) {
//            return "common_page/Sign_in";
//        }
//
//        User u= userserviceim.get(user.getUsername());
//        if (u.getUsertype().equals("user"))
//        {
//            model.addAttribute("username",u.getUsername());
//            model.addAttribute("products",productservice.getAll());
//            return "Userview/Homepage";
//        }
//        return "common_page/Sign_in";
//    }

    @RequestMapping( value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {


          Userinfos user=new Userinfos();
          Userinfos userinfo=new Userinfos();

          model.addAttribute("user",user);
        return "common_page/registration";
    }
    @RequestMapping( value = "/registration", method = RequestMethod.POST)
    public String regSubmit(@Valid @ModelAttribute("user") Userinfos usr, BindingResult bindingResult)
    {
        if (bindingResult.hasErrors()) {
            return "common_page/registration";
        }

        User user = usr.getUser();
        userserviceim.save(user);
        userinfoserviceim.save(usr);

        return "redirect:Sign_in";
    }
    @RequestMapping( value = "/home", method = RequestMethod.GET)
    public String home()
    {
        return "Userview/Homepage";
    }
}
