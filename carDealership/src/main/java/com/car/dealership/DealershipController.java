package com.car.dealership;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.car.dealerapplication.CustomerService;
import com.car.dealerapplication.SaleService;
import com.car.dealerapplication.VehicleService;
import com.car.entity.Customer;
import com.car.entity.Vehicle;

@Controller //a bean
public class DealershipController {

//	CustomerService student = new CustomerService();

	@Autowired // ss = beanFactory.get("customerService")
	public CustomerService customerService;  //get a bean from the bean factory - dependency injection

	@Autowired
	public VehicleService vehicleService;
	
	@Autowired
	public SaleService saleService;
	
	@GetMapping("testPage")
	public String testing(Model model) {
		return "testPage";
	}	
	
	@GetMapping("/")
	public String welcome(Model model) {  //@ModelAttribute("customer") Customer customer, HttpSession session
		return "index";
	}

	@GetMapping("/sign-up")
	public ModelAndView signUp(Model model) {
		return new ModelAndView("sign-up", "customer", new Customer());
	}

	@PostMapping("/sign-up")
	public String handleSignUp(Model model, @ModelAttribute("customer") Customer customer, HttpSession session) {
		customerService.saveCustomer(customer);
		System.out.println(customer.getFirstName());
		model.addAttribute("newCustomer", customer);
		session.setAttribute("customer", customer);
		System.out.println(customer.toString() + " has been registered.");
		return "thank-you";
	}

	@GetMapping("/thank-you")
	public ModelAndView thankYou(Model model, @ModelAttribute("customer") Customer customer, HttpSession session) {

		return new ModelAndView("thank-you"); // , "customer", new Customer());
	}

	@GetMapping("/login")
	public ModelAndView loginPage(Model model, HttpSession session) {
		return new ModelAndView("login", "customer", new Customer());
	}

	@PostMapping("/login")
	public String handleLogin(Model model, @ModelAttribute("customer") Customer customer, HttpSession session) {
	
		model.addAttribute("newCustomer", customer);
		if (customer != null) {
			Customer loginCustomer = customerService.findAcctEmail(customer);

			if (loginCustomer != null) {
				Customer verifiedCustomer = customerService.verifyPassword(loginCustomer);
				System.out.println(verifiedCustomer.toString() + " has been logged in.");
				model.addAttribute("customer", verifiedCustomer);
				return "thank-you";
			}
		}
		System.out.println("invalid credentials");
		model.addAttribute("error", "Error: Please enter credentials");  //need to make "error" attribute
		return "login";
	}
	
	@GetMapping("/logout")
	public ModelAndView logOut(Model model, HttpSession session){ //@ModelAttribute("customer") Customer customer, 

//	model.addAttribute("customer", null);
	System.out.println("Customer has been logged out.");
	return new ModelAndView("index", "customer", new Customer());
	}

	@GetMapping("/customers")
	public ModelAndView customers(Model model, @ModelAttribute("customer") Customer customer, HttpSession session) {
//		Object[] allCustomers = customerService.findAll().toArray();
		List<Customer> allCustomers = customerService.findAll();
		model.addAttribute("customer", allCustomers);
		System.out.println("customer list... " + allCustomers.toString());
		return new ModelAndView("customers");
	}
	
//	@GetMapping("/error")
//	public ModelAndView error(Model model, HttpSession session) {
//		return new ModelAndView("error", "error message", session);
//	}
	
	@GetMapping("/inventory")
	public ModelAndView dealerInv(Model model, @ModelAttribute("vehicle") Vehicle vehicle,  HttpSession session) {
		List<Vehicle> allVehicles = vehicleService.findAll();
//		Object[] allVehicles = vehicleService.findAll().toArray();
		model.addAttribute("vehicle", allVehicles);
		System.out.println("vehicle list: " + allVehicles);
		return new ModelAndView("inventory");
	}
	
	@PostMapping("/inventory")
	public String handleDetails(Model model, @ModelAttribute("vehicle") Vehicle vehicle, HttpSession session) {
	
		model.addAttribute("selectedVehicle", vehicle);
		if (vehicle != null) {
			Vehicle selectedVehicle = vehicleService.findVin(vehicle);
			model.addAttribute("vehicle", selectedVehicle);
			return "details";
		}
		return "/";
	}
	
	@GetMapping("/details")
	public ModelAndView details(Model model, HttpSession session) {
//		model.addAttribute("vehicle", vehicle)
		return new ModelAndView("details", "vehicle", session);
	}
	
//	@GetMapping("/details")
//	public ModelAndView details (Model model, @ModelAttribute("vehicle") Vehicle vehicle, HttpSession session) {
//		model.addAttribute("selectedVehicle", vehicle);
//		if (vehicle != null) {
//			Vehicle selectedVehicle = vehicleService.findVin(vehicle);
//			model.addAttribute("vehicle", selectedVehicle);
//			return "details";
//		}
//		return new ModelAndView ("details");
//	
//	}
	
	
	@GetMapping("/reviews")
	public ModelAndView reviews(Model model, HttpSession session) {
		return new ModelAndView("reviews", "message", session);
	}
	
}
		
		//		String selectedVehicle = vehicle.toString();
//		Vehicle[] vehicleAttributes = new Vehicle[13];
//		Vehicle vehicleSel = new Vehicle();
	
		
		
//		for (int i = 0; i < vehicleService.vehicles.size(); i++) {
//			Vehicle vehicleSel2 = vehicle.get(i);
//			if (vehicle.getEmail().equals(email)) {
//				return vehicle;
//			}
		
//		String[] vehicleAttributes = selectedVehicle.toCharArray();

//		System.out.println(vehicle.getColor() + " vehicle color");
//		session.setAttribute("vehicle", vehicle);
//		
//		return new ModelAndView("details", "vehicle", session);
	
	
	

