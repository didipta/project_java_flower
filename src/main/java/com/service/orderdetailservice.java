package com.service;

import com.model.orderdetails;

import java.util.List;

public interface orderdetailservice {

    public List<orderdetails> getAll(String username);

    public void save(orderdetails addtocart);

    public orderdetails get(int id);

    public void update(orderdetails addtocart);

    public void delete(int id);
}
