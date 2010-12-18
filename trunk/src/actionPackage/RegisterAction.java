package actionPackage;

import java.util.HashMap;

import edu.franklin.db.sql.MapMakerProcessor;

import appObjects.Customer;

public class RegisterAction implements Action 
{
	@Override
	public void process(ActionContainer data) 
	{		
		Customer customerHelper = new Customer();
		MapMakerProcessor results;
		
		switch (data.getActionResult())
		{
		case INPUT:
			break;
			
		case SUCESS:
			// TODO: Possibly need to scrub the input to make sure all values are valid and enough values are input			
			customerHelper.createCustomer((String)data.getParam("firstName"), (String)data.getParam("lastName"), (String)data.getParam("email"),
					(String)data.getParam("userName"), (String)data.getParam("password"), (String)data.getParam("address"), (String)data.getParam("state"), 
					(String)data.getParam("city"), (String)data.getParam("zipCode"), (String)data.getParam("areaCode"), (String)data.getParam("phone"));
			results = customerHelper.getCustomer((String)data.getParam("userName"));
			data.addOutput("results", results.getResults());
			break;
			
		case NOTFOUND:
			break;
		}
	}
}