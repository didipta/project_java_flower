package com.service;

import com.dao.Userdao;
import com.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
public class infouser {

   @Autowired
   private Userdao userdao;



    public User getuser(){
        return userdao.get("diptasaha");
    }
}
