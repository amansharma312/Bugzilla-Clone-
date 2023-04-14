package hello.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.time.LocalTime;
import java.util.Iterator;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import org.bson.Document;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import com.mongodb.BasicDBObject;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import com.mongodb.client.result.UpdateResult;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSInputFile;
import hello.database.DbConnection;
import hello.model.Cameo;

@Controller
public class BugController {
	
	
	
	int i=0;
	
	long num;
	String pf;
	CommonsMultipartFile picfile1;
	String bugNumber;
	String bugNumber1;
	String productField1;
	String componentError1;
	String version1;
	String severity1;
	String hardwareInfected1;
	String operatingSystem1;
	String summary1;
	String description1;
	
//	@RequestMapping(path="/processForm", method = RequestMethod.POST)
//	public String handleForm(@RequestParam("picfile") CommonsMultipartFile file, 
//	@RequestParam("productField") String productField, @RequestParam("componentError") String componentError,
//	@RequestParam("version") String version ,@RequestParam("severity") String severity ,
//	@RequestParam("hardwareInfected") String hardwareInfected, @RequestParam("operatingSystem") String operatingSystem,
//	@RequestParam("summary") String summary , @RequestParam("description") String description, Model model,
//	HttpSession session)
//	{
//		System.out.println("size of file is "+file.getSize());
//		System.out.println("content type of fle "+file.getContentType());
//		byte[] data = file.getBytes();
//		String path = session.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"resources"+File.separator
//		+"images"+File.separator+file.getOriginalFilename();
//		System.out.print(path);
//		
//		try {
//			FileOutputStream ot = new FileOutputStream(path);
//			ot.write(data);
//			ot.close();
//
//			System.out.println("file uploaded successfully");
//		}
//		catch(IOException e) {
//			e.printStackTrace();
//			System.out.print("error occurred in file uploading");
//		}
//		
//		if(i==0){
//			bugNumber = "BUG"+num;
//			i++;
//		}
//		else {
//			num += i;
//			bugNumber = "BUG"+num;
//		}
//
//	// Accessing the database
//	MongoDatabase database = DbConnection.getMongo().getDatabase("db1");
//	MongoCollection<Document> collection = database.getCollection("sampleCollection");
//	System.out.println("sampleCollection selected successfully");
//	Document document = new Document("bugNumber",bugNumber);
//	document.append("productField", productField);
//	document.append("componentError", componentError);
//	document.append("version", version);
//	document.append("severity", severity);
//	document.append("hardwareInfected", hardwareInfected);
//	document.append("operatingSystem", operatingSystem);
//	document.append("summary", summary);
//	document.append("description", description);
//	
//	// Inserting document into the collection
//	collection.insertOne(document);
//	System.out.println("Document inserted successfully");
//
//	//fetching last inserted document
//	Document myDoc = collection.find().sort(new Document("_id", -1)).first();
//	
//	productField1 = myDoc.getString("productField");
//	componentError1 = myDoc.getString("componentError");
//	version1 = myDoc.getString("version");
//	severity1 = myDoc.getString("severity");
//	hardwareInfected1 = myDoc.getString("hardwareInfected");
//	operatingSystem1 = myDoc.getString("operatingSystem");
//	summary1 = myDoc.getString("summary");
//	description1 = myDoc.getString("description");
//	
//	Cameo cameo = new Cameo();
//	cameo.setBugNumber(bugNumber);
//	cameo.setProductField(myDoc.getString("productField"));
//	cameo.setComponentError(myDoc.getString("componentError"));
//	cameo.setVersion(myDoc.getString("version"));
//	cameo.setSeverity(myDoc.getString("severity"));
//	cameo.setHardwareInfected(myDoc.getString("hardwareInfected"));
//	cameo.setOperatingSystem(myDoc.getString("operatingSystem"));
//	cameo.setSummary(myDoc.getString("summary"));
//	cameo.setDescription(myDoc.getString("description"));
//	model.addAttribute("user",cameo );
//	
//	updatedNumber = bugNumber;
//	return "bug";
//	}
//	 Accessing the database
//				MongoDatabase database = DbConnection.getMongo().getDatabase("db1");
//				MongoCollection<Document> collection = database.getCollection("sampleCollection");
//				System.out.println("sampleCollection selected successfully");
//				
//				collection.updateMany(Filters.eq("bugNumber", updatedNumber), 
//				Updates.combine(Updates.set("productField", productField),
//								Updates.set("componentError", componentError),
//								Updates.set("version", version),
//								Updates.set("severity", severity),
//								Updates.set("hardwareInfedted", hardwareInfected),
//								Updates.set("operatingSystem", operatingSystem),
//								Updates.set("summary", summary),
//								Updates.set("description", description)));
	
	@RequestMapping(path="/Form")
	public String bugform(@RequestParam("picfile") CommonsMultipartFile file, @RequestParam("productField") String productField, @RequestParam("componentError") String componentError,
			@RequestParam("version") String version,@RequestParam("severity") String severity ,
			@RequestParam("hardwareInfected") String hardwareInfected, @RequestParam("operatingSystem") String operatingSystem,
			@RequestParam("summary") String summary, @RequestParam("description") String description, Model model)
	{
			if(i==0){	
				num = 1001001;
				bugNumber = "BUG"+num;
				i++;
			}
			else {
				num += i;
				bugNumber = "BUG"+num;
			}	
			
			Cameo cameo = new Cameo();
			cameo.setBugNumber(bugNumber);
			cameo.setProductField(productField);
			cameo.setComponentError(componentError);
			cameo.setVersion(version);
			cameo.setSeverity(severity);
			cameo.setHardwareInfected(hardwareInfected);
			cameo.setOperatingSystem(operatingSystem);
			cameo.setSummary(summary);
			cameo.setDescription(description);
			
			//data used by the savefile handler and update handler
			picfile1 = file;
			bugNumber1 = bugNumber;
			productField1 = productField;
			componentError1 = componentError;
			version1= version;
			severity1 = severity;
			hardwareInfected1 = hardwareInfected;
			operatingSystem1 = operatingSystem;
			summary1 = summary;
			description1 = description;
			pf = picfile1.getOriginalFilename();
			cameo.setPf(pf);
				
			model.addAttribute("user",cameo);	
			return "testbug";
//		return "bug";
	}
	
	@RequestMapping(path="/savefilebug")
	public String saveBugfile(HttpSession session){
		
		System.out.println("size of file is "+picfile1.getSize());
		System.out.println("content type of fle "+picfile1.getContentType());
		byte[] data = picfile1.getBytes();
		String path = session.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"resources"+File.separator
		+"images"+File.separator+picfile1.getOriginalFilename();
		System.out.print(path);
		
		try {
			FileOutputStream ot = new FileOutputStream(path);
			ot.write(data);
			ot.close();

			System.out.println("file uploaded successfully");
		}
		catch(IOException e) {
			e.printStackTrace();
			System.out.print("error occurred in file uploading");
		}
		
		// Accessing the database
		MongoDatabase database = DbConnection.getMongo().getDatabase("db1");
		MongoCollection<Document> collection = database.getCollection("sampleCollection");
		System.out.println("sampleCollection selected successfully");
		Document document = new Document("bugNumber",bugNumber1);
		document.append("productField", productField1);
		document.append("componentError", componentError1);
		document.append("version", version1);
		document.append("severity", severity1);
		document.append("hardwareInfected", hardwareInfected1);
		document.append("operatingSystem", operatingSystem1);
		document.append("summary", summary1);
		document.append("description", description1);
		
		// Inserting document into the collection
		collection.insertOne(document);
		System.out.println("Document inserted successfully");
		return "home";

	}

	
//	@RequestMapping(path="/savefilebug", method=RequestMethod.POST)
//	public String saveBugfile(@RequestParam("productField") String productField, @RequestParam("componentError") String componentError,
//			@RequestParam("version") String version ,@RequestParam("severity") String severity ,
//			@RequestParam("hardwareInfected") String hardwareInfected, @RequestParam("operatingSystem") String operatingSystem,
//			@RequestParam("summary") String summary , @RequestParam("description") String description, HttpSession session, Model model){
//		
//		// Accessing the database
//		MongoDatabase database = DbConnection.getMongo().getDatabase("db1");
//		MongoCollection<Document> collection = database.getCollection("sampleCollection");
//		System.out.println("sampleCollection selected successfully");
//		Document document = new Document("bugNumber",bugNumber);
//		document.append("productField", productField);
//		document.append("componentError", componentError);
//		document.append("version", version);
//		document.append("severity", severity);
//		document.append("hardwareInfected", hardwareInfected);
//		document.append("operatingSystem", operatingSystem);
//		document.append("summary", summary);
//		document.append("description", description);
//		
//		// Inserting document into the collection
//		collection.insertOne(document);
//		System.out.println("Document inserted successfully");
//		return "home";
//
//	}
	
	@RequestMapping(path="/bugupdateprocessForm")
	public String updateBugFile(Model model) {
		Cameo cameo = new Cameo();
		cameo.setProductField(productField1);
		cameo.setComponentError(componentError1);
		cameo.setVersion(version1);
		cameo.setSeverity(severity1);
		cameo.setHardwareInfected(hardwareInfected1);
		cameo.setOperatingSystem(operatingSystem1);
		cameo.setSummary(summary1);
		cameo.setDescription(description1);
		model.addAttribute("updateduser",cameo);	
		return "bug";
	}

//	@RequestMapping(path="/bugupdateprocessForm", method=RequestMethod.POST)
//	public String updateBugFile(@RequestParam("bugNumber") String bugNumber,
//			@RequestParam("productField") String productField, @RequestParam("componentError") String componentError,
//			@RequestParam("version") String version ,@RequestParam("severity") String severity ,
//			@RequestParam("hardwareInfected") String hardwareInfected, @RequestParam("operatingSystem") String operatingSystem,
//			@RequestParam("summary") String summary , @RequestParam("description") String description, Model model,
//			HttpSession session) {
//	
//		Cameo cameo = new Cameo();
//		cameo.setProductField(productField);
//		cameo.setComponentError(componentError);
//		cameo.setVersion(version);
//		cameo.setSeverity(severity);
//		cameo.setHardwareInfected(hardwareInfected);
//		cameo.setOperatingSystem(operatingSystem);
//		cameo.setSummary(summary);
//		cameo.setDescription(description);
//		model.addAttribute("updateduser",cameo );
//		
//		return "bug";
//	}
	
}


