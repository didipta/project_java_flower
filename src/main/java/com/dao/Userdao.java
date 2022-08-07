package com.dao;

import com.model.User;

public interface UserDao {

    User findByUsername(String username);
}
