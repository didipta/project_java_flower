package com.dao;

import com.model.Userinfos;

import java.util.List;

public interface Userinfodao {
    public List<Userinfos> getAll();

    public void save(Userinfos userinfo);

    public Userinfos get(int id);

    public void update(Userinfos userinfo);

    public void delete(int id);
}
