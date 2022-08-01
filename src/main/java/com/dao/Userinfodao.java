package com.dao;

import com.model.Userinfo;

import java.util.List;

public interface Userinfodao {
    public List<Userinfo> getAll();

    public void save(Userinfo userinfo);

    public Userinfo get(int id);

    public void update(Userinfo userinfo);

    public void delete(int id);
}
