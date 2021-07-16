package com.car.dealerapplication;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.car.entity.Sales;
//import com.car.entity.Vehicle;

@Service
public class SaleService {
	
	ArrayList<Sales> sales = new ArrayList<Sales>();
	
	
	public List<Sales> saveSale(Sales sale){
		sales.add(sale);
		System.out.println(sale.toString() + " has been saved.");
		return sales;
	}
	
	public List<Sales> findAll() {
		List<Sales> allSales = sales;
		System.out.println("inside findAll function" + sales.toString());
		return allSales;
	}
	
	public void processSale() {
		//set available to false
		//add name and info to sales array list
		//remove from vehicle array list
	}

//	public void tempSave() {
//		Vehicle tempVehicle = new Vehicle();
//		
//	}
}
