package Nhom5_ASMGD1.Service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import Nhom5_ASMGD1.DAO.UserDao;
import Nhom5_ASMGD1.Model.Role;
import Nhom5_ASMGD1.Model.User;
import Nhom5_ASMGD1.Service.UserService;
import lombok.RequiredArgsConstructor;
@RequiredArgsConstructor
@Service
public class UserServiceImp implements UserDetailsService,UserService {
	@Autowired
    private final UserDao userRePository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User userOptional = userRePository.findByEmail(email);

        if (userOptional !=null) {
            return userOptional;
        } else {
            throw new UsernameNotFoundException("User not found");
        }
    }
    
    @Autowired
    private UserDao userDao;


    @Override
    public void createUserFromOAuth2User(OAuth2User oauth2User) {
        String email = oauth2User.getAttribute("email");
        String name = oauth2User.getAttribute("name");
        if (userDao.findByEmail(email)==null) {
            User user = new User();
            user.setEmail(email);
            user.setHoTen(name);  
            user.setRole(Role.USER);
            user.setDiaChi(oauth2User.getAttribute("locate"));
            userDao.save(user);
        }
    }

}
