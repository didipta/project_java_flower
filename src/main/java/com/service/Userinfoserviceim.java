package com.service;

import com.dao.Userinfodao;
import com.model.Userinfos;
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
    public List<Userinfos> getAll() {
        return null;
    }

    @Override
    public void save(Userinfos user) {
        userinfodaoim.save(user);
    }

    @Override
    public Userinfos get(int id) {
        return null;
    }

    @Override
    public void update(Userinfos user) {
  userinfodaoim.update(user);
    }

    @Override
    public void delete(int id) {

    }
}
