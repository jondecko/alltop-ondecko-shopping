package actionPackage;

import javax.servlet.http.HttpSession;

import appObjects.Customer;
import appObjects.Order;

import edu.franklin.db.sql.MapMakerProcessor;

public class CheckoutAction implements Action 
{
	@Override
	public void process(ActionContainer data) 
	{		
		Order orderHelper		= new Order();
		MapMakerProcessor results;
		HttpSession session = (HttpSession)data.getParam("session");
		Customer customerHelper = new Customer();
		results = customerHelper.getCustomer((String)session.getAttribute("session_userName"));
		results.getResults().get(0).get("CUSTOMER_ID");
		int userId = Integer.parseInt(results.getResults().get(0).get("CUSTOMER_ID").toString());
		
		switch (data.getActionResult())
		{
		case INPUT:
			results = customerHelper.getHistory(userId);
			data.addOutput("results", results.getResults());
			break;
			
		case SUCESS:
			orderHelper.getEmptyOrder(userId);
			orderHelper.checkout();
			results = customerHelper.getHistory(userId);
			data.addOutput("results", results.getResults());
			break;
			
		case NOTFOUND:
			break;
		}
	}
}