package com.dao;



import com.model.orderdetails;

import java.util.List;

public interface oderdetaildao {
    public List<orderdetails> getAll(String username);

    public void save(orderdetails addtocart);

    public orderdetails get(int id);

    public void update(orderdetails addtocart);

    public void delete(int id);

}
