package net.demo.Controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import net.demo.Services.OrderService;

@Controller
public class Controller1 {

	@GetMapping("/")
	public String home() {
		return "home";
	}
	
	
}
