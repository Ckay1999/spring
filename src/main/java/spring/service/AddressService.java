package spring.service;
import spring.dao.AddressDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pojo_models.Address;

@Service
public class AddressService {
	
	@Autowired
	private AddressDao addressDao;
	
	public int generateBusiness(Address add) {
		return this.addressDao.saveAddress(add);
	}
}
