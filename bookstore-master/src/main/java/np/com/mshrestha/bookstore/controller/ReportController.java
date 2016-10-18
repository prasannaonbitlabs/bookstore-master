package np.com.mshrestha.bookstore.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import np.com.mshrestha.bookstore.model.AdminUser;

@Controller
@RequestMapping("/reports")
public class ReportController {
   
	
	@RequestMapping(value = { "/drivers"})
	public String login(@ModelAttribute("adminUser") AdminUser adminUser,
			BindingResult result,ModelMap  map,HttpServletRequest req) {
		
		System.out.println("repo");
		
		if (req.getSession().getAttribute("adminUser")!=null){
			System.out.println("repo......");
			map.put("driversReportID","1");
			return "dashboard";
			
		}else {
			
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}
	}
}
