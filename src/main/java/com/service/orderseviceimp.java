package com.service;

import com.dao.orderdao;
import com.model.orders;

import java.util.List;

public class orderseviceimp implements orderservice{
    private final orderdao orderdaos;

    public orderseviceimp(com.dao.orderdao orderdaos) {
        this.orderdaos = orderdaos;
    }

    @Override
    public List<orders> getAll(String username) {
        return orderdaos.getAll(username);
    }

    @Override
    public void save(orders addtocart) {
     orderdaos.save(addtocart);
    }

    @Override
    public orders get(int id) {
        return null;
    }

    @Override
    public void update(orders addtocart) {

    }

    @Override
    public void delete(int id) {

    }
}
