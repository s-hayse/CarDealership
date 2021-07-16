package com.car.entity;

import java.time.LocalDate;
import java.time.chrono.ChronoLocalDate;

public class Vehicle {
	
	private String make;
	private String model;
	private int year;
	private long mileage;
	private double price;
	private String description;

	private Boolean used; //new when false
	private String color;
	private String VIN;
	private String transmission;
	private String fuelType;
	private Boolean available; //sold or not
	private LocalDate arrivedOnLot;
	
	
	public Vehicle() {
		super();
	}

	public LocalDate getArrivedOnLot() {
		return arrivedOnLot;
	}

	public void setArrivedOnLot(LocalDate arrivedOnLot) {
		this.arrivedOnLot = arrivedOnLot;
	}

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public long getMileage() {
		return mileage;
	}

	public void setMileage(long mileage) {
		this.mileage = mileage;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Boolean getUsed() {
		return used;
	}

	public void setUsed(Boolean used) {
		this.used = used;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getVIN() {
		return VIN;
	}

	public void setVIN(String VIN) {
		this.VIN = VIN;
	}

	public String getTransmission() {
		return transmission;
	}

	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}

	public String getFuelType() {
		return fuelType;
	}

	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}
	
	public Boolean getAvailable() {
		return available;
	}

	public void setAvailable(Boolean available) {
		this.available = available;
	}

	@Override
	public String toString() {
		return "Vehicle: make=" + make + ", model=" + model + ", year=" + year + ", mileage=" + mileage + ", price="
				+ price + ", description=" + description + ", used(true or false)=" + used + ", color=" + color + ", vin=" + VIN
				+ ", transmission=" + transmission + ", fuelType=" + fuelType + ", avalibility=" + available + ", arrivedOnLot=" + arrivedOnLot + "]" ;
	}

	
	
//	 + ", vin=" + VIN
	
	
	

}
