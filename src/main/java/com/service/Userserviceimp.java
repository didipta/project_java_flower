package com.service;

import com.dao.Userdaos;
import com.model.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class Userserviceimp implements Userservices{
    private final Userdaos userdaoim;


    public Userserviceimp(Userdaos userdaoim) {
        this.userdaoim = userdaoim;
    }

    @Override
    public List<User> getAll() {
        return null;
    }

    @Override
    @Transactional
    public void save(User user) {
        userdaoim.save(user);
    }

    @Override
    public User get(String username) {

        return userdaoim.get(username);
    }

    @Override
    public void update(User user) {
        userdaoim.update(user);
    }

    @Override
    public void delete(int id) {

    }
}
