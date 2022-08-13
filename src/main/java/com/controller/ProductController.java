package com.controller;

import com.model.addtocarts;
import com.model.products;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/product")
public class ProductController {
    private final com.service.productservice productservice;
    private final com.service.addtocartservice addtocartservice;

    public ProductController(com.service.productservice productservice,com.service.addtocartservice addtocartservice) {
        this.productservice = productservice;
        this.addtocartservice=addtocartservice;
    }

    @RequestMapping(value = "/productinfo",method = RequestMethod.GET)
    public String productshow(@RequestParam("productId") int id, Model model)
    {
       products product= productservice.get(id);

        model.addAttribute("products",productservice.getAll(product.getCategory()));
         model.addAttribute("product",product);

         return "Userview/Productpage/productinfo";
    }

    @RequestMapping("/categoryproduct")
    public String categoryproduct(@RequestParam("category") String cate, Model model)
    {
        model.addAttribute("category",cate);
        model.addAttribute("products",productservice.getAll(cate));
        return "Userview/Productpage/Category";
    }
    @RequestMapping("/addtocart")
    public String addtocart(HttpServletRequest request, Model model) {
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        addtocarts addtocarts=new addtocarts();
        addtocarts.setUsername(name);
        products product= productservice.get(Integer.parseInt(request.getParameter("p_id")));
        addtocarts.setProduct(product.getId());
        addtocarts.setPname(product.getPname());
        addtocarts.setPprice(product.getPprice());
        addtocarts.setAquantity(Integer.parseInt(request.getParameter("quantity")));
        addtocartservice.save(addtocarts);

        return "redirect:/User/home";
    }
    @RequestMapping("/addtocartlist")
    public String addtocartlist(Model model) {
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        model.addAttribute("addtocart",addtocartservice.getAll(name));
      return "Userview/Productpage/Addtocaetlist";
    }
}
