package Nhom5_ASMGD1.Config;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.core.oidc.user.DefaultOidcUser;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import Nhom5_ASMGD1.DAO.UserDao;
import Nhom5_ASMGD1.Service.impl.UserServiceImp;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Component
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	private final UserDao userRePository;
	@Autowired
	UserServiceImp usv;
	
	public CustomAuthenticationSuccessHandler(UserDao userRePository) {
		this.userRePository = userRePository;
	}

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		if (authentication.getPrincipal() instanceof DefaultOidcUser) {
			DefaultOidcUser oidcUser = (DefaultOidcUser) authentication.getPrincipal();
			String email = oidcUser.getEmail();

			String role = userRePository.findRoleByEmail(email);
			if (userRePository.findByEmail(email) == null) {
				usv.createUserFromOAuth2User(oidcUser);
				response.sendRedirect(request.getContextPath() + "/saigonwaterbus");
			} else {
				List<GrantedAuthority> authorities = new ArrayList<>();
				authorities.add(new SimpleGrantedAuthority(role));
				Authentication newAuthentication = new UsernamePasswordAuthenticationToken(
						userRePository.findByEmail(email), authentication.getCredentials(), authorities);
				SecurityContextHolder.getContext().setAuthentication(newAuthentication);
				if (role.equals("ADMIN")) {
					response.sendRedirect(request.getContextPath() + "/indexAdmin");
				} else {
					response.sendRedirect(request.getContextPath() + "/saigonwaterbus");
				}
			}
		} else {

			if (authentication.getAuthorities().stream().anyMatch(a -> a.getAuthority().equals("ADMIN"))) {
				response.sendRedirect("/asm/indexAdmin");
			} else {
				response.sendRedirect("/asm/saigonwaterbus");

			}
		}
		if (authentication.getPrincipal() instanceof OAuth2User) {

		}
	}
}
