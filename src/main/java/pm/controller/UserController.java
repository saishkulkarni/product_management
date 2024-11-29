package pm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pm.dto.MyUser;
import pm.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService service;

	@GetMapping({ "/", "/login" })
	public String loadLogin() {
		return "login.jsp";
	}

	@GetMapping("/home")
	public String loadHome(HttpSession session, ModelMap map) {
		return service.loadHome(session,map);
	}

	@GetMapping("/register")
	public String loadRegister() {
		return "register.jsp";
	}

	@PostMapping("/register")
	public String register(MyUser user, ModelMap map) {
		return service.register(user, map);
	}

	@PostMapping("/login")
	public String login(@RequestParam String username, @RequestParam String password, ModelMap map,
			HttpSession session) {
		return service.login(username, password, map, session);
	}

	@GetMapping("/logout")
	public String logout(HttpSession session, ModelMap map) {
		return service.logout(session,map);
	}
	
}
