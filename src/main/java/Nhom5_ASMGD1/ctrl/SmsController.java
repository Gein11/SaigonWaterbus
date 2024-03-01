package Nhom5_ASMGD1.ctrl;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import Nhom5_ASMGD1.Model.User;
import Nhom5_ASMGD1.Service.TwilioSmsSender;
import jakarta.servlet.http.HttpSession;

@RestController
public class SmsController {

	@Autowired
	private TwilioSmsSender smsSender;
	@Autowired
	HttpSession sdtCode;

	@PostMapping("/sendsms")
	public ResponseEntity<String> sendSms(Model mode,User user) {
		
		String confirmcode = generateConfirmationCode();
		sdtCode.setAttribute("sdtCode", confirmcode);
		boolean sent = smsSender.sendSms("+84" + user.getSodt(), "Mã xác thực của bạn là:" + confirmcode);

		if (sent) {
			return ResponseEntity.ok("Tin nhắn đã được gửi thành công");
		} else {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Gửi tin nhắn thất bại");
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
}