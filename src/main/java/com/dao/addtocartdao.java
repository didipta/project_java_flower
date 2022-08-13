package com.dao;

import com.model.addtocarts;

import java.util.List;

public interface addtocartdao {

    public List<addtocarts> getAll(String username);

    public void save(addtocarts addtocart);

    public addtocarts get(String username);

    public void update(addtocarts addtocart);

    public void delete(int id);
}
