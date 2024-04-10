package net.javaguides.usermanagement.model;

/**
 * User.java
 * This is a model class represents a User entity
 * @author Ramesh Fadatare
 *
 */
public class User {
	protected int id;
	protected String firtName;
	protected String lastName;
	protected String groupp;
	protected String phoneNumber;
	
	public User() {
	}
	
	public User(String firtName, String lastName,String groupp,String phoneNumber) {
		super();
		this.firtName = firtName;
		this.lastName = lastName;
		this.groupp = groupp;
		this.phoneNumber = phoneNumber;
	}

	public User(int id, String firtName, String lastName,String groupp, String phoneNumber) {
		super();
		this.id = id;
		this.firtName = firtName;
		this.lastName = lastName;
		this.groupp = groupp;
		this.phoneNumber = phoneNumber;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getfirtName() {
		return firtName;
	}
	public void setfirtName(String firtName) {
		this.firtName = firtName;
	}
	public String getlastName() {
		return lastName;
	}
	public void setlastName(String lastName) {
		this.lastName = lastName;
	}
	public String getgroupp() {
		return groupp;
	}
	public void setgroupp(String groupp) {
		this.groupp = groupp;
	}
	public String getphoneNumber() {
		return phoneNumber;
	}
	public void setphoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
}
