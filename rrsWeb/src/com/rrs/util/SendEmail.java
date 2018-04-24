package com.rrs.util;  
  
import java.util.Date;  
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;  
import javax.mail.Message;  
import javax.mail.MessagingException;  
import javax.mail.PasswordAuthentication;  
import javax.mail.Session;  
import javax.mail.Transport;  
import javax.mail.internet.InternetAddress;  
import javax.mail.internet.MimeMessage;  
import javax.mail.*; 
import javax.mail.internet.*;
import javax.activation.*;
  
/** 
 *  
 * @author Qixuan.Chen 
 */  
public class SendEmail {  
      
    public static final String HOST = "smtp.163.com";  
    public static final String PROTOCOL = "smtp";     
    public static final int PORT = 25;  
    public static final String FROM = "m18902119287_1@163.com"; 
    public static final String PWD = "rrs12345678"; 
      
    /**  
     * @return 
     */  
    private static Session getSession() {  
        Properties props = new Properties();  
        props.put("mail.smtp.host", HOST); 
        props.put("mail.transport.protocol" , PROTOCOL);  
 
        props.put("mail.smtp.auth" , true);  
        props.setProperty("mail.debug", "true");
  
        Session session = Session.getInstance(props);  
          
        return session;  
    }  
      
    public static void send(String toEmail , String content) {  
        Session session = getSession();  
        try {  
            System.out.println("--send--"+content);  
            // Instantiate a message  
            Message msg = new MimeMessage(session);  
   
            //Set message attributes  
            msg.setFrom(new InternetAddress(FROM));  
            InternetAddress[] address = {new InternetAddress(toEmail)};   
            msg.setSubject("rrs注册");  
            msg.setSentDate(new Date());  
            //msg.addRecipient(Message.RecipientType.CC, new InternetAddress(FROM));
            msg.setContent(content , "text/html;charset=utf-8");  
			Transport transport = session.getTransport();
			// 
			transport.connect(FROM, PWD);
			// 
			transport.sendMessage(msg, new Address[] { new InternetAddress(toEmail) });
			//
			transport.close();
            
        }  
        catch (MessagingException mex) {  
            mex.printStackTrace();  
        }  
    }  
  
} 