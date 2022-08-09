package com.dao;

import com.model.Userinfos;
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
    public List<Userinfos> getAll() {
        return null;
    }

    @Override
    public void save(Userinfos userinfo) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(userinfo);
    }

    @Override
    public Userinfos get(int id) {
        return null;
    }

    @Override
    public void update(Userinfos userinfo) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(userinfo);
    }

    @Override
    public void delete(int id) {

    }



}
