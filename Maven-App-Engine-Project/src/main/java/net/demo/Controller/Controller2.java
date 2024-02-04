package net.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.demo.Entities.OrderItem;
import net.demo.Services.EmailService;

@RestController
@RequestMapping("/customer")
public class Controller2 {
	
	@Autowired
	private EmailService emailService;
	
	@PostMapping("/order")
	public String order(@RequestBody OrderItem order) {
        System.out.println(order);
		
		String emailBody = order.toString();
		
		String value = emailService.email("soumikbose560@gmail.com", "test",emailBody);
		
		if(value.equals("Mail sent successfully !")) {
			emailService.email(order.getEmail(), "Order", "Thank you for your order");
		}
		
		
		return "OK";
		
	}

}
