package np.com.mshrestha.bookstore.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import np.com.mshrestha.bookstore.model.AdminUser;
import np.com.mshrestha.bookstore.model.Book;
import np.com.mshrestha.bookstore.model.Vehicle;
import np.com.mshrestha.bookstore.service.SessionIdentifierGeneratorService;
import np.com.mshrestha.bookstore.service.VehicleService;

@Controller
@RequestMapping("/vehicle")
public class VehicleController {

	@Autowired
	private VehicleService vehicleService;
	@Autowired
	private SessionIdentifierGeneratorService  sessionIdentifierGeneratorService;

	@RequestMapping(value = { "/", "/vehicleList" })
	public String listVehicles(ModelMap  map,HttpServletRequest req) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			map.put("vehicle", new Vehicle());
			map.put("vehicleList", vehicleService.listVehicles());
			map.put("vehicleListId", "1");

			return "dashboard";

			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}

		
	}
	
	@RequestMapping(value = "/vehicleRegister", method = RequestMethod.GET)
	public String register(@ModelAttribute("vehicle") Vehicle vehicle,
			BindingResult result,Map<String, Object> map,HttpServletRequest req) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			
			map.put("vehicle", new Vehicle());
			map.put("vehicleRegister", "1");
			map.put("profileName", req.getSession().getAttribute("adminUser"));
			return "dashboard";

			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}

		 
	}

	@RequestMapping("/get/{id}")
	public String getVehicle(@PathVariable Long id, Map<String, Object> map,
			HttpServletRequest req) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			
			Vehicle vehicle = vehicleService.getVehicle(id);
			
			System.out.println("vehicle.getFileName() " + vehicle.getFileName());

			map.put("vehicle", vehicle);
			map.put("img",vehicle.getFileName());
			/*map.put("ext",FilenameUtils.getExtension(vehicle.getFileName()));*/
			map.put("vehicleRegister", "1");
			return "dashboard";

			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}

		
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveVehicle(@ModelAttribute("vehicle") Vehicle vehicle,
			BindingResult result,HttpServletRequest req,Map<String, Object> map
			
			) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			
			
			if (!vehicle.getFile().isEmpty()) {
				try {
					byte[] bytes = vehicle.getFile().getBytes();

					String rootPath = System.getProperty("catalina.home");
					String fileCode =  sessionIdentifierGeneratorService.nextSessionId();
					File dir = new File(rootPath + File.separator + "tmpFiles");
					if (!dir.exists())
						dir.mkdirs();

					File serverFile = new File(dir.getAbsolutePath()
							+ File.separator + fileCode+
							vehicle.getFile().getOriginalFilename());
					BufferedOutputStream stream = new BufferedOutputStream(
							new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();
				
						vehicle.setFileName(fileCode+vehicle.getFile().getOriginalFilename());
				
				} catch (Exception e) {
					return "You failed to upload " + vehicle.getFile().getOriginalFilename() + " => " + e.getMessage();
				}
			}
			vehicleService.saveVehicle(vehicle);
			return "redirect:vehicleList";

			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}
		
		
		 
	
	}

	@RequestMapping("/delete/{id}")
	public String deleteVehicle(@PathVariable("id") Long id,
			HttpServletRequest req,Map<String, Object> map) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			
			vehicleService.deleteVehicle(id);
			
			return "redirect:/vehicle/vehicleList";

			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}


		
	}
	
	
	@RequestMapping(value = "/getImage",params = {"img"})
	public @ResponseBody byte[] getImage(@RequestParam(value = "img") String img) throws IOException  {
		System.out.println("aaaaa ");
		Path path = Paths.get(System.getProperty("catalina.home") + File.separator + "tmpFiles"+ File.separator +img);
		System.out.println("path " + path);
		byte[] data = Files.readAllBytes(path); 
		return data;
	}
}
