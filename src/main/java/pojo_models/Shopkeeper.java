package pojo_models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Shopkeeper {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
private String bus_name;

@Column(unique=true)
private String email;
private String password;
private String phone;
private String address;
private String pincode;
private String open;
private String close;
private String type;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getBus_name() {
	return bus_name;
}
public void setBus_name(String bus_name) {
	this.bus_name = bus_name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getPincode() {
	return pincode;
}
public void setPincode(String pincode) {
	this.pincode = pincode;
}
public String getOpen() {
	return open;
}
public void setOpen(String open) {
	this.open = open;
}
public String getClose() {
	return close;
}
public void setClose(String close) {
	this.close = close;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public Shopkeeper(int id, String bus_name, String email, String password, String phone, String address, String pincode,
		String open, String close, String type) {
	super();
	this.id = id;
	this.bus_name = bus_name;
	this.email = email;
	this.password = password;
	this.phone = phone;
	this.address = address;
	this.pincode = pincode;
	this.open = open;
	this.close = close;
	this.type = type;
}
public Shopkeeper() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Shopkeeper [id=" + id + ", bus_name=" + bus_name + ", email=" + email + ", password=" + password
			+ ", phone=" + phone + ", address=" + address + ", pincode=" + pincode + ", open=" + open + ", close="
			+ close + ", type=" + type + "]";
}



}
