package net.demo.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {
	
	@Autowired
	private JavaMailSender mailSender;
	
	
	public String email(String To,String Subject,String Text) {
		
		SimpleMailMessage simpleMail = new SimpleMailMessage();
		
		simpleMail.setFrom("soumikbose650@gmail.com");
		simpleMail.setTo(To);
		simpleMail.setSubject(Subject);
		simpleMail.setText(Text);
		
		mailSender.send(simpleMail);
		
		System.out.println("Mail sent successfully !");
		
		return "Mail sent successfully !";
	}

}
