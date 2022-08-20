package com.model;

import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import org.hibernate.validator.constraints.UniqueElements;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.List;

@Entity
@Table(name = "users")
public class User {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  int id;

    @NotNull
    @Column(name = "user_name", unique = true)
    private String username;

    @NotNull
    @Size(min=8, max=20)
    @Column(name = "password")
   private String password;
    @NotNull
    @Size(min=8, max=20)
   @Column(name = "c_password")
   private String cpassword;

    @NotNull
    @Column(unique = true, name = "usertype")
   private String usertype;



    @OneToOne(mappedBy = "user")
    private Userinfos user;


    @OneToMany(fetch=FetchType.EAGER,mappedBy ="users")
    private List<orders> ordersList;

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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCpassword() {
        return cpassword;
    }

    public void setCpassword(String cpassword) {
        this.cpassword = cpassword;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public Userinfos getUser() {
        return user;
    }

    public void setUser(Userinfos user) {
        this.user = user;
    }

    public List<orders> getOrdersList() {
        return ordersList;
    }

    public void setOrdersList(List<orders> ordersList) {
        this.ordersList = ordersList;
    }
}
