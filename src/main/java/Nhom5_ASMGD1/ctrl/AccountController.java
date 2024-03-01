package Nhom5_ASMGD1.ctrl;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import Nhom5_ASMGD1.DAO.UserDao;
import Nhom5_ASMGD1.Model.Role;
import Nhom5_ASMGD1.Model.User;
import Nhom5_ASMGD1.Ultil.AESUtils;
import Nhom5_ASMGD1.Ultil.SendMail;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AccountController {

    @Autowired
    private PasswordEncoder passwordEncoder;
	@Autowired
	UserDao userDao;
	@Autowired
	HttpServletRequest request;
	private String confirmationCode;
	private String confirmationChangepassCode;
	@Autowired
	HttpSession httpSession;
	@Autowired
    private SendMail emailService;
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	@GetMapping("/register")
	public String register(Model model,User user) {
		model.addAttribute("user", user);
		return "register";
	}
	@GetMapping("/forgotpass")
	public String forgotpass(Model model,User user) {
		return "forgotpass";
	}
	@RequestMapping("/errorpage")
	public String error() {
		return "errorpage";
	}

	@PostMapping("/getcode")
	public ResponseEntity<String> sendEmail(@RequestParam String to) throws JsonProcessingException {
	    if (userDao.findByEmail(to) != null) {
	        Map<String, String> errorResponse = new HashMap<>();
	    	   errorResponse.put("error", "Email đã tồn tại.");
	           return ResponseEntity.badRequest().body(new ObjectMapper().writeValueAsString(errorResponse));
	           } else {
	      confirmationCode = generateConfirmationCode();
	        emailService.sendSimpleMessage(to, "Mã xác nhận đăng ký mới tài khoản", confirmationCode);
	        return ResponseEntity.ok("Mã xác nhận đã được gửi thành công.");
	    }
	}

	@PostMapping("/getcodeforgotpass")
	public ResponseEntity<String> sendEmailFogotpass(@RequestParam String email) throws Exception {
	    if (userDao.findByEmail(email) == null) {
	        Map<String, String> errorResponse = new HashMap<>();
	    	   errorResponse.put("error", "Email đã tồn tại.");
	           return ResponseEntity.badRequest().body(new ObjectMapper().writeValueAsString(errorResponse));
	           } else {
	        	   confirmationChangepassCode = generateConfirmationCode();
	        	   httpSession.setAttribute("confirmationChangepassCode", AESUtils.maHoa(confirmationChangepassCode));
	        emailService.sendSimpleMessage(email, "Mã xác nhận thay đổi mật khẩu: ", confirmationChangepassCode);
	        return ResponseEntity.ok("Mã xác nhận đã được gửi thành công.");
	    }
	}
	
	private String generateConfirmationCode() {
	    Random random = new Random();

	    StringBuilder sb = new StringBuilder();
	    for (int i = 0; i < 6; i++) {
	        sb.append(random.nextInt(10));
	    }
	    return sb.toString();
	}

	@PostMapping("/register")
	public String registerAccount(@RequestParam String codegmail,Model model , User user) {
		if(userDao.findByEmail(codegmail)==null && codegmail.equals(confirmationCode)) {
				String encodedPassword = passwordEncoder.encode(user.getPassword());
	            user.setPassword(encodedPassword);
	            user.setRole(Role.USER);
				userDao.save(user);
				return "redirect:/login?register=ok";
			}else {
				
				model.addAttribute("message","Mã xác thực không đúng");
				return "register";

			}
			

	}
	@PostMapping("/updateprofile")
	public String updateProfile(Model model, User user,@RequestParam String codeSDT) {
			var exitUser= userDao.findByEmail(user.getEmail());
			if(exitUser!=null && codeSDT.isEmpty()){
		        user.setSodt(exitUser.getSodt());
				user.setId(exitUser.getId());
				user.setPassword(exitUser.getPassword());
				user.setRole(Role.USER);
				user.setIdFacebook(exitUser.getIdFacebook());
				user.setStatus(true);				
				userDao.save(user);
				return "redirect:/saigonwaterbus/profile?mess=oke";
			}
			else if(exitUser.getSodt()!=user.getSodt()&& codeSDT.equals(httpSession.getAttribute("sdtCode"))) {
				user.setSodt(user.getSodt());
				user.setId(exitUser.getId());
				user.setPassword(exitUser.getPassword());
				user.setRole(Role.USER);
				user.setIdFacebook(exitUser.getIdFacebook());
				user.setStatus(true);
				user.setAuthSdt(true);
				userDao.save(user);
				return "redirect:/saigonwaterbus/profile?mess=oke";

			}else {
				return "redirect:/saigonwaterbus/profile?mess=loi";
			}
	}
	
	@PostMapping("/forgotpass")
	public String changepass(@RequestParam String email,@RequestParam String password ,@RequestParam String codegmail,Model model) throws Exception{
		System.out.println(httpSession.getAttribute("confirmationChangepassCode"));
		if(httpSession.getAttribute("confirmationChangepassCode")==null || !httpSession.getAttribute("confirmationChangepassCode").equals(AESUtils.maHoa(codegmail)) ) {
			model.addAttribute("codegmail",codegmail);
			model.addAttribute(password,"password");
			model.addAttribute("email",email);
			model.addAttribute("loi","Sai mã xác thực hoặc mã chưa được lấy kiểm tra lại");
			return "forgotpass";	
		}else {
			var user= userDao.findByEmail(email);
			user.setPassword(passwordEncoder.encode(password));
		userDao.save(user);	
	return "redirect:/logout?mess=doneforgotpass";	
		}
	}
	@GetMapping("/access-denied")
	public String testq() {
		return "accessdenied";
	}
	@RequestMapping("/fail_login")
	public String handlerFailLogin() {
		return "redirect:/login?error=fail";
	}

}
