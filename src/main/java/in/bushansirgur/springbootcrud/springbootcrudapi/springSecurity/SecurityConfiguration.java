package in.bushansirgur.springbootcrud.springbootcrudapi.springSecurity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.support.DefaultFormattingConversionService;
import org.springframework.format.support.FormattingConversionService;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@EnableWebSecurity
@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	@Autowired
	ToysAuthenticationProvider toysAuthenticationProvider;
	
	@Autowired
	ToysAuthenticationSuccessHandler toysAuthenticationSuccessHandler;
	
	@Autowired
	ToysAuthenticationFailureHandler toysAuthenticationFailureHandler;
	
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    	auth.authenticationProvider(toysAuthenticationProvider);
    }

    @Bean
    public PasswordEncoder getPasswordEncoder() {
        return NoOpPasswordEncoder.getInstance();
    }

    @Bean
	   @Override
	   public AuthenticationManager authenticationManagerBean() throws Exception {
    	System.out.println("Authentication calling");
	       return super.authenticationManagerBean();
	   }
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
    	http.csrf().disable();
        http.authorizeRequests()
                .antMatchers("/login").permitAll()
                .antMatchers("/").permitAll()
                .antMatchers("/toysRegistration").permitAll()
                .antMatchers("/saveToysVideos").permitAll()
                .antMatchers("/getToysVidoesList").permitAll()
                .antMatchers("/videoTest").permitAll()
                .antMatchers("/resources/**").permitAll()
                .antMatchers("/upload/**").permitAll()
                .antMatchers("/fileUpload").permitAll()
//                .antMatchers("/toysLoginForm/**").permitAll()
                .anyRequest().authenticated()
//                .antMatchers("/").permitAll()
                .and().formLogin().loginPage("/login")
                .usernameParameter("email")
    			.passwordParameter("password")
    			.failureHandler(toysAuthenticationFailureHandler)
    			.successHandler(toysAuthenticationSuccessHandler)
    			.and().sessionManagement().sessionCreationPolicy(SessionCreationPolicy.ALWAYS)
    			.and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout") ).deleteCookies("JSESSIONID")
    			.and().exceptionHandling().accessDeniedPage("/404");
        
        
//    			.defaultSuccessUrl("/toysHome");
    }
    
    
//    @Bean
//	public FormattingConversionService conversionService() {
//		FormattingConversionService conversionService = new DefaultFormattingConversionService();
//		System.out.println("conversion");
//		return conversionService;
//	}

}
