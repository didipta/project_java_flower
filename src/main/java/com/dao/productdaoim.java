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
        Session session = this.sessionFactory.getCurrentSession();
        session.save(user);
    }

    @Override
    public products get(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        return session.get(products.class, id);
    }

    @Override
    public void update(products products) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(products);
        session.flush();
    }

    @Override
    public void delete(int id) {

    }

    @Override
    public List<products> getAll(String category) {
        Session session = sessionFactory.getCurrentSession();
        Query<products> userQuery = session.createQuery("from products where Category=:c", products.class);
        userQuery.setParameter("c", category);
        return userQuery.getResultList();
    }
    @Override
    public List<products> search(String Name) {
        Session session = sessionFactory.getCurrentSession();
        Query<products> userQuery = session.createQuery("from products where p_name like '%" + Name + "%'", products.class);
        return userQuery.getResultList();
    }
}
