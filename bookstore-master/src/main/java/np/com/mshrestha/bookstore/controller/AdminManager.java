package np.com.mshrestha.bookstore.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import np.com.mshrestha.bookstore.model.AdminUser;
import np.com.mshrestha.bookstore.model.Book;
import np.com.mshrestha.bookstore.model.Vehicle;
import np.com.mshrestha.bookstore.service.AdminUserService;
import np.com.mshrestha.bookstore.service.VehicleService;


@Controller
@RequestMapping("/admin")
public class AdminManager {
	
	@Autowired
	private AdminUserService adminUserService;
	
	@Autowired
	private VehicleService vehicleService;
	
	@RequestMapping(value = { "/", "/welcome" })
	public String welcome(ModelMap  map) {
		return "/admin/welcome";
	}
	
	@RequestMapping(value = { "/login"})
	public String login(@ModelAttribute("adminUser") AdminUser adminUser,
			BindingResult result) {
		return "/admin/logginFrom";
	}

	@RequestMapping("/adminlogin")
	public String AdminLogin(ModelMap model, HttpServletRequest req, @RequestParam("userName") String username,  @RequestParam("password") String password){
		String loginMsg = "Login Success!";
		try {
			
			AdminUser adminUser = adminUserService.doLogin(username,password);
			if(adminUser==null){
				loginMsg = "Invalid Username  Passwords";
				model.addAttribute("stat","-1");
				model.addAttribute("msg",loginMsg);
			}else{
				model.addAttribute("stat","0");
				model.addAttribute("msg",loginMsg);
				HttpSession sess = req.getSession();
				sess.setAttribute("adminUser", adminUser);
				
			}

		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("stat","-1");
			loginMsg = "Unknown Error Occured!";
			model.addAttribute("msg",loginMsg);
		}
		return "welcome";
	}
	
	
	@RequestMapping(value = { "/dashboard"})
	public String dashboard(@ModelAttribute("adminUser") AdminUser adminUser,
			BindingResult result,ModelMap  map) {
		
		map.put("vehicle", new Vehicle());
		map.put("vehicleList", vehicleService.listVehicles());
		
		map.put("vehicleRegister", "0");
		map.put("vehicleListId", "1");
		
		return "dashboard";
	}
	
	@RequestMapping(value = { "/paly"})
	public String paly(@ModelAttribute("adminUser") AdminUser adminUser,
			BindingResult result) {
		
		return "redirect:http://localhost:8080/Wap/JSP/ErrorPage.jsp?error=System_error";
	}


}
