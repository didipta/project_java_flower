package com.dao;

import com.model.User;
import com.model.products;

import java.util.List;

public interface productdao {
    public List<products> getAll();

    public void save(products user);

    public productdao get(int id);

    public void update(products products);

    public void delete(int id);
}
