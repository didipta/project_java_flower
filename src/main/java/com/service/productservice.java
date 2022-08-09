package com.service;

import com.dao.productdao;
import com.model.products;

import java.util.List;

public interface productservice {
    public List<products> getAll();

    public void save(products user);

    public products get(int id);

    public void update(products products);

    public void delete(int id);
}
