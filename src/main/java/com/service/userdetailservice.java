package com.service;

import com.dao.Userdao;
import com.dao.Userdaoim;
import com.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service

public class userdetailservice implements UserDetailsService {





    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
       User user=new infouser().getuser();
        if(user==null)
        {
            throw new UsernameNotFoundException("user not found");
        }
//        UserDetails userDetails= org.springframework.security.core.userdetails.User.withUsername("user")
//                .password("pss")
//                .authorities("user").build();
        return new CustomUserDetails(user);


    }

}
