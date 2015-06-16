package com.tommy.action;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class FileUploadAction extends ActionSupport {
    private static final long serialVersionUID = 572146812454l ;
    private static final int BUFFER_SIZE = 16 * 1024 ;
   
    private File myFile;
    private String contentType;
    private String fileName;
    private String imageFileName;
    private String caption;
    private File imageFile;
    public void setMyFileContentType(String contentType) {
        this .contentType = contentType;
   } 
   
    public void setMyFileFileName(String fileName) {
        this .fileName = fileName;
   } 
       
    public void setMyFile(File myFile) {
        this .myFile = myFile;
   } 
   
    public String getImageFileName() {
        return imageFileName;
   } 
   
    public String getCaption() {
        return caption;
   } 

     public void setCaption(String caption) {
        this .caption = caption;
   } 
   
    private static void copy(File src, File dst) {
        try {
        	if(! dst.exists()){
        		dst.createNewFile();
        	}
           InputStream in = null ;
           OutputStream out = null ;
            try {                
               in = new BufferedInputStream( new FileInputStream(src), BUFFER_SIZE);
               out = new BufferedOutputStream( new FileOutputStream(dst), BUFFER_SIZE);
                byte [] buffer = new byte [BUFFER_SIZE];
                while (in.read(buffer) > 0 ) {
                   out.write(buffer);
                   System.out.println("執行寫檔");
               } 
            }catch (Exception e) {
            	System.out.println("寫檔失敗");
                e.printStackTrace();
            }  finally {
                
                   in.close();
             
                   out.close();
        
           } 
        } catch (Exception e) {
           e.printStackTrace();
       } 
   } 
   
    private static String getExtention(String fileName) {
        int pos = fileName.lastIndexOf( " . " );
        return fileName.substring(pos);
   } 

   @Override
    public String execute() {        

       System.out.println(fileName);
       System.out.println(contentType);
       imageFileName=fileName;
       String WebPath=ServletActionContext.getServletContext().getRealPath("/upload/");
       System.out.println(WebPath);
       if(WebPath.indexOf("\\") > 0){
           imageFile = new File(WebPath+"\\"+fileName);
           System.out.println(imageFile.getAbsolutePath());
          }else{
           imageFile = new File(WebPath+"/"+fileName); 
           System.out.println(imageFile.getAbsolutePath());
          }
       if (! imageFile.exists()) {
    	   try {
    		  
			imageFile.createNewFile();
			 System.out.println("create file success");   
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
       System.out.println(imageFile.getAbsolutePath());
       copy(myFile, imageFile);
       
       System.out.println("After copy");
       System.out.println( "After copy");
       
        return SUCCESS;
   } 
   
} 