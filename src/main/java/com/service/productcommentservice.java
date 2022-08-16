package com.service;

import com.model.Productcomment;
import com.model.Productsrating;

import java.util.List;

public interface productcommentservice {
    public List<Productcomment> getAll();

    public void save(Productcomment user);
    public void saverating(Productsrating rating);

    public Productcomment get(int id);

    public void update(Productcomment products);

    public void delete(int id);
    public List<Productcomment> getAll(String category);
    public List<Productcomment> search(String firstName);
}
