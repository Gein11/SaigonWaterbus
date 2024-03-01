package Nhom5_ASMGD1.Service;

import org.springframework.stereotype.Service;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Service
public class TwilioSmsSender {

    public boolean sendSms(String to, String body) {
        try {
            Twilio.init("AC5ff0b131ed3be3967d9a76e29b15cdc0", "adf726566d6b4d36a7aaec39bb350676");

            Message message = Message.creator(
                    new PhoneNumber(to),
                    new PhoneNumber("+19152211626"),
                    body)
                    .create();

            System.out.println("Sent message: " + message.getSid());
            return true; // Gửi tin nhắn thành công
        } catch (Exception e) {
            System.err.println("Error sending message: " + e.getMessage());
            return false; // Gửi tin nhắn thất bại
        }
    }
}

