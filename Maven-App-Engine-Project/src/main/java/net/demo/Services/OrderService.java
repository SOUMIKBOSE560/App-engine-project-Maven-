package net.demo.Services;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import com.google.cloud.datastore.Datastore;
import com.google.cloud.datastore.DatastoreOptions;
import com.google.cloud.datastore.Entity;
import com.google.cloud.datastore.Key;
import com.google.cloud.datastore.KeyFactory;

import jakarta.annotation.PostConstruct;
import net.demo.Entities.*;

import com.google.auth.oauth2.GoogleCredentials;
import org.springframework.core.io.ClassPathResource;

@Service
public class OrderService {
	
	@Value("${credentials}")
	private String key;

	
	public String saveDatainDatastore(OrderItem orderItem) throws IOException {
	// Instantiates a client
   // Datastore datastore = DatastoreOptions.getDefaultInstance().getService();
	
	GoogleCredentials credentials = GoogleCredentials.fromStream(new ClassPathResource(key).getInputStream());
	  Datastore datastore = DatastoreOptions.newBuilder()
	            .setProjectId("utopian-saga-400015")
	            .setCredentials(credentials)
	            .build()
	            .getService();
	  
	 System.out.println("Datastore is :: " + datastore);
    
    
    String kind = "OrderItem";
    Key taskKey = datastore.newKeyFactory().setKind(kind).newKey(101);
    Entity order = Entity.newBuilder(taskKey)
    		.set("Customer Name", orderItem.getCustomerName())
    		.set("Phone Number", orderItem.getPhoneNumber())
    		.set("Email", orderItem.getEmail())
    		.set("Food Item", orderItem.getFoodName())
    		.set("Extra Requirements", orderItem.getExtra())
    		.build();
    datastore.put(order);
    
    //Mail
    
    
    return "Order saved successfully";
    
    // The kind for the new entity
    // String kind = "Task";
     // The name/ID for the new entity
    // String name = "sampletask1";
     
     // The Cloud Datastore key for the new entity
    // Key taskKey = datastore.newKeyFactory().setKind(kind).newKey(12);
     
     // Prepares the new entity
    // Entity task = Entity.newBuilder(taskKey).set("description", "Buy milk").build();
     
     // Saves the entity
    // datastore.put(task);
 	
    
    
	}
}
