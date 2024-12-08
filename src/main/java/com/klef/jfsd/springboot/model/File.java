package com.klef.jfsd.springboot.model;

import java.sql.Blob;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;

@Entity
@Table(name="student_uploaded files")
public class File {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    
    private Blob file; 


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public Blob getFile() {
		return file;
	}


	public void setFile(Blob file) {
		this.file = file;
	}


	@Override
	public String toString() {
		return "File [id=" + id + ", file=" + file + "]";
	}

}
