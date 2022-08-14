package com.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name ="order")
public class orders {

   @Id
   @Column(name = "id")
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int id ;
   @ManyToOne
   @JoinColumn(name = "username")
   private User username ;
   @Column(name = "quantity")
   private int quantity ;
   @Column(name = "totalprice")
   private int totalprice;
   @Column(name = "status")
   private String status ;
   @Column(name = "order_id")
   private String orderid ;

   @OneToMany(mappedBy="orderid")
   private List<orderdetails> orderdetailsList;

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public User getUsername() {
      return username;
   }

   public void setUsername(User username) {
      this.username = username;
   }

   public int getQuantity() {
      return quantity;
   }

   public void setQuantity(int quantity) {
      this.quantity = quantity;
   }

   public int getTotalprice() {
      return totalprice;
   }

   public void setTotalprice(int totalprice) {
      this.totalprice = totalprice;
   }

   public String getStatus() {
      return status;
   }

   public void setStatus(String status) {
      this.status = status;
   }

   public String getOrderid() {
      return orderid;
   }

   public void setOrderid(String orderid) {
      this.orderid = orderid;
   }

   public List<orderdetails> getOrderdetailsList() {
      return orderdetailsList;
   }

   public void setOrderdetailsList(List<orderdetails> orderdetailsList) {
      this.orderdetailsList = orderdetailsList;
   }
}
