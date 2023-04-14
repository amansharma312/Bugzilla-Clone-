package hello.database;

import com.mongodb.MongoClient;

public class DbConnection {

private static MongoClient mongo;
	
	public static MongoClient getMongo() {
		// Creating a Mongo client which allows for making connections to mongodb
	 	 mongo = new MongoClient( "localhost" , 27017 ); 	

	 	return mongo;
	}
	
}
