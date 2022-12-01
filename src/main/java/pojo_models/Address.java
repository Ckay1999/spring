package pojo_models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="business_address")
public class Address {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="business_add_id")
	private int addressId;
	private String street;
	private String city;
	
	@Lob
	private byte[] image;
	
	
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Address(int addressId, String street, String city, byte[] image) {
		super();
		this.addressId = addressId;
		this.street = street;
		this.city = city;
		this.image = image;
	}
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	
}
