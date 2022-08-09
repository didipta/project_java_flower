package com.controller;

import com.model.products;
import com.service.productservice;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/product")
public class ProductController {
    private final com.service.productservice productservice;

    public ProductController(com.service.productservice productservice) {
        this.productservice = productservice;
    }

    @RequestMapping("/productinfo")
    public String productshow(@RequestParam("productId") int id, Model model)
    {
       products product= productservice.get(id);
        model.addAttribute("products",productservice.getAll());
         model.addAttribute("product",product);
         return "Userview/Productpage/productinfo";
    }
}
