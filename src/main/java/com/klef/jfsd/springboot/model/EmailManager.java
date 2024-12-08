package com.klef.jfsd.springboot.model;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailManager {
    @Autowired
  JavaMailSender jms;
    public String sendMail(String frommail,String tomail,String subject,String message) {
      try {
      SimpleMailMessage smm=new SimpleMailMessage();
      smm.setFrom(frommail);
      smm.setTo(tomail);
      smm.setSubject(subject);
      smm.setText(message);
      jms.send(smm);
      return "Mail Sent Successfully";
      }
      catch(Exception e) {
        return e.getMessage();
      }
    }
}