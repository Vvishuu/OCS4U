package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.Appointments;
import com.bean.Credentials;
import com.bean.Doctor;
import com.bean.Profile;
import com.dao.CredentialsDao;
import com.service.AdministratorService;
import com.service.PatientService;
import com.util.User;

@Controller
@RequestMapping("/main")
public class MainController {
	@Autowired
	User u;
	@Autowired
	PatientService patientService;
	@Autowired
	AdministratorService administratorService;
	@Autowired
	CredentialsDao credentialsDao ;
	@Autowired
	HttpSession session;
	
	
	//-------home page
	@RequestMapping("/index")
	public String index(){
		return "index";
	}
	@RequestMapping("/home")
	public String home(Model m){
		Credentials user = ((Credentials)session.getAttribute("user"));
		if(user.getUserType().equals("Patient")){
			List<Appointments> li = patientService.getAppointmentsById("TM"+user.getUserId());
			m.addAttribute("appointmentList", li);
		}else{
			m.addAttribute("doctorList", administratorService.getAllDoctor());
		}
		return "home";
	}
	
	/// ---- Login
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	@RequestMapping("/validate")
	public String validate(Credentials c,Model m){
		Credentials result = u.login(c);
		if(result == null){
			m.addAttribute("msg","invalid try again");
			return "login";
		}else{
			session.setAttribute("user", result);
			return "redirect:home";
		}
	}
	
	//--------register
	@RequestMapping("/register")
	public String register(){
		return "register";
	}
	@RequestMapping("/addProfile")
	public String addProfile(Profile p,Model m){
		String result = u.register(p);
		if(result.equals("fail")){
			m.addAttribute("msg", "Register Failed");
			return "register";
		}
		else{
			m.addAttribute("msg","Successfully registered, Login to Continue");
			return "login";
		}
	}
	//-----logout
	@RequestMapping("/logout")
	public String logout(HttpSession session,Model m){
		String userId = ((Credentials)session.getAttribute("user")).getUserId();
		if(u.logout(userId)){
			m.addAttribute("msg", "logged out successfully");
			return "index";
		}else{
			m.addAttribute("msg","already logged out");
			return "login";
		}
	}
	
	//======= UPDATE PASSWORD 
	@RequestMapping("/update")
	public String update()
	{
	   	return "updatePassword" ;
	}
	@RequestMapping("/updatePasswordInDB")
	public String updatePassword(@RequestParam("password")String oldPassword, @RequestParam("newPassword") String newPassword, Model m)
	{
          String msg = u.changePassword(((Credentials)session.getAttribute("user")).getUserId(), oldPassword, newPassword) ;
          m.addAttribute("msg" ,msg) ;
         if(msg.equals("success"))
        	 return "passwordUpdated" ;
         else
        	 return "updatePassword" ;
	}
	
	@RequestMapping("/profile")
	public String profile(Model m)
	{
		Profile p = u.getProfileById( ( (Credentials)session.getAttribute("user") ).getUserId())  ;
		
          m.addAttribute("profile" ,p) ;   
	
          return "profile" ;
	}
}
