package es.ucm.fdi.iw.controller;

import java.security.Principal;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller	
public class RootController {

	private static Logger log = Logger.getLogger(RootController.class);
	
    @ModelAttribute
    public void addAttributes(Model model) {
        model.addAttribute("s", "/static");
    }
    
	@GetMapping("/hola")   // <--- asocia URL con funcion
	public String hola() {   //  <--- nombre funcion da igual
		return "hola";    // <--- nombre de vista, sin .jsp
	}

	@GetMapping("/tienda")   // <--- asocia URL con funcion
	public String tienda() {   //  <--- nombre funcion da igual
		return "tienda";    // <--- nombre de vista, sin .jsp
	}
	
	@GetMapping({"/", "/index"})
	public String root(Model model, Principal principal) {
		log.info(principal.getName() + " de tipo " + principal.getClass());		
		// org.springframework.security.core.userdetails.User
		return "home";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "logout";
	}
	
	@GetMapping("/upload")
	public String upload() {
		return "upload";
	}
}
