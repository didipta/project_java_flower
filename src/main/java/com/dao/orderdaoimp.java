package com.dao;


import com.model.orders;
import com.model.products;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
@Repository
public class orderdaoimp implements orderdao{

    private final SessionFactory sessionFactory;

    public orderdaoimp(SessionFactory sessionFactory) {

        this.sessionFactory = sessionFactory;
    }
    @Override
    public List<orders> getAll(String username) {
        Session session = this.sessionFactory.getCurrentSession();
        Query<orders> userContactQuery = session.createQuery("from orders where username=:u", orders.class);
        userContactQuery.setParameter("u", username);
        List<orders> orders = userContactQuery.getResultList();
        return orders == null ? new ArrayList<orders>() : orders;
    }

    @Override
    public List<orders> getAlls() {
        Session session = this.sessionFactory.getCurrentSession();
        Query<orders> userContactQuery = session.createQuery("from orders", orders.class);
        List<orders> orders = userContactQuery.getResultList();
        return orders == null ? new ArrayList<orders>() : orders;
    }

    @Override
    public void save(orders order) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(order);
    }

    @Override
    public orders get(int id) {
        return null;
    }

    @Override
    public void update(orders addtocart) {

    }

    @Override
    public void delete(int id) {

    }
}
