package actionPackage;

import javax.servlet.http.HttpSession;

import appObjects.Customer;
import appObjects.Order;

import edu.franklin.db.sql.MapMakerProcessor;

public class RemoveCartItemAction implements Action 
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
			break;
			
		case SUCESS:
			int lineId = Integer.parseInt(data.getParam("line_ID").toString());
			orderHelper.removeLine(lineId);
			orderHelper.getEmptyOrder(userId);
			results = orderHelper.getOrder();
			data.addOutput("results", results.getResults());
			break;
			
		case NOTFOUND:
			break;
		}
	}
}