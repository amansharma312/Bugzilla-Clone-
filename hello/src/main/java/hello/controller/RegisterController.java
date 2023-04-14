package hello.controller;

import java.util.Iterator;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.bson.Document;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import hello.database.DbConnection;
import hello.model.User;

@Controller
public class RegisterController {

	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping(path="/testing", method=RequestMethod.POST)
	public String checkUser(@RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("password1") String password1, @RequestParam("password2") String password2,User user, Model model) {
		MongoDatabase database = DbConnection.getMongo().getDatabase("db1");
		
		
	     
	      
		MongoCollection<Document> collection = database.getCollection("sampleCollection");
		System.out.println("Collection demoCollection selected successfully");
		Document document = new Document("title", "email details");
	
		
		if(password1.matches(".*[0-9]{1,}.*") && password1.matches(".*[@#$]{1,}.*") && password1.length() >=15 && password1.length()<=100 && password1.equals(password2)){
			document.append("name", name);
			document.append("email", email);
			document.append("emailPassword",password2);
			collection.insertOne(document);
			FindIterable<Document> iter = collection.find();
			
			Iterator it = iter.iterator();
			while(it.hasNext()) {
				System.out.print(it.next());
			}
			
			//email triggering
			
			String message = "Hello, You've been registered successfully";
			String subject = "Annu : Configuration";
			String to = email;
			String from = "annu.sharma@anduriltechnologies.com";
			
			
			
			String host = "smtp.gmail.com";
			
			
			//get the system properties
			
			Properties properties = System.getProperties();
			System.out.println("PROPERTIES :" + properties);
			
			//setting important information to properties object
			
			properties.put("mail.smtp.host", host);
			properties.put("mail.smtp.port", "465");
			properties.put("mail.smtp.ssl.enable", "true");
			properties.put("mail.smtp.auth", "true");
			
			
			//to get session object
			Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					// TODO Auto-generated method stub
					return new PasswordAuthentication("annu.sharma@anduriltechnologies.com", "Hello@1234");
				}
				
				
			});
			
			session.setDebug(true);
			
			//message Compose
			
			MimeMessage m = new MimeMessage(session);
			
			
			
			try {
				//from
				m.setFrom(from);
				
				//adding recipient
				m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				m.setText(message);
				
				//send;
				
				
				Transport.send(m);
				System.out.println("Message sent successfully");
				return "result";
			}catch (Exception e) {
				e.printStackTrace();
			}
			
        }
		 
		
		return "error";
	}
	

	
}