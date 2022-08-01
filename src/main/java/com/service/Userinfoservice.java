package com.service;

import com.model.Userinfo;

import java.util.List;

public interface Userinfoservice {
    public List<Userinfo> getAll();

    public void save(Userinfo user);

    public Userinfo get(int id);

    public void update(Userinfo user);

    public void delete(int id);
}
