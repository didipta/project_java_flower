package com.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class loginController {
    @RequestMapping("/controller")
    public String logincheck()
    {
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getAuthorities().toString();

        if(name.equals("[user]"))
        {
           return "redirect:/api/one";
        }
        else if(name.equals("[Admin]"))
        {
            return "redirect:/admin/one";
        }
        else
        {
            return " ";
        }

    }
}
