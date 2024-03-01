package Nhom5_ASMGD1.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import Nhom5_ASMGD1.Model.Role;
import Nhom5_ASMGD1.Model.User;


public interface UserDao extends JpaRepository<User, Integer>{
		User findByEmail(String email);
	 User findByRole(Role role);
	 @Query("SELECT u.role FROM User u WHERE u.email = :email")
	  String findRoleByEmail(@Param("email") String email);
}
