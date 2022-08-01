package com.dao;

import com.model.Userinfo;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class Userinfodaoim implements Userinfodao {

    private final SessionFactory sessionFactory;

    public Userinfodaoim(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Userinfo> getAll() {
        return null;
    }

    @Override
    public void save(Userinfo userinfo) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(userinfo);
    }

    @Override
    public Userinfo get(int id) {
        return null;
    }

    @Override
    public void update(Userinfo userinfo) {

    }

    @Override
    public void delete(int id) {

    }



}
