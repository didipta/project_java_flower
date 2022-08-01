package com.service;

import com.dao.Userinfodao;
import com.dao.Userinfodaoim;
import com.model.Userinfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class Userinfoserviceim implements Userinfoservice {

    private final Userinfodao userinfodaoim;

    public Userinfoserviceim(Userinfodao userinfodaoim) {
        this.userinfodaoim = userinfodaoim;
    }
    @Transactional
    @Override
    public List<Userinfo> getAll() {
        return null;
    }

    @Override
    public void save(Userinfo user) {
        userinfodaoim.save(user);
    }

    @Override
    public Userinfo get(int id) {
        return null;
    }

    @Override
    public void update(Userinfo user) {

    }

    @Override
    public void delete(int id) {

    }
}
