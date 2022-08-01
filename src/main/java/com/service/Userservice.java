package com.service;

import com.model.User;

import java.util.List;

public interface Userservice {

    public List<User> getAll();

    public void save(User user);

    public User get(String username,String password);

    public void update(User user);

    public void delete(int id);
}
