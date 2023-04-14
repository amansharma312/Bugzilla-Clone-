
package hello.controller;

import org.bson.Document;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import hello.database.DbConnection;
import hello.model.User;

@Controller
public class LoginController {
	
	@RequestMapping("/home")
	public String loginForm() {
		return "login";
	}
	
	
	@RequestMapping(path="/userLogin", method=RequestMethod.POST)
	public String displayLogin(@RequestParam("email") String email, @RequestParam("emailPassword") String emailPassword, User user) {
		
	 	// Accessing the database
	 	MongoDatabase database = DbConnection.getMongo().getDatabase("db1");

	 	MongoCollection<Document> collection = database.getCollection("sampleCollection");
	 	System.out.println("Collection demoCollection selected successfully");
	 
	 Document query = new Document();
	 query.put("email", email);
	 query.put("emailPassword", emailPassword);
	 Document json = collection.find(query).first();
	 
	 if(json!=null) 
		 return "home";
	 
	 return "error";
	}		
	
}