package com.service;

import com.dao.oderdetaildao;
import com.model.orderdetails;

import java.util.List;

public class orderdetailsserviceimp implements orderdetailservice{
    private final oderdetaildao oderdetaildaos;

    public orderdetailsserviceimp(oderdetaildao oderdetaildaos) {
        this.oderdetaildaos = oderdetaildaos;
    }

    @Override
    public List<orderdetails> getAll(String username) {
        return null;
    }

    @Override
    public void save(orderdetails addtocart) {

    }

    @Override
    public orderdetails get(int id) {
        return null;
    }

    @Override
    public void update(orderdetails addtocart) {

    }

    @Override
    public void delete(int id) {

    }
}
