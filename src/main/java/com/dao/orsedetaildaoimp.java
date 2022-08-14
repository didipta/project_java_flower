package com.dao;

import com.model.orderdetails;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
@Repository
@Transactional
public class orsedetaildaoimp implements oderdetaildao{
    private final SessionFactory sessionFactory;

    public orsedetaildaoimp(SessionFactory sessionFactory) {

        this.sessionFactory = sessionFactory;
    }
    @Override
    public List<orderdetails> getAll(String username) {
        Session session = this.sessionFactory.getCurrentSession();
        Query<orderdetails> userContactQuery = session.createQuery("from orderdetails where username=:u", orderdetails.class);
        userContactQuery.setParameter("u", username);
        List<orderdetails> orders = userContactQuery.getResultList();
        return orders == null ? new ArrayList<orderdetails>() : orders;
    }

    @Override
    public void save(orderdetails addtocart) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(addtocart);
    }

    @Override
    public orderdetails get(int id) {
        return null;
    }

    @Override
    public void update(orderdetails addtocart) {

    }

    @Override
    public void delete(int id) {

    }
}
