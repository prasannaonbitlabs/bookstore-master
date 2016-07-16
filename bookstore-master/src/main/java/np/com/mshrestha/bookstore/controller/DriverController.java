package np.com.mshrestha.bookstore.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import np.com.mshrestha.bookstore.model.Driver;
import np.com.mshrestha.bookstore.service.DriverService;

@Controller
@RequestMapping("/driver")
public class DriverController {
	
	@Autowired
	private DriverService driverService;

	@RequestMapping(value = { "/", "/listDriver" })
	public String listDriver(Map<String, Object> map) {

		map.put("driver", new Driver());
		map.put("driverList", driverService.listDrivers());

		return "/driver/listDrivers";
	}

	@RequestMapping("/get/{driverId}")
	public String getDriver(@PathVariable Long driverId, Map<String, Object> map) {
         System.out.println("driver Id " + driverId);
		Driver driver = driverService.getDriver(driverId);

		map.put("driver", driver);

		return "/driver/driverForm";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute("driver") Driver driver,
			BindingResult result,Map<String, Object> map) {

		   map.put("driver", new Driver());

		return "/driver/register";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveDriver(@ModelAttribute("driver") Driver driver,
			BindingResult result,Map<String, Object> map) {
		
			driverService.saveDriver(driver);
			return "redirect:listDriver";

	}

	@RequestMapping("/delete/{driverId}")
	public String deleteDriver(@PathVariable("driverId") Long id) {

		driverService.deleteDriver(id);
		return "redirect:/driver/listDriver";
	}

}
