package com.car.dealerapplication;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;

import com.car.entity.Address;
import com.car.entity.Customer;

@Service  //creates the 'customerService' bean - Bean is an object 
public class CustomerService { // don't use static unless you have a specific reason
	
	ArrayList<Customer> customers = new ArrayList<Customer>();

	
	public Customer defaultCustomer (){
		
		Customer customer1 = new Customer();
		customer1.setFirstName("James");
		customer1.setLastName("Smith");
		customer1.setEmail("smith@email.com");
		customer1.setPassword("password");
		
		Address address1 = new Address();
		address1.setStreetName("123 Blank St.");
		address1.setCity("Nowhere");
		address1.setState("AR");
		address1.setZipCode("12345");
		
		customer1.setAddress(address1);
		customers.add(customer1);
		
		System.out.println("Default " + customer1.toString());
		
		return customer1;
	}
	
	Customer customer1 = defaultCustomer();
	
	public List<Customer> saveCustomer(Customer customer) {
		customers.add(customer);
		System.out.println(customer.toString() + " has been saved");
		return customers;
	}	
	
	//
	public List<Customer> findAll() {
		List<Customer> allCustomers = customers;
		System.out.println("inside findAll function" + customers.toString());
		return allCustomers;
	}
	
	public Customer findAcctEmail(Customer customer) {
		Customer loginCustomer = customer;
		String loginEmail = loginCustomer.getEmail();
		
		for(Customer login : customers) {
			if (login.getEmail().equals(loginEmail)) {
				loginCustomer = login;
				System.out.println(loginCustomer.getEmail() + " found.");
				return loginCustomer;
			}
		}
		return null;
	}
	
	public Customer verifyPassword(Customer customer) {
		Customer loginCustomer = customer;
		String loginPassword = loginCustomer.getPassword();
		
		for(Customer login : customers) {
			if (login.getPassword().equals(loginPassword)) {
				loginCustomer = login;
				System.out.println(loginCustomer.getEmail() + "'s password found");
				return loginCustomer;
			}
		}
		return null;
	}
	
//	public Customer login(Customer student) {
//		
//		Customer user = customers.stream().filter(a -> student.equals(a.getEmail())).findAny().orElse(null);
//				
//	return user;
//	}

//		for (int i = 0; i < customers.size(); i++) {
//			Customer student = customers.get(i);
//			if (student.getEmail().equals(email)) {
//				return student;
//			}
//		}
//		return null;
//	}
//}

//public Customer login(Customer logStudent) {
//
//	for(int i = 0; i < customers.size(); i++) {
//		Customer student = customers.get(i);
//		if(student.getEmail().equals(logStudent.getEmail()) && (student.getPassword().equals(logStudent.getPassword()))){
//			return student;
//		}
//	}
//	return null;
//}
}
