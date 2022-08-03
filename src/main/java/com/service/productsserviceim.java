package com.service;

import com.dao.Userinfodao;
import com.dao.productdao;
import com.model.products;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class productsserviceim implements productservice{
    private final productdao productdao;

    public productsserviceim(productdao productdao) {
        this.productdao = productdao;
    }
    @Transactional
    @Override
    public List<products> getAll() {
        return productdao.getAll();
    }

    @Override
    public void save(products user) {

    }

    @Override
    public productdao get(int id) {
        return null;
    }

    @Override
    public void update(products products) {

    }

    @Override
    public void delete(int id) {

    }
}
