package com.config;

import org.springframework.cglib.proxy.NoOp;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfiguration;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class AppSecurityConfig{
    @Bean
    public UserDetailsService userDetailsService()
    {
        return new CustomUserDetailservice();
    }
    @Bean
    public PasswordEncoder passwordEncoder()
    {
        return NoOpPasswordEncoder.getInstance();
    }
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception
    {
        http.antMatcher("/Userview/**").authorizeRequests().anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/user/Sign_in")
                .usernameParameter("username")
                .loginProcessingUrl("/user/Sign_in")
                .defaultSuccessUrl("/user/home")
                .failureForwardUrl("/user/fail")
                .and()
                .logout().logoutUrl("/user/logout")
                .logoutSuccessUrl("/");
        return http.build();


    }
}
