package Nhom5_ASMGD1.Config;


import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.client.registration.ClientRegistration;
import org.springframework.security.oauth2.client.registration.ClientRegistrationRepository;
import org.springframework.security.oauth2.client.registration.InMemoryClientRegistrationRepository;
import org.springframework.security.oauth2.core.AuthorizationGrantType;
import org.springframework.security.oauth2.core.ClientAuthenticationMethod;
import org.springframework.security.oauth2.core.oidc.IdTokenClaimNames;
import org.springframework.security.web.SecurityFilterChain;

import Nhom5_ASMGD1.DAO.UserDao;
import Nhom5_ASMGD1.Service.impl.UserServiceImp;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
    @Autowired
    private UserDao userRePository;
    ClientRegistrationRepository clientRegistrationRepository;

    @Autowired
    private CustomAuthenticationSuccessHandler customAuthenticationSuccessHandler;

    @Bean
    public UserDetailsService userDetailsService() {
        return new UserServiceImp(userRePository);
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            .csrf(AbstractHttpConfigurer::disable)
            .authorizeHttpRequests(req -> req
                .requestMatchers("/indexAdmin","/tool/*").hasAnyAuthority("ADMIN")
                .requestMatchers("/profile/*","/profile","/saigonwaterbus/profile").authenticated()
                .anyRequest().permitAll()
            )
            .formLogin(form -> form
                .loginPage("/login")
//                .loginProcessingUrl("/logincheck")
                .failureUrl("/fail_login")
                .successHandler(customAuthenticationSuccessHandler)
            ) 
            .oauth2Login(oauth2 -> oauth2
                .clientRegistrationRepository(clientRegistrationRepository())
                .loginPage("/login")
//                .loginProcessingUrl("/logincheck")
                .failureUrl("/fail_login")
                .successHandler(customAuthenticationSuccessHandler)
            )
            .logout(logout -> logout
                    .logoutUrl("/logout")
//                    .logoutSuccessUrl("/login")
                    .invalidateHttpSession(true)
                    .deleteCookies("JSESSIONID")
                )
            .exceptionHandling(exceptionHandling -> exceptionHandling
                    .accessDeniedPage("/access-denied")
//                    .authenticationEntryPoint((request, response, authException) -> response.sendRedirect("/errorpage"))
            );
        return http.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public AuthenticationManager authenticationManager(UserDetailsService userDetailsService,
                                                        PasswordEncoder passwordEncoder) {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(userDetailsService);
        authenticationProvider.setPasswordEncoder(passwordEncoder);

        ProviderManager providerManager = new ProviderManager(authenticationProvider);
        providerManager.setEraseCredentialsAfterAuthentication(false);

        return providerManager;
    }

		@Bean
		public ClientRegistrationRepository clientRegistrationRepository() {
		    List<ClientRegistration> registrations = Arrays.asList(
		        googleClientRegistration(),
		        facebookClientRegistration()
		    );

		    return new InMemoryClientRegistrationRepository(registrations);
		}


		private ClientRegistration googleClientRegistration() {
			return ClientRegistration.withRegistrationId("google")
				.clientId("637719712288-rg73s2lm0u37rsp47o25svm5rjs3pg5h.apps.googleusercontent.com")
				.clientSecret("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")
				.clientAuthenticationMethod(ClientAuthenticationMethod.CLIENT_SECRET_BASIC)
				.authorizationGrantType(AuthorizationGrantType.AUTHORIZATION_CODE)
				.redirectUri("{baseUrl}/login/oauth2/code/{registrationId}")
				.scope("openid", "profile", "email", "address", "phone")
				.authorizationUri("https://accounts.google.com/o/oauth2/v2/auth")
				.tokenUri("https://www.googleapis.com/oauth2/v4/token")
				.userInfoUri("https://www.googleapis.com/oauth2/v3/userinfo")
				.userNameAttributeName(IdTokenClaimNames.SUB)
				.jwkSetUri("https://www.googleapis.com/oauth2/v3/certs")
				.clientName("Google")
				.build();
		}
	    public ClientRegistration facebookClientRegistration() {
	        return ClientRegistration.withRegistrationId("facebook")
	                .clientId("1310440712956381")
	                .clientSecret("05241f12d60ee62a87fc06e0c2f6936c")
	                .clientAuthenticationMethod(ClientAuthenticationMethod.CLIENT_SECRET_BASIC)
	                .authorizationGrantType(AuthorizationGrantType.AUTHORIZATION_CODE)
					.redirectUri("{baseUrl}/login/oauth2/code/{registrationId}")
	                .scope("email,public_profile")
	                .authorizationUri("https://www.facebook.com/dialog/oauth")
	                .tokenUri("https://graph.facebook.com/v13.0/oauth/access_token")
	                .userInfoUri("https://graph.facebook.com/me?email")
	                .userNameAttributeName("id")
	                .clientName("Facebook")
	                .build();
	    }
	}
		


