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
			BindingResult result,ModelMap  map) {
		
		map.put("adminUser",adminUser);
		return "/admin/logginFrom";
	}

	@RequestMapping("/adminlogin")
	public String AdminLogin(ModelMap model, HttpServletRequest req, @RequestParam("userName") 
	String username,  @RequestParam("password") String password,ModelMap  map){
		String loginMsg = "Login Success!";

			
			AdminUser adminUser = adminUserService.doLogin(username,password);
			if(adminUser==null){
				loginMsg = "Invalid Username  Passwords";
				map.put("stat","-1");
				map.put("msg",loginMsg);
				map.put("adminUser",new AdminUser());
				return "/admin/logginFrom";
			}else{
				map.put("stat","0");
				map.put("msg",loginMsg);
				HttpSession sess = req.getSession();
				sess.setAttribute("adminUser", adminUser);
				return "redirect:dashboard";
				
			}
	}
	
	
	@RequestMapping(value = { "/dashboard"})
	public String dashboard(@ModelAttribute("adminUser") AdminUser adminUser,
			BindingResult result,ModelMap  map,HttpServletRequest req) {
		
		
		if (req.getSession().getAttribute("adminUser")!=null){
			map.put("vehicle", new Vehicle());
			map.put("vehicleList", vehicleService.listVehicles());
			
			map.put("vehicleRegister", "0");
			map.put("vehicleListId", "1");
			
			return "dashboard";
			
		}else {
			
			map.put("adminUser",new AdminUser());
			return "/admin/logginFrom";
		}
		
		
	}

}
