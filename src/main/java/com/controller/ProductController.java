package com.controller;

import com.model.*;
import com.service.*;
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
    private final Userservices userserviceim;
    private final orderservice orderservices;
    private final orderdetailservice orderdetailservices;
    private final productcommentservice productcommentservice;

    public ProductController(com.service.productservice productservice, com.service.addtocartservice addtocartservice, Userservices userserviceim, orderservice orderservices, orderdetailservice orderdetailservices, com.service.productcommentservice productcommentservice) {
        this.productservice = productservice;
        this.addtocartservice = addtocartservice;
        this.userserviceim = userserviceim;
        this.orderservices = orderservices;
        this.orderdetailservices = orderdetailservices;
        this.productcommentservice = productcommentservice;
    }

    @RequestMapping(value = "/productinfo",method = RequestMethod.GET)
    public String productshow(@RequestParam("productId") int id, Model model)
    {
       products product= productservice.get(id);
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        model.addAttribute("products",productservice.getAll(product.getCategory()));
         model.addAttribute("product",product);
        model.addAttribute("username",name);

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
    @RequestMapping("/orders")
    public String orders(HttpServletRequest request, Model model) {
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        orders orders=new orders();
        orders.setUsername(name);
        User u=userserviceim.get(name);
        orders.setUsers(u);
        orders.setQuantity(Integer.parseInt(request.getParameter("quantitys")));
        orders.setTotalprice(Integer.parseInt(request.getParameter("totalprice")));
        orders.setToken(request.getParameter("order_id"));
        orders.setStatus("order is processing");
        orderservices.save(orders);
        List<addtocarts> addtocartss=addtocartservice.getAll(name);
        for (addtocarts addto:addtocartss)
        {
            orderdetails orderdetails=new orderdetails();
            orderdetails.setOrderid(orders);
            orderdetails.setStatus("Order is procesing");
            orderdetails.setQuantity(addto.getAquantity());
            products p=productservice.get(addto.getProduct());
            orderdetails.setProductid(p);
            orderdetails.setPrice(addto.getPprice());
            orderdetailservices.save(orderdetails);
            addtocartservice.delete(addto.getId());
        }

    return "redirect:orderlist";
    }

    @RequestMapping("/orderlist")
    public String orderlist( Model model) {
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
//        List<orders> orders=orderservices.getAll(name);
        model.addAttribute("orderlists",orderservices.getAll(name));
        return "Userview/Productpage/orderlistall";
    }

    @RequestMapping("/productcomment")
    public String productcomment(HttpServletRequest request, Model model) {
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        Productcomment productcomment=new Productcomment();
        productcomment.setUsername(name);
        products p=productservice.get(Integer.parseInt(request.getParameter("product_id")));
        productcomment.setComproduct(p);
        productcomment.setComment(request.getParameter("comment"));

        productcommentservice.save(productcomment);

  return "redirect:productinfo?productId="+p.getId();

    }
    @RequestMapping("/commentdelete")
    public String commentdelect(@RequestParam("id") int id,@RequestParam("p_id") int p_id,Model model) {
        productcommentservice.delete(id);
        return "redirect:productinfo?productId="+p_id;
    }
    @RequestMapping("/productrating")
    public String productratings(HttpServletRequest request, Model model) {
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        Productsrating productratingp=new Productsrating();
        productratingp.setUsername(name);
        products p=productservice.get(Integer.parseInt(request.getParameter("pro_idd")));
        productratingp.setRatproduct(p);
        productratingp.setRating(Double.parseDouble(request.getParameter("rating")));

        productcommentservice.saverating(productratingp);

        return "redirect:productinfo?productId="+p.getId();

    }

}
