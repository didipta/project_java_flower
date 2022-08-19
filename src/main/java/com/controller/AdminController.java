package com.controller;

import com.model.*;
import com.service.Userservices;
import com.service.orderdetailservice;
import com.service.orderservice;
import com.service.productservice;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/admin")
public class AdminController {
    private final com.service.productservice productservice;
    private final orderservice orderservices;
    private final Userservices userserviceim;
    private final orderdetailservice orderdetailservices;

    public AdminController(com.service.productservice productservice, orderservice orderservices, Userservices userserviceim, orderdetailservice orderdetailservices) {
        this.productservice = productservice;
        this.orderservices = orderservices;
        this.userserviceim = userserviceim;
        this.orderdetailservices = orderdetailservices;
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

    @RequestMapping("/orderlist")
    public String allorderlist(Model model)
    {
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        model.addAttribute("loggedInUser", name);
        model.addAttribute("orders",orderservices.getAlls());
        return "Adminpage/adminorderlist";
    }
    @RequestMapping(value = "/productaddshow",method = RequestMethod.GET)
    public String productadd(Model model)
    {
        products product=new products();
        model.addAttribute("product",product);
        return "Adminpage/productadd";
    }
    @RequestMapping( value = "/productaddd", method = RequestMethod.POST)
    public String allproductadd(@Valid @ModelAttribute("product") products product, BindingResult bindingResult)
    {
        if (bindingResult.hasErrors()) {
            return "Adminpage/productadd";
        }

        productservice.save(product);

        return "redirect:productlist";
    }
    @RequestMapping("/orderstatus")
    public String orders(HttpServletRequest request)
    {
        orders order=orderservices.get(Integer.parseInt(request.getParameter("order_id")));
        order.setStatus(request.getParameter("status"));
        for(orderdetails orderdetail:order.getOrderdetailsList())
        {
            if(request.getParameter("status").equals("Delivered"))
            {
                products p= productservice.get(orderdetail.getProductid().getId());
                p.setPquantity(p.getPquantity()-orderdetail.getQuantity());
                productservice.update(p);
            }


            orderdetail.setStatus(request.getParameter("status"));
            orderdetailservices.update(orderdetail);
        }
        orderservices.update(order);
        return "redirect:orderlist";
    }
}
