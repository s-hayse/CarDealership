package com.car.dealerapplication;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;

import com.car.entity.Vehicle;
//import java.time.chrono.ChronoLocalDate;

@Service
public class VehicleService {
	
	List<Vehicle> vehicles = new ArrayList<Vehicle>();
	
//	public Vehicle defaultVehicle ()
	{
		
		Vehicle vehicle1 = new Vehicle();
		vehicle1.setMake("Ford");
		vehicle1.setModel("Ranger");
		vehicle1.setYear(2008);
		vehicle1.setMileage(85000);
		vehicle1.setPrice(4999);
		vehicle1.setDescription("blah blah blah");
		vehicle1.setUsed(true);
		vehicle1.setColor("Red");
		vehicle1.setVIN("N38VMF672K");
		vehicle1.setTransmission("Manual");
		vehicle1.setFuelType("Gasoline");
		vehicle1.setAvailable(true);
		vehicle1.setArrivedOnLot(LocalDate.of(2004, 10, 23));
		
		vehicles.add(vehicle1);
//		System.out.println("Default " + vehicle1.toString());
//		
//		return vehicle1;
		
		Vehicle vehicle2 = new Vehicle();
		vehicle2.setMake("Nissan");
		vehicle2.setModel("Armada");
		vehicle2.setYear(2020);
		vehicle2.setMileage(6785);
		vehicle2.setPrice(15999);
		vehicle2.setDescription("blah blah blah");
		vehicle2.setUsed(true);
		vehicle2.setColor("White");
		vehicle2.setVIN("JDI83KM05GB");
		vehicle2.setTransmission("Automatice");
		vehicle2.setFuelType("Gasoline");
		vehicle2.setAvailable(true);
		vehicle2.setArrivedOnLot(LocalDate.of(2021, 01, 13));
		
		vehicles.add(vehicle2);
		
	}
	
//	Vehicle vehicle1 = defaultVehicle();

	public List<Vehicle> saveVehicle(Vehicle vehicle){
		vehicles.add(vehicle);
		System.out.println(vehicle.toString() + " has been saved.");
		return vehicles;
	}
	
	public List<Vehicle> findAll() {
		List<Vehicle> allVehicles = vehicles;
		System.out.println("inside findAll function" + vehicles.toString());
		return allVehicles;
	}
	
	public Vehicle findVin(Vehicle vehicle) {
		Vehicle selectedVehicle = vehicle;
		String selVin = selectedVehicle.getVIN();
		
		for(Vehicle selected : vehicles) {
			if (selected.getVIN().equals(selVin)) {
				selectedVehicle = selected;
				System.out.println(selectedVehicle.getMileage() + " mileage inside findVin");
				return selectedVehicle;
			}
		}
		return null;
	}
	
	public void removeVehicle(String VIN) {
		for(int i = 0; i < vehicles.size(); ++i) {
			Vehicle vehicle = vehicles.get(i);
			if (vehicle.getVIN().equals(VIN)) {
				vehicles.remove(i);
			}
		}
	}
	
}
