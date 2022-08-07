package com.service;

import com.model.User;

import java.util.List;

public interface Userservices {
    public List<User> getAll();

    public void save(User user);

    public User get(String username);

    public void update(User user);

    public void delete(int id);
}
