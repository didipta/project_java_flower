package com.model;

import javax.persistence.*;

@Entity
@Table(name = "product_comment")
public class Productcomment {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  int id;
    @ManyToOne
    @JoinColumn(name = "product_id")
    private products comproduct;
    @Column(name="user_name")
    private String username;
    @Column(name = "comment")
    private String comment;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public products getComproduct() {
        return comproduct;
    }

    public void setComproduct(products comproduct) {
        this.comproduct = comproduct;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
