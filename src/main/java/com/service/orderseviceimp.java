package com.service;

import com.dao.orderdao;
import com.model.orders;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class orderseviceimp implements orderservice{
    private final orderdao orderdaos;

    public orderseviceimp(com.dao.orderdao orderdaos) {
        this.orderdaos = orderdaos;
    }

    @Override
    @Transactional(readOnly = true)
    public List<orders> getAll(String username) {
        return orderdaos.getAll(username);
    }

    @Override
    public List<orders> getAlls() {
        return orderdaos.getAlls();
    }

    @Transactional
    @Override
    public void save(orders addtocart) {
     orderdaos.save(addtocart);
    }

    @Override
    public orders get(int id) {
        return orderdaos.get(id);
    }

    @Override
    public void update(orders addtocart) {
     orderdaos.update(addtocart);
    }

    @Override
    public void delete(int id) {

    }
}
