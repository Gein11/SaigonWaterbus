package Nhom5_ASMGD1.Ultil;

import java.util.Random;

public class generateConfirmtionCode {
	private String code;
	
	private String generateConfirmationCode() {
	    Random random = new Random();

	    StringBuilder sb = new StringBuilder();
	    for (int i = 0; i < 6; i++) {
	        sb.append(random.nextInt(10));
	    }

	    return sb.toString();
	}
}
