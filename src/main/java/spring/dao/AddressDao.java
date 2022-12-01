package spring.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pojo_models.Address;

@Repository
public class AddressDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int saveAddress(Address add) {
		int id=(Integer)this.hibernateTemplate.save(add);
		return id;
	}
	
	//get all address
	public List<Address> getAddress(){
		List<Address> add=this.hibernateTemplate.loadAll(Address.class);
		return add;
	}
	
	//delete the single address
	@Transactional
	public void deleteProduct(int aid) {
		Address p=this.hibernateTemplate.load(Address.class,aid);
		this.hibernateTemplate.delete(p);
	}
	
	//get a single address
	public Address getAdd(int aid) {
		return this.hibernateTemplate.get(Address.class, aid);
	}
}
