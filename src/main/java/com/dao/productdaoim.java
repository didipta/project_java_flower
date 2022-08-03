package com.dao;

import com.model.products;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
@Repository
public class productdaoim implements productdao{
    private final SessionFactory sessionFactory;

    public productdaoim(SessionFactory sessionFactory) {

        this.sessionFactory = sessionFactory;
    }
    @Override
    public List<products> getAll() {
        Session session = this.sessionFactory.getCurrentSession();
        Query<products> userContactQuery = session.createQuery("from products", products.class);
        List<products> products = userContactQuery.getResultList();
        return products == null ? new ArrayList<products>() : products;
    }

    @Override
    public void save(products user) {

    }

    @Override
    public productdao get(int id) {
        return null;
    }

    @Override
    public void update(products products) {

    }

    @Override
    public void delete(int id) {

    }
}
