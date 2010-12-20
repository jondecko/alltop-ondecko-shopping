package actionPackage;

import edu.franklin.db.sql.MapMakerProcessor;

import appObjects.Customer;
import appObjects.Product;

public class ViewOrderAction implements Action 
{
	@Override
	public void process(ActionContainer data) 
	{		
		Customer customerHelper = new Customer();
		MapMakerProcessor results;
		int orderId = Integer.parseInt(data.getParam("order_ID").toString());
		
		switch (data.getActionResult())
		{
		case INPUT:
			break;
			
		case SUCESS:
			results = customerHelper.getOrder(orderId);
			data.addOutput("results", results.getResults());
			break;
			
		case NOTFOUND:
			break;
		}
	}
}