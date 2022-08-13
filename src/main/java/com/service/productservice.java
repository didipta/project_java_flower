package com.service;

import com.dao.productdao;
import com.model.products;

import java.util.List;

public interface productservice {
    public List<products> getAll();

    public void save(products user);

    public products get(int id);

    public void update(products products);
    public List<products> getAll(String category);

    public List<products> search(String Name);

    public void delete(int id);
}
