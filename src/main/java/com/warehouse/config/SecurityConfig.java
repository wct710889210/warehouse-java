package com.warehouse.config;

import org.aspectj.weaver.ast.And;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    DataSource dataSource;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth
//                .inMemoryAuthentication()
//                .withUser("user").password("123456").roles("USER").and()
//                .withUser("admin").password("123456").roles("USER,ADMIN");

        auth
                .jdbcAuthentication()
                .dataSource(dataSource)
                .usersByUsernameQuery(
                        "select username,password,enabled" +
                                " from user where username=?"
                );

    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http
                .authorizeRequests()
                    .antMatchers("/login").permitAll()
                    .antMatchers("/user/*").hasRole("ADMIN")
                    .antMatchers("/static/**").permitAll()
                    .anyRequest().authenticated()
                .and()
                .formLogin()
                        .loginPage("/login")
                .and()
                .rememberMe()
                    .tokenValiditySeconds(241960)
                    .key("warehouseKey")
                .and()
                .csrf()
                    .disable();
    }
}
