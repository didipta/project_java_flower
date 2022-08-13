package com.service;

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
    public products get(int id) {
        return productdao.get(id);
    }

    @Override
    public void update(products products) {

    }

    @Override
    public List<products> getAll(String category) {
        return productdao.getAll(category);
    }

    @Override
    public List<products> search(String Name) {
        return productdao.search(Name);
    }

    @Override
    public void delete(int id) {

    }
}
