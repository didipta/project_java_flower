package com.dao;

import com.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
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
    public User get(String username,String password) {

        Session session = sessionFactory.getCurrentSession();
        Query<User> userQuery = session.createQuery("from User where user_name   'username'  and password 'password' ", User.class);
        return userQuery.getSingleResult();
    }

    @Override
    public void update(User user) {

    }

    @Override
    public void delete(int id) {

    }
}
