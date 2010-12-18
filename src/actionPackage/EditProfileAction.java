package actionPackage;

import javax.servlet.http.HttpSession;

import edu.franklin.db.sql.MapMakerProcessor;

import appObjects.Customer;

public class EditProfileAction implements Action 
{
	@Override
	public void process(ActionContainer data) 
	{		
		Customer customerHelper = new Customer();
		MapMakerProcessor results;
		HttpSession session = (HttpSession)data.getParam("session");
		
		switch (data.getActionResult())
		{
		case INPUT:
			results = customerHelper.getCustomer((String)session.getAttribute("session_userName"));
			data.addOutput("results", results.getResults());
			break;
			
		case SUCESS:
			results = customerHelper.getCustomer((String)session.getAttribute("session_userName"));
			int customerId = (Integer)results.getResults().get(0).get("CUSTOMER_ID");
			
			customerHelper.updateCustomer(customerId, (String)data.getParam("firstName"), (String)data.getParam("lastName"), (String)data.getParam("email"),
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