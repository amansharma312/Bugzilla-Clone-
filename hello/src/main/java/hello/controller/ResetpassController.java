package hello.controller;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.management.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.bson.Document;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mongodb.BasicDBObject;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;

import hello.database.DbConnection;

@Controller
public class ResetpassController {
	
	@RequestMapping("/resetpass")
	public String resetpasswordLink() {
		return "resetpass";
	}
	
	@RequestMapping("/reset")
	public String resetForm() {
		return "reset";
	}
	String mail;
	@RequestMapping(path="/resetprocess", method=RequestMethod.POST)
	public String resetProcessUrl(@RequestParam("email") String email) {
		mail = email;
//		mysession.setAttribute("email", email);
		System.out.print("first mail : "+mail);
		String to= mail;
        String from= "annu.sharma@anduriltechnologies.com";
        String message = "http://localhost:8086/hello/resetpass";
        String subject = "reset password";
       
		//Variable for gmail 
				String host="smtp.gmail.com";
				
				//get system properties
				Properties properties = System.getProperties();
				System.out.println("Properties"+properties);
				
				//setting important information to properties object
				
				//host set
				properties.put("mail.smtp.host", host);
				properties.put("mail.smtp.port", "465");
				properties.put("mail.smtp.ssl.enable", "true");
				properties.put("mail.smtp.auth", "true");
				
				//step 1 get session object..
				Session session=Session.getInstance(properties, new Authenticator() {

					@Override
					protected PasswordAuthentication getPasswordAuthentication() {
						
						return new PasswordAuthentication("annu.sharma@anduriltechnologies.com", "Hello@1234");
					}
					
				});
				
				session.setDebug(true);
				
				//step 2 compose message
				MimeMessage m = new MimeMessage(session);
				
				try {
					
				
				//from email
				m.setFrom(from);
				
				//adding recipient 
				m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				
				//adding subject
				m.setSubject(subject);
				
				//adding text
				m.setText(message);
				
				//send
				
				Transport.send(m);
				
				System.out.println("mail successfully Sent");
				return "success";
				
				}catch (Exception e) {
					e.printStackTrace();
				}
  return "error";
	}
	
	@RequestMapping(path="/resetpassword", method=RequestMethod.POST)
	public String resetPassword(@RequestParam("password1") String password1, @RequestParam("password2") String password2) {
		if(password1.matches(".*[0-9]{1,}.*") && password1.matches(".*[@#$]{1,}.*") && password1.length() >=15 && 
		   password1.length()<=100 && password1.equals(password2)) {
			// Accessing the database
		 	MongoDatabase database = DbConnection.getMongo().getDatabase("mydb1");

		 	MongoCollection<Document> collection = database.getCollection("sampleCollection");

//		      //Updating a document
//		      collection.updateOne(Filters.eq("email", "Robert.singh@gmail.com"), Updates.set("password", password1));
//		      System.out.println("Document update successfully...");
//		      FindIterable<Document> iterDoc = collection.find();
//		      Iterator it = iterDoc.iterator();
//		      while (it.hasNext()) {
//		         System.out.println(it.next());
//		      }
//				 	
		 	 
//		 	 Document query = new Document();
//			 query.put("email", mail);
//			 Document json =	collection.find(query).first();
//			 System.out.println("cursor is here!");
//			 System.out.print(json);
//			 String s =  json.getString("password");
		 	//System.out.print("second mail : "+email);
		 	//session.setAttribute("email", mail);
//			 String hello = (String) mysession.getAttribute("email");
			 
			 collection.updateOne(Filters.eq("email",mail), Updates.set("password", password1));
			
			 System.out.print("email Id is "+mail);

//			 if(json!=null) 
//				 return "home";		
			 return "justest";
	}
		 return "error";
}
}