package com.model;

import javax.persistence.*;


@Entity
@Table(name = "product")
public class products {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int id ;
    @Column(name = "p_name")
   private String pname ;
    @Column(name = "P_price")
   private int Pprice ;
    @Column(name = "P_description")
   private String Pdescription;
    @Column(name="P_img ")
   private String Pimg ;
    @Column(name = "Category")
   private String Category ;
    @Column(name = "P_quantity ")
    private int Pquantity ;
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public int getPprice() {
        return Pprice;
    }

    public void setPprice(int pprice) {
        Pprice = pprice;
    }

    public String getPdescription() {
        return Pdescription;
    }

    public void setPdescription(String pdescription) {
        Pdescription = pdescription;
    }

    public String getPimg() {
        return Pimg;
    }

    public void setPimg(String pimg) {
        Pimg = pimg;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String category) {
        Category = category;
    }

    public int getPquantity() {
        return Pquantity;
    }

    public void setPquantity(int pquantity) {
        Pquantity = pquantity;
    }
}
