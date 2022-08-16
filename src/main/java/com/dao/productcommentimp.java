package com.dao;

import com.model.Productcomment;
import com.model.Productsrating;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class productcommentimp implements productcommentdao{
    private final SessionFactory sessionFactory;

    public productcommentimp(SessionFactory sessionFactory) {

        this.sessionFactory = sessionFactory;
    }
    @Override
    public List<Productcomment> getAll() {
        return null;
    }

    @Override
    public void save(Productcomment user) {
        Session session = this.sessionFactory.getCurrentSession();

        session.save(user);
    }

    @Override
    public void saverating(Productsrating rating) {
        Session session = this.sessionFactory.getCurrentSession();

        session.save(rating);
    }

    @Override
    public Productcomment get(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        return session.get(Productcomment.class, id);
    }

    @Override
    public void update(Productcomment products) {

    }

    @Override
    public void delete(int id) {
        Productcomment productcomment = get(id);
        sessionFactory.getCurrentSession().delete(productcomment);
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
