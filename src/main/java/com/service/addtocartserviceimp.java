package com.service;

import com.dao.addtocartdao;
import com.model.addtocarts;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class addtocartserviceimp implements addtocartservice{

    private final addtocartdao addtocartdaos;

    public addtocartserviceimp(addtocartdao addtocartdaos ){
        this.addtocartdaos = addtocartdaos;
    }

    @Transactional
    @Override
    public List<addtocarts> getAll(String username) {

        return addtocartdaos.getAll(username);
    }

    @Override
    public void save(addtocarts addtocart) {
        addtocartdaos.save(addtocart);
    }

    @Override
    public addtocarts get(String username) {
        return null;
    }

    @Override
    public void update(addtocarts addtocart) {

    }

    @Override
    public void delete(int id) {

    }
}
