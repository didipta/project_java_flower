package com.service;

import com.model.Userinfos;

import java.util.List;

public interface Userinfoservice {
    public List<Userinfos> getAll();

    public void save(Userinfos user);

    public Userinfos get(int id);

    public void update(Userinfos user);

    public void delete(int id);
}
