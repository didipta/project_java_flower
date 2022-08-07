package com.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "user_info")
public class Userinfos {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  int id;

    @NotNull
    @Column(name = "first_name")
   private String firstname;

    @NotNull
    @Column(name = "last_name")
   private String lastname;

    @NotNull
    @Column(name = "email")
   private String email;

    @NotNull
    @Column(name = "phome_number")
   private String phomenumber;

    @NotNull
    @Column(name = "address")
   private String address;


    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhomenumber() {
        return phomenumber;
    }

    public void setPhomenumber(String phomenumber) {
        this.phomenumber = phomenumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
