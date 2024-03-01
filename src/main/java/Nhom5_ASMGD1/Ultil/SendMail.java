package Nhom5_ASMGD1.Ultil;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class SendMail {

    @Autowired
    private JavaMailSender emailSender;

    public void sendSimpleMessage(String to, String subject, String text) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setSubject(subject);
        message.setText(text);
        emailSender.send(message);
    }
    public void sendMessageWithAttachment(
    		  String to, String subject, String text, String pathToAttachment) throws MessagingException, IOException {   	
    		    MimeMessage message = emailSender.createMimeMessage();   		     
    		    MimeMessageHelper helper = new MimeMessageHelper(message, true); 		    
    		    helper.setTo(to);
    		    helper.setSubject(subject);
    		    helper.setText(text);     
    		    Path path = Paths.get(pathToAttachment);
    	        ByteArrayResource resource;		
				resource = new ByteArrayResource(Files.readAllBytes(path));
    	        String fileName = path.getFileName().toString();
    	        helper.addAttachment(fileName, resource, "image/png");
    	        emailSender.send(message);
    		}

}

