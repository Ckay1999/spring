package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import pojo_models.Images;
import pojo_models.Shopkeeper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import spring.dao.ImageDao;


@Controller
public class WebsiteController {

	@Autowired
	private ImageDao imageDao;
	
	@Autowired
	private spring.service.ImageService imageService;
	
	@RequestMapping("/home")
	public String home(Model model) {
		return "home";
	}

	@RequestMapping("/upload")
	public String upload_img(){
	return "uploading";	
	}
	
	// Using this method I am able to save images in a folder and then display them....To use this change form action in uploading.jsp
	@RequestMapping(path="/handle_img", method=RequestMethod.POST)
	public String handle_image(@RequestParam("image") CommonsMultipartFile file, HttpSession s,Model m){
	System.out.println(file.getSize());
	System.out.println(file.getOriginalFilename());
	System.out.println(file.getName());
	System.out.println(file.getStorageDescription());
	byte[] data=file.getBytes();
	
	String path=s.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"resources"+File.separator+file.getOriginalFilename();
	System.out.println(path);
	//we have to save the file to server...
	try {
		FileOutputStream fos=new FileOutputStream(path);
		fos.write(data);
		fos.close();
	}
	catch(IOException e) {
		e.printStackTrace();
	}

	m.addAttribute("filename",file.getOriginalFilename());
	return "imgdisplay";	
	}
	
	@RequestMapping(path="/handling", method=RequestMethod.POST)
	public String handle_image(@ModelAttribute("img") Images img,HttpSession s){		
		imageDao.saveImage(img);
		
		byte[] data=img.getImage();
		
		String path=s.getServletContext().getRealPath("/")+img.getImageName();
		System.out.println(path);
		//we have to save the file to server...
		try {
			FileOutputStream fos=new FileOutputStream(path);
			fos.write(data);
			fos.close();
		}
		catch(IOException e) {
			e.printStackTrace();
		}
		
		return "imgdisplay";	
	}
}


