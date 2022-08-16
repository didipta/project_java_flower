package com.model;

import javax.persistence.*;

@Entity
@Table(name = "rating_product")
public class Productsrating {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "username")
    private String username;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "pr_id")
    private products ratproduct;

    @Column(name = "rating")
    private double rating;

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

    public products getRatproduct() {
        return ratproduct;
    }

    public void setRatproduct(products ratproduct) {
        this.ratproduct = ratproduct;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }
}
