package es.ucm.fdi.iw.controller;

import java.security.Principal;

import javax.persistence.EntityManager;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import es.ucm.fdi.iw.LocalData;
import es.ucm.fdi.iw.model.User;

@Controller	
public class RootController {
	
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private EntityManager entityManager;


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
	
	@GetMapping("/estadisticas")   // <--- asocia URL con funcion
	public String estadisticas() {   //  <--- nombre funcion da igual
		return "estadisticas";    // <--- nombre de vista, sin .jsp
	}
	
	@GetMapping("/inicio")   // <--- asocia URL con funcion
	public String inicio() {   //  <--- nombre funcion da igual
		return "inicio";    // <--- nombre de vista, sin .jsp
	}
	
	@GetMapping("/inicioSesion")   // <--- asocia URL con funcion
	public String inicioSesion() {   //  <--- nombre funcion da igual
		return "inicioSesion";    // <--- nombre de vista, sin .jsp
	}
	
	@GetMapping("/overview")   // <--- asocia URL con funcion
	public String overview() {   //  <--- nombre funcion da igual
		return "overview";    // <--- nombre de vista, sin .jsp
	}
	
	@GetMapping("/registro")   // <--- asocia URL con funcion
	public String registro() {   //  <--- nombre funcion da igual
		return "registro";    // <--- nombre de vista, sin .jsp
	}
	
	@GetMapping("/crearPersonaje")   // <--- asocia URL con funcion
	public String crearPersonaje() {   //  <--- nombre funcion da igual
		return "crearPersonaje";    // <--- nombre de vista, sin .jsp
	}
	
	@GetMapping({"/", "/index"})
	public String root(Model model, Principal principal) {
		log.info(principal.getName() + " de tipo " + principal.getClass());		
		// org.springframework.security.core.userdetails.User
		return "home";
	}
	
	@GetMapping("/login")
	public String login() {
		return "inicioSesion";
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "logout";
	}
	
	@GetMapping("/upload")
	public String upload() {
		return "upload";
	}
	
	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	@Transactional
	public String addUser(
			@RequestParam String login, 
			@RequestParam String password,
			@RequestParam String email,
			@RequestParam(required=false) String isAdmin, Model m) {
		User u = new User();
		u.setLogin(login);
		u.setPassword(passwordEncoder.encode(password));
		u.setRoles("on".equals(isAdmin) ? "ADMIN,USER" : "USER");
		u.setEmail(email);
		u.setElo(100);
		u.setHumildones(800);
		entityManager.persist(u);
		entityManager.flush();
		m.addAttribute("users", entityManager
				.createQuery("select u from User u").getResultList());
		
		return "inicio";
	}
	
}
