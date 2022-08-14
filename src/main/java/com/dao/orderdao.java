package com.dao;


import com.model.orders;

import java.util.List;

public interface orderdao {
    public List<orders> getAll(String username);

    public void save(orders addtocart);

    public orders get(int id);

    public void update(orders addtocart);

    public void delete(int id);
}
