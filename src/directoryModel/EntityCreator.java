package directoryModel;

import com.google.appengine.api.datastore.Text;

/**
 * 
 * @author Luis
 * The purpose of this class is to be used by servlets to instantiate and create the different entities that
 * the servlets might need.
 */
public class EntityCreator {
	
	/**
	 * Method to create a basic company object. takes in the following params.
	 * @param name
	 * @param website
	 * @param description
	 * @return Company object or null if unsuccessful.
	 */
	public static Company createCompany(String name, String website, Text description){
		if(Utility.isStringDataValid(name) && Utility.isStringDataValid(website) && description.getValue().length() > 0){
			return new Company(name, website, description);
		}else{
			return null;
		}
	}
	
	public static Address createAddress(String streetName,String streetName2, String city, String state, String zipcode){
		if(Utility.isStringDataValid(streetName) && Utility.isStringDataValid(city)	&& Utility.isStringDataValid(state) && Utility.isStringDataValid(zipcode)){
			return new Address(streetName,streetName2, city, state, zipcode);
		}else{
			return null;
		}		
	}
	
	public static PointOfContact createPointOfContact(String firstName, String lastName, String email){
		if(Utility.isStringDataValid(firstName) && Utility.isStringDataValid(lastName)&& Utility.isStringDataValid(email)){
			return new PointOfContact(firstName, lastName, email);
		}else{
			return null;
		}
	}
}