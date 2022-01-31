package com.justsms.client.security;

import org.springframework.context.annotation.*;
import org.springframework.security.authentication.dao.*;
import org.springframework.security.config.annotation.authentication.builders.*;
import org.springframework.security.config.annotation.web.builders.*;
import org.springframework.security.config.annotation.web.configuration.*;
import org.springframework.security.core.userdetails.*;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.justsms.client.service.ClientDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {


	@Bean
    public UserDetailsService userDetailsService() {
        return new ClientDetailsServiceImpl();
    }
	
	@Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
	
	@Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService());
        authProvider.setPasswordEncoder(passwordEncoder());
         
        return authProvider;
    }
	
	@Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationProvider());
    }
	
	 @Override
	    protected void configure(HttpSecurity http) throws Exception {
		
		 http.authorizeRequests().antMatchers(resources).permitAll().
		 anyRequest().authenticated().and().formLogin()
		.loginPage("/Login").usernameParameter("username").passwordParameter("password")
		.defaultSuccessUrl("/Dashboard").permitAll().and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).permitAll().logoutSuccessUrl("/Login").and()
		.exceptionHandling().accessDeniedPage("/access-denied");
	    }
	 
	 String[] resources = new String[] { "/Login","/Dashboard","/Register","/forgot_password","/reset_password", "/css/**", "/fonts/**", "/images/**",
				"/js/**", "/assets/**", "/vendor/**"};

}
