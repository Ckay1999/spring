package spring.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;
import org.hibernate.internal.build.AllowSysOut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import pojo_models.Address;
import pojo_models.Shopkeeper;
import spring.dao.AddressDao;
import spring.dao.Shopkeeperdao;

@Controller
public class ProcessingContoller {

	@Autowired
	private spring.service.ShopkeeperService ShopkeeperService;
	
	@Autowired
	private Shopkeeperdao shopkeeperDao;
	
	@RequestMapping("/form")
	public String form() {
		System.out.println("This is form");
		return "form";
	}
	
	@RequestMapping(path="/processform",method=RequestMethod.POST)
	public String handleform(@ModelAttribute("s1") Shopkeeper s1, Model model) {
		System.out.println(s1);
		int shopkeeper_id=this.ShopkeeperService.createShopkeeper(s1);
		model.addAttribute("msg","User created with id " +shopkeeper_id);
		return "profile";
	}
	
	@RequestMapping(path="/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(path="/goto_bus",method=RequestMethod.POST)
	public String handlebus(@RequestParam("email") String email,@RequestParam("password") String password, Model m) {

		List<Shopkeeper> add=shopkeeperDao.getShopkeeper();
		for(int i=0;i<add.size();i++) {
			if(add.get(i).getEmail().equals(email) && add.get(i).getPassword().equals(password)) {
				int id=add.get(i).getId();
				Shopkeeper s1=shopkeeperDao.getBusiness(id);
				m.addAttribute("s1",s1);
			return "profile";
			}
		}
		System.out.println(email);
		return "login";
	}
	
	@RequestMapping(path="/view_bus")
	public String view_bus_page() {
		return "form";
	}


	@RequestMapping(path="/review")
	public String review() {
		return "email";
	}
	
	@RequestMapping(path="/otp")
	public String otp() {
		return "otp";
	}
	
	@RequestMapping("/images")
	public String images() {
		return "images";
	}
		
	

	@RequestMapping(path="/search_bus")
	public String search_bus(Model m) {
		List<Shopkeeper> add=shopkeeperDao.getShopkeeper();
		List<String> categories = new ArrayList<String>();
		for(int i=0;i<add.size();i++) {
			categories.add(add.get(i).getType().toLowerCase());
		}
		HashSet<String> hset = new HashSet<String>(categories);
		System.out.println(hset);
		m.addAttribute("business",add);
		m.addAttribute("categories",hset);
		return "shop";
	}
	
	@RequestMapping(path="/delete/{shopkeeperId}")
	public RedirectView delete(@PathVariable("shopkeeperId") int shopkeeperId,HttpServletRequest request) {
		this.shopkeeperDao.delete(shopkeeperId);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
		
	}
	
	@RequestMapping(path="/update/{shopkeeperId}")
	public String update(@PathVariable("shopkeeperId") int shopkeeperId,HttpServletRequest request,Model m) {
		Shopkeeper s=shopkeeperDao.getBusiness(shopkeeperId);
		m.addAttribute("s1",s);
		return "update";
	}
	
	@RequestMapping(path="/handle_updating",method=RequestMethod.POST)
	public String handle_update(@ModelAttribute("shop") Shopkeeper shop,Model model) {
	shopkeeperDao.updateBusiness(shop);
		return "home";
	}
}
