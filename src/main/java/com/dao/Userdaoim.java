package com.dao;

import com.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Repository
@Transactional
public class Userdaoim implements Userdao {
    private final SessionFactory sessionFactory;

    public Userdaoim(SessionFactory sessionFactory) {

        this.sessionFactory = sessionFactory;
    }
    @Override
    public List<User> getAll() {
        return null;
    }

    @Override
    public void save(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(user);
    }

    @Override
    public User get(String username) {

//        Session session = sessionFactory.getCurrentSession();
////        Query<User> userQuery = session.createQuery("from User where user_name=username  and password=password ", User.class);
//        Query<User> q=session.createQuery("from User where user_name=:u and password=:p",User.class);
////        return userQuery.getSingleResult();
//           q.setParameter("u",username);
//           q.setParameter("p",password);
//           return q.getSingleResult();

        Session session = sessionFactory.getCurrentSession();
//        Query<User> userQuery = session.createQuery("from User where user_name=username  and password=password ", User.class);
        Query<User> q=session.createQuery("from User where user_name=:u",User.class);
//        return userQuery.getSingleResult();
        q.setParameter("u",username);
        return q.getSingleResult();


    }

    @Override
    public void update(User user) {

    }

    @Override
    public void delete(int id) {

    }
}
