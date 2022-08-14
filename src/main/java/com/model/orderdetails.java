package com.model;

import javax.persistence.*;

@Entity
@Table(name ="order_details")
public class orderdetails {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id ;
    @ManyToOne
    @JoinColumn(name = "order_id")
   private orders orderid;
    @OneToOne
    @JoinColumn(name = "product_id")
   private products productid;
    @Column(name = "quantity")
   private int quantity;
    @Column(name = "price")
   private int price  ;
    @Column(name = "status")
   private String  status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public orders getOrderid() {
        return orderid;
    }

    public void setOrderid(orders orderid) {
        this.orderid = orderid;
    }

    public products getProductid() {
        return productid;
    }

    public void setProductid(products productid) {
        this.productid = productid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
