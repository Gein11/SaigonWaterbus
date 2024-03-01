package Nhom5_ASMGD1.Service;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.oauth2.core.user.OAuth2User;

import Nhom5_ASMGD1.Model.User;



public interface UserService {
//	UserDetailsService userDetailsService();
 
	void createUserFromOAuth2User(OAuth2User oauth2User);
}
