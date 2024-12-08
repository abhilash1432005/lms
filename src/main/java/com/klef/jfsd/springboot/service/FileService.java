package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.File;
import com.klef.jfsd.springboot.repository.FileRepository;

@Service
public class FileService {

    @Autowired
    private FileRepository fileRepository;

    public File storeFile(String fileName, byte[] data) {
        File file = new File();
   
        file.setFile(null);
        return fileRepository.save(file);
    }
}