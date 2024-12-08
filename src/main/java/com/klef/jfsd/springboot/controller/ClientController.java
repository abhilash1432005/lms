package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.EmailManager;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.EmailService;
import com.klef.jfsd.springboot.service.EmployeeService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
  @Autowired
  private AdminService adminService;
  
  @Autowired
  private EmployeeService employeeService;
  
  @Autowired
  private EmailService emailService;
  
  @GetMapping("/")
  public  String main() {
    return "index";
  }
  
  @GetMapping("subscription")
  public  String subscribe() {
    return "subscription";
  }
  
  
  @GetMapping("explore")
  public  String explore() {
    return "explore";
  }
  
  @GetMapping("adminlogin") //URI and method can be different
  public ModelAndView adminlogin()
  {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("adminlogin");
    return mv;
  }
  
  @PostMapping("checkadminlogin")
  public ModelAndView checkadminlogin(HttpServletRequest request)
  {
    ModelAndView mv = new ModelAndView(); 
    
    
    String uname = request.getParameter("uname");
    String pwd = request.getParameter("pwd");
     
    Admin admin = adminService.checkadminlogin(uname, pwd);
    
    if(admin!=null)
    {
      mv.setViewName("adminhome");
      long ecount=adminService.empcount();
      long ccount=adminService.customercount();
      mv.addObject("ecount", ecount);
      mv.addObject("ccount", ccount);
    }
    else
    {
      mv.setViewName("adminlogin");
      mv.addObject("message", "Login Failed");
    }
    
    return mv;
  }
  
  @GetMapping("emplogin")
  public ModelAndView emplogin()
  {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("emplogin");
    return mv;
  }
  
  @PostMapping("checkemplogin")
  public  ModelAndView checkemplogin(HttpServletRequest request)
  {
	  ModelAndView mv=new ModelAndView();
	  String email = request.getParameter("email");
	     String pwd = request.getParameter("pwd");
	     
	    Employee emp =  employeeService.checkemplogin(email, pwd);
	    if(emp!=null)
	    {
	    	//session
	    	HttpSession session=request.getSession();
	    	session.setAttribute("eid", emp.getId()); //eid is a session variable
	    	session.setAttribute("ename", emp.getName()); //ename is a session variable
	    	//session
	     mv.setViewName("emphome");
	    }
	    else
	    {
	      mv.setViewName("emplogin");
	      mv.addObject("message","LoginFailed");
	    }
	    return mv;
  }
  
  @GetMapping("studentlogin") //URI and method can be different
  public ModelAndView studentlogin()
  {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("studentlogin");
    return mv;
  }
  
  @PostMapping("checkstudentlogin")
  public ModelAndView checkstudentlogin(HttpServletRequest request)
  {
    ModelAndView mv = new ModelAndView(); 
    
    
    String cemail = request.getParameter("email");
     String cpwd = request.getParameter("password");
     
   
      Customer customer=adminService.checkstudentlogin(cemail, cpwd);
      if(customer!=null)
      {
        mv.setViewName("studenthome");
      }
      else {
        mv.setViewName("studentlogin");
          mv.addObject("message", "Login Failed");
      
    }
    
    return mv;
  }
  
  
  
  
  @GetMapping("empreg")
  public String empregistration()
  {
  return "empreg";
  }
  
  @PostMapping("insertemp")
  public ModelAndView insertaction(HttpServletRequest request)
  {
    String msg = null;
    ModelAndView mv=new ModelAndView();
    
    try {
      String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String dept = request.getParameter("dept");
        String sal = request.getParameter("salary");
        double salary = Double.parseDouble(sal);
        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");
        String location = request.getParameter("location");
        String contact = request.getParameter("contact");
        
        
        
        Employee emp=new Employee();
          emp.setName(name);
          emp.setGender(gender);
          emp.setDateofbirth(dob);
          emp.setDepartment(dept);
          emp.setSalary(salary);
          emp.setEmail(email);
          emp.setPassword(pwd);
          emp.setLocation(location);
          emp.setContact(contact);
          emp.setActive(true);
          
           msg= employeeService.addemployee(emp);
//           emailService.sendEmail(emp.getEmail(),"Demo mail","Hi we are testing");
           mv.setViewName("displaymsg");
           mv.addObject("message", msg);
        
    }
    catch(Exception e)
    {
      msg = e.getMessage();
      
      mv.setViewName("displayerror");
        mv.addObject("message", msg);
        
      
    }   
      return mv;
  }
  
  @GetMapping("viewallemps")
  public ModelAndView viewemps()
  {
    List<Employee> emplist=adminService.viewallemps();
    ModelAndView mv=new ModelAndView("viewallemps");//jsp file name
    mv.addObject("empdata",emplist);
    return mv;
  }
  
  @GetMapping("view")
  public ModelAndView viewempdemo(@RequestParam("id") int eid)
  {
    Employee emp = adminService.viewempbyid(eid);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("viewempbyid");
    mv.addObject("emp", emp);
    return mv;
  }
  
  @GetMapping("delete/{id}")
  public String deleteaction(@PathVariable("id") int eid)
  {
    adminService.deleteemp(eid);
    return "redirect:/deleteemp";
  }
  
  @GetMapping("deleteemp")
  public ModelAndView deleteemployeedemo()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("deleteemp"); //deleteemp is jsp file name
    List<Employee> emplist =  adminService.viewallemps();
    mv.addObject("empdata", emplist);
    return mv;
  }
  
  @GetMapping("adminhome")
  public ModelAndView adminhome()
  {
	  long ecount=adminService.empcount();
	  long ccount=adminService.customercount();
	  
    ModelAndView mv = new ModelAndView();
    mv.setViewName("adminhome");
    mv.addObject("ecount", ecount);
    mv.addObject("ccount", ccount);
    return mv;
  }
  
  @GetMapping("emphome")
  public ModelAndView emphome(HttpServletRequest request)
  {
	  HttpSession session=request.getSession();
	int eid=(int)  session.getAttribute("eid");// eid is a session variable
	 String ename=(String) session.getAttribute("ename");//ename is a session variable
    ModelAndView mv = new ModelAndView();
    mv.setViewName("emphome");
    
    mv.addObject("eid", eid);
    mv.addObject("ename",ename);
    return mv;
  }
  
  @GetMapping("updateprofile")
  public ModelAndView updateemp(HttpServletRequest request)
  {
    ModelAndView mv = new ModelAndView();
    
    HttpSession session = request.getSession();
    
    mv.setViewName("updateprofile");
    
    mv.addObject("eid", session.getAttribute("eid"));
    mv.addObject("ename", session.getAttribute("ename"));
    
    int id = (int) session.getAttribute("eid");
    
    Employee emp = employeeService.viewemployeebyid(id);
    
    mv.addObject("emp", emp);
    
    return mv;
  }
  
  @PostMapping("update")
  public ModelAndView updateaction(HttpServletRequest request)
  {
    String msg = null;
    
    ModelAndView mv = new ModelAndView();
    
      HttpSession session = request.getSession();
    
    mv.addObject("eid", session.getAttribute("eid"));
    mv.addObject("ename", session.getAttribute("ename"));
    
    int id = (int) session.getAttribute("eid");
    
   try
   {
     String name = request.getParameter("name");
     String dob = request.getParameter("dob");
     String dept = request.getParameter("dept");
     String sal = request.getParameter("salary");
     double salary = Double.parseDouble(sal);
     String email = request.getParameter("email");
     String pwd = request.getParameter("pwd");
     String location = request.getParameter("location");
     String contact = request.getParameter("contact");
     
     Employee emp = new Employee();
      emp.setId(id);
      emp.setName(name);
      emp.setDateofbirth(dob);
      emp.setDepartment(dept);
      emp.setSalary(salary);
      emp.setEmail(email);
      emp.setPassword(pwd);
      emp.setLocation(location);
      emp.setContact(contact);
      
      
      msg = employeeService.updateemployee(emp);
      
      mv.setViewName("emplogin");
      mv.addObject("message",msg);
     
   }
   catch(Exception e)
   {
     msg = e.getMessage();
     
     mv.setViewName("updateerror");
      mv.addObject("message",msg);
   }
    return mv;
  }
  
  @GetMapping("addcustomer")
  public String addcustomer(Model m)
  {
	  m.addAttribute("customer",new Customer());
	  return "addcustomer";
  }
  
  @PostMapping("insertcustomer")
  public ModelAndView insertcustomer(@ModelAttribute("customer ") Customer c)
  {
	 String msg= adminService.addcustomer(c);
	 ModelAndView mv=new ModelAndView();
	 mv.setViewName("customermsg");
	 mv.addObject("message", msg);
	 return mv;
  }
  
  @GetMapping("updatestatus")
  public ModelAndView updatestatus()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("updatestatus");
    List<Employee> emplist =  adminService.viewallemps();
    mv.addObject("empdata", emplist);
    return mv;
  }
  
  @GetMapping("setstatus")
  public ModelAndView setstatusaction(@RequestParam("id") int eid,@RequestParam("status") boolean status)
  {
    int n = adminService.updatestatus(status, eid);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("updatestatus");
    List<Employee> emplist =  adminService.viewallemps();
    mv.addObject("empdata", emplist);
      
   
    if(n>0)
    {
      mv.addObject("message", "Status Updated Successfully");
    }
    else
    {
      mv.addObject("message", "Failed to Update Status");
    }
    
    return mv;
  }
  
  @GetMapping("emplogout")
  public ModelAndView emplogout()
  {
	  ModelAndView mv =new ModelAndView();
	  mv.setViewName("emplogin");
	  mv.addObject("message", "Logout Successfully");
	  return mv;
  }
  
  @GetMapping("studentupload")
  public ModelAndView addfile()
  {
	   ModelAndView mv = new ModelAndView("studentupload");
	   return mv;
  }
  
  @PostMapping("insertfile")
  public ModelAndView insertfile(HttpServletRequest request,@RequestParam("file") MultipartFile file) throws IOException, SerialException, SQLException
  {
	  String msg = null;
	   
	   ModelAndView mv = new ModelAndView();
	   
	   try
	   {
	   
	   
		  byte[] bytes = file.getBytes();
		  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
		  
		  Customer c = new Customer();
		
		  c.setFile(blob);
		  
		 // msg=productService.AddProduct(c);
		  msg=adminService.addcustomer(c);
		  System.out.println(msg);
		  mv.setViewName("filemsg");
		  mv.addObject("message",msg);
	   }	  
	   
	   catch(Exception e)
	   {
		   msg = e.getMessage();
		   System.out.println(msg.toString());
		   mv.setViewName("fileerror");
		   mv.addObject("message",msg);
	   }
	   return mv;
  }
  
  @RestController
  @RequestMapping("/mail")
  public class EmailController {
    @Autowired
    EmailManager em;
    @GetMapping("/send/{fmail}/{tmail}/{subject}/{message}")
      public String send(@PathVariable("fmail") String fmail, @PathVariable("tmail") String tmail,@PathVariable("subject") String subject,@PathVariable("message") String message) {
     return em.sendMail(fmail, tmail, subject, message);
     
   }
  }
  
}