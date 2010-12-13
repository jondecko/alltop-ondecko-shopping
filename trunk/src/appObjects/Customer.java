package appObjects;
import java.util.HashMap;
import java.util.Map;

import edu.franklin.db.sql.AbstractSqlOperation;
import edu.franklin.db.sql.ExecuteQuery;
import edu.franklin.db.sql.ExecuteUpdate;
import edu.franklin.db.sql.MapMakerProcessor;


public class Customer 
{
	public Customer()
	{
		// do nothing right now
	}
	
	public MapMakerProcessor getCustomer(int customerId)
	{
    	MapMakerProcessor queryResults = new MapMakerProcessor();
    	String command = "SELECT * FROM CUSTOMERS WHERE CUSOMTER_ID=?";
    	AbstractSqlOperation query = new ExecuteQuery(queryResults, command, customerId);
    	query.execute();
    	return queryResults;
	}
	
	public MapMakerProcessor getCustomer(String userName)
	{
    	MapMakerProcessor queryResults = new MapMakerProcessor();
    	String command = "SELECT * FROM CUSTOMERS WHERE userName=?";
    	AbstractSqlOperation query = new ExecuteQuery(queryResults, command, userName);
    	query.execute();
    	return queryResults;
	}
	
	public void createCustomer(String firstName, String lastName, String email,
			String userName, String password, String address, String state, 
			String city, String zipCode, String areaCode, String phone)
	{
		AbstractSqlOperation input;
		String command = "INSERT INTO CUSTOMERS (firstName, lastName, email, userName, password, address, state, city, zipCode, areaCode, phone)"
			   + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		input = new ExecuteUpdate(command, firstName, lastName, email, userName, password, address, state, city, zipCode, areaCode, phone);
		input.execute();
	}
	
	public void updateCustomer(int employeeId, String firstName, String lastName, String email,
			String userName, String password, String address, String state, 
			String city, String zipCode, String areaCode, String phone)
	{
		AbstractSqlOperation input;
		String command = "UPDATE CUSTOMERS "
					   + "SET firstName='" + firstName + "', "
					   + "lastName='" + lastName + "', "
					   + "email='" + email + "', "
					   + "userName='" + userName + "', "
					   + "password='" + password + "', "
					   + "address='" + address + "', "
					   + "state='" + state + "', "
					   + "city='" + city + "', "
					   + "zipCode='" + zipCode + "', "
					   + "areaCode='" + areaCode + "', "
					   + "phone='" + phone + "' "
					   + "WHERE CUSTOMER_ID=" + employeeId;
		input = new ExecuteUpdate(command);
		input.execute();
	}
	
	public void deleteCustomer(int customerId)
	{
		// may add at some point
	}
}
