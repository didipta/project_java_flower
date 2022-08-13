package com.dao;

import com.model.addtocarts;
import com.model.products;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
@Repository
@Transactional
public class addtocartimp implements addtocartdao {
    private final SessionFactory sessionFactory;

    public addtocartimp(SessionFactory sessionFactory) {

        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<addtocarts> getAll(String name) {

        Session session = this.sessionFactory.getCurrentSession();
        Query<addtocarts> userContactQuery = session.createQuery("from addtocarts where username=:u", addtocarts.class);
        userContactQuery.setParameter("u", name);
        List<addtocarts> addtocarts = userContactQuery.getResultList();
        return addtocarts == null ? new ArrayList<addtocarts>() : addtocarts;
    }

    @Override
    public void save(addtocarts addtocart) {
        Session session = this.sessionFactory.getCurrentSession();

        System.out.println(session.save(addtocart));
    }

    @Override
    public addtocarts get(int id) {

        Session session = this.sessionFactory.getCurrentSession();
        return session.get(addtocarts.class, id);
    }

    @Override
    public void update(addtocarts addtocart) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(addtocart);
    }

    @Override
    public void delete(int id) {
        addtocarts addtocarts = get(id);
        sessionFactory.getCurrentSession().delete(addtocarts);
    }
}
