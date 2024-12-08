package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;


@Repository
public interface AdminRepository  extends JpaRepository<Admin, Integer>{
	@Query("select a from Admin a where username=?1 and password=?2")
public Admin checkadminlogin(String auname,String apwd) ;
	
	@Query("update Employee set active=?1 where id=?2 ")
	@Modifying
	@Transactional
	public int  updatestatus(boolean active,int eid);
	
	@Query("select c from Customer c where email=?1 and password=?2")
	   public Customer checkstudentlogin(String cemail, String cpwd);
}
