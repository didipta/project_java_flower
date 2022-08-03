package com.config;

import com.dao.Userdao;
import com.model.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class CustomUserDetailservice implements UserDetailsService {
    private Userdao userdao;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
       User user= userdao.get(username);
       if(user==null)
       {
           throw new UsernameNotFoundException("no user found for the given username");
       }
        return new CustomUserDetail(user);
    }
}
