package com.config;

import com.service.userdetailservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import javax.annotation.Resource;

@Configuration
@EnableWebSecurity
public class UsersecurityConfig {



//    public UsersecurityConfig(UserDetailsService userDetailsService) {
//        this.userDetailsService = userDetailsService;
//    }
    //
//    @Bean
//    public DaoAuthenticationProvider authProvider()
//
//    {
//        DaoAuthenticationProvider authProvider=new DaoAuthenticationProvider();
//        authProvider.setPasswordEncoder(passwordEncoder());
//        authProvider.setUserDetailsService(userDetailsService);
//        return authProvider;
//    }

//    @Bean
//    public PasswordEncoder passwordEncoder()
//    {
//        return new BCryptPasswordEncoder();
//    }
//    @Autowired
//    private PasswordEncoder passwordEncoder;
//    @Bean
//    public PasswordEncoder encoder()
//    {
//
//        return new BCryptPasswordEncoder();
//    }
//@Bean
//public PasswordEncoder passwordEncoder() {
//    return new BCryptPasswordEncoder();
//}
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http.csrf().disable()
                .authorizeRequests()
                .antMatchers("/api/**").hasAnyAuthority("user")
                .and().
                formLogin()
                .loginPage("/login")
                .usernameParameter("username")
                .passwordParameter("password")
                .loginProcessingUrl("/login")
                .successForwardUrl("/api/one")
                .permitAll();
        return http.build();

//        http.antMatcher("/api/**").csrf().disable()
//                .authorizeRequests().anyRequest().hasAnyAuthority("user")
//                .and()
//                .formLogin()
//                .loginPage("/login")
//                .usernameParameter("username")
//                .usernameParameter("password")
//                .loginProcessingUrl("/login")
//                .successForwardUrl("/api/one")
//                .permitAll().and();
//        return http.build();

    }
//        @Bean
//    public UserDetailsService userDetailsService()
//    {
//
//      UserDetails userDetails= User.builder()
//              .passwordEncoder(passwordEncoder::encode)
//              .username("diptasaha")
//              .password("Asd@1234")
//              .roles("user")
//              .build();
//      return new InMemoryUserDetailsManager(userDetails);
//    }

    @Bean
    public UserDetailsService userDetailsService() {

    return new userdetailservice();
    }

}
