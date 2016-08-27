package np.com.mshrestha.bookstore.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import np.com.mshrestha.bookstore.model.AdminUser;
import np.com.mshrestha.bookstore.model.Driver;
import np.com.mshrestha.bookstore.service.DriverService;

@Controller
@RequestMapping("/driver")
public class DriverController {
	
	@Autowired
	private DriverService driverService;

	@RequestMapping(value = { "/", "/driverList" })
	public String listDriver(Map<String, Object> map,HttpServletRequest req) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			map.put("driver", new Driver());
			map.put("driverList", driverService.listDrivers());

			map.put("driversList", "1");
			
			return "dashboard";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}

		
	}

	@RequestMapping("/get/{driverId}")
	public String getDriver(@PathVariable Long driverId, Map<String, Object> map,HttpServletRequest req) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			   System.out.println("driver Id " + driverId);
				Driver driver = driverService.getDriver(driverId);

				map.put("driver", driver);
				map.put("driverRegister", "1");

				return "dashboard";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}
		
      
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(@ModelAttribute("driver") Driver driver,
			BindingResult result,Map<String, Object> map,HttpServletRequest req) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			  map.put("driver", new Driver());
			   map.put("driverRegister", "1");

			return "dashboard";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}

		 
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveDriver(@ModelAttribute("driver") Driver driver,
			BindingResult result,Map<String, Object> map,HttpServletRequest req) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			driverService.saveDriver(driver);
			return "redirect:driverList";

			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}
		
			
	}

	@RequestMapping("/delete/{driverId}")
	public String deleteDriver(@PathVariable("driverId") Long id,HttpServletRequest req,Map<String, Object> map) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			driverService.deleteDriver(id);
			return "redirect:/driver/listDriver";

			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}

		
	}

}
