package com.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class MySpringConfiguration extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		//http.authorizeRequests().anyRequest().authenticated().and().httpBasic();
		//http.authorizeRequests().anyRequest().authenticated().and().formLogin();
		//http.csrf().disable();
		http.authorizeRequests().antMatchers("/user/**").hasRole("user").antMatchers("/admin/**").hasRole("admin").and().httpBasic();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("kaushal").password(this.passwordEncoder().encode("kaushal")).roles("user");
		auth.inMemoryAuthentication().withUser("admin").password(this.passwordEncoder().encode("admin")).roles("admin");
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
				
	}
	
	
}
