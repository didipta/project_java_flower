package com.service;

import com.dao.productcommentdao;
import com.model.Productcomment;
import com.model.Productsrating;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class productcommentserimp implements productcommentservice{
    private final productcommentdao productcommentdao;

    public productcommentserimp(com.dao.productcommentdao productcommentdao) {
        this.productcommentdao = productcommentdao;
    }

    @Override
    public List<Productcomment> getAll() {
        return productcommentdao.getAll();
    }

    @Override
    public void save(Productcomment user) {
      productcommentdao.save(user);
    }

    @Override
    public void saverating(Productsrating rating) {
     productcommentdao.saverating(rating);
    }

    @Override
    public Productcomment get(int id) {
        return null;
    }

    @Override
    public void update(Productcomment products) {

    }

    @Override
    public void delete(int id) {
    productcommentdao.delete(id);
    }

    @Override
    public List<Productcomment> getAll(String category) {
        return null;
    }

    @Override
    public List<Productcomment> search(String firstName) {
        return null;
    }
}
