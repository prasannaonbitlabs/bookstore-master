package np.com.mshrestha.bookstore.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import np.com.mshrestha.bookstore.model.Vehicle;
import np.com.mshrestha.bookstore.service.VehicleService;

@Controller
@RequestMapping("/vehicle")
public class VehicleController {

	@Autowired
	private VehicleService vehicleService;

	@RequestMapping(value = { "/", "/listVehicles" })
	public String listVehicles(ModelMap  map) {

		map.put("Vehicle", new Vehicle());
		map.put("VehicleList", vehicleService.listVehicles());

		return "/Vehicle/listVehicles";
	}
	
	@RequestMapping(value = "/vehicleRegister", method = RequestMethod.GET)
	public String register(@ModelAttribute("vehicle") Vehicle vehicle,
			BindingResult result,Map<String, Object> map) {

		   map.put("vehicle", new Vehicle());

		return "/vehicle/registerVehicle";
	}

	@RequestMapping("/get/{VehicleId}")
	public String getVehicle(@PathVariable Long id, Map<String, Object> map) {

		Vehicle Vehicle = vehicleService.getVehicle(id);

		map.put("Vehicle", Vehicle);

		return "/Vehicle/VehicleForm";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveVehicle(HttpServletRequest request,
			@RequestParam("file") MultipartFile file, 
			@RequestParam("fileName") String fileName,
			@RequestParam("regNumber") String regNumber,
			@RequestParam("chassieNumber") String chassieNumber,
			@RequestParam("enginNumger") String enginNumger,
			@RequestParam("modle") String modle,
			@RequestParam("fuelType") String fuelType,
			@RequestParam("acVehicle") String acVehicle,
			@RequestParam("seats") int seats,
			@RequestParam("id") Long id
			
			) {
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();

				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + fileName);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				
				Vehicle vehicle = new Vehicle ();
				vehicle.setRegNumber(regNumber);
				vehicle.setChassieNumber(chassieNumber);
				vehicle.setEnginNumger(enginNumger);
				vehicle.setFileName(fileName);
				vehicle.setModle(modle);
				vehicle.setFuelType(fuelType);
				vehicle.setId(id);
				vehicle.setAcVehicle(acVehicle);
				vehicle.setSeats(seats);
				
				vehicleService.saveVehicle(vehicle);
				return "redirect:listVehicles";

				
			} catch (Exception e) {
				return "You failed to upload " + fileName + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload " + fileName
					+ " because the file was empty.";
		}
	}

	@RequestMapping("/delete/{id}")
	public String deleteVehicle(@PathVariable("id") Long id) {

		vehicleService.deleteVehicle(id);
		return "redirect:/Vehicle/listVehicles";
	}
}
