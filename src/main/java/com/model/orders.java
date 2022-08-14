package com.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name ="product_order")
public class orders {
   @Id
   @Column(name ="id")
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int id;

   @Column(name ="username")
   private String username;

   @Column(name ="quantity")
   private int quantity;
   @Column(name ="totalprice")
   private int totalprice;
   @Column(name ="status")
   private String status;
   @Column(name ="token")
   private String token;

   @ManyToOne
   @JoinColumn(name = "user_id")
   private User users;

   @OneToMany(fetch =FetchType.EAGER, mappedBy = "orderid")
   private List<orderdetails> orderdetailsList;

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

   public String getToken() {
      return token;
   }

   public void setToken(String token) {
      this.token = token;
   }

   public User getUsers() {
      return users;
   }

   public void setUsers(User users) {
      this.users = users;
   }

   public List<orderdetails> getOrderdetailsList() {
      return orderdetailsList;
   }

   public void setOrderdetailsList(List<orderdetails> orderdetailsList) {
      this.orderdetailsList = orderdetailsList;
   }
}
