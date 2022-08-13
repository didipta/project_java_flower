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
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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

        return "redirect:addtocartlist";
    }
    @RequestMapping("/addtocartlist")
    public String addtocartlist(Model model) {
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        model.addAttribute("addtocart",addtocartservice.getAll(name));
      return "Userview/Productpage/Addtocaetlist";
    }
    @RequestMapping("/addtocartdelete")
    public String addtocartdelete(@RequestParam("productdele") int id,Model model) {
        addtocartservice.delete(id);
        return "redirect:addtocartlist";
    }
    @RequestMapping("/addtocartupdate")
    public String addtocartupdate(HttpServletRequest request, Model model) {
     addtocarts act= addtocartservice.get(Integer.parseInt(request.getParameter("a_id")));
     act.setAquantity(Integer.parseInt(request.getParameter("quantity")));
     addtocartservice.update(act);
     return "redirect:addtocartlist";
    }
    @RequestMapping("/search")
    @ResponseBody
    public String search(@RequestParam("search") String name ,Model model) {
        String output="";
        List<products> products=productservice.search(name);
        if(products!=null)
        {
            output+="<div class='allsearch'>";
            for (products product:products) {



                output+="<li><a href='/project_java_flower_war_exploded/product/productinfo?productId="+product.getId()+"'>"+product.getPname()+"</a></li>";

            }
            output+="</div>";

        }
            return output;
    }
}
