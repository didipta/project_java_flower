package com.model;

import javax.persistence.*;

@Entity
@Table(name ="addtocart")
public class addtocarts {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "username")
    private String username;
    @Column(name = "p_name")
    private String pname;
    @Column(name = "p_price")
      private int pprice;
    @Column(name = "product_id")
    private int product ;

    @Column(name = "a_quantity")
    private int aquantity;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public int getPprice() {
        return pprice;
    }

    public void setPprice(int pprice) {
        this.pprice = pprice;
    }

    public int getProduct() {
        return product;
    }

    public void setProduct(int product) {
        this.product = product;
    }

    public int getAquantity() {
        return aquantity;
    }

    public void setAquantity(int aquantity) {
        this.aquantity = aquantity;
    }
}
