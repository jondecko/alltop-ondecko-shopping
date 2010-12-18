package actionPackage;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import appObjects.Customer;
import appObjects.Order;
import appObjects.Product;

import edu.franklin.db.sql.MapMakerProcessor;

public class AddCartItemAction implements Action 
{
	@Override
	public void process(ActionContainer data) 
	{		
		Product productHelper	= new Product();
		Order orderHelper		= new Order();
		MapMakerProcessor results;
		HttpSession session = (HttpSession)data.getParam("session");
		ArrayList<String> cartListItemId;
		ArrayList<String> cartListNumItems;
		Customer customerHelper = new Customer();
		results = customerHelper.getCustomer((String)session.getAttribute("session_userName"));
		results.getResults().get(0).get("CUSTOMER_ID");
		String foo = results.getResults().get(0).get("CUSTOMER_ID").toString();
		int userId = Integer.parseInt(foo);
		
		switch (data.getActionResult())
		{
		case INPUT:
			break;
			
		case SUCESS:
			if (null != session.getAttribute("cartListItemId"))
			{
				orderHelper.getEmptyOrder(userId);
				//orderHelper.addOrderLine((String)data.getParam("product_ID"), (String)data.getParam("numItems"));
				
				// TODO: need to get orderlines working
				
				cartListItemId		= (ArrayList<String>)session.getAttribute("cartListItemId");
				cartListNumItems	= (ArrayList<String>)session.getAttribute("cartListNumItems");
				
				cartListItemId.add((String)data.getParam("product_ID"));
				cartListNumItems.add((String)data.getParam("numItems"));
			}
			else
			{
				orderHelper.getEmptyOrder(userId);
				
				cartListItemId		= new ArrayList<String>();
				cartListNumItems	= new ArrayList<String>();
				
				cartListItemId.add((String)data.getParam("product_ID"));
				cartListNumItems.add((String)data.getParam("numItems"));
				
				session.setAttribute("cartListItemId", cartListItemId);
				session.setAttribute("cartListNumItems", cartListNumItems);
			}
			results = productHelper.getProducts(cartListItemId);
			data.addOutput("results", results.getResults());
			break;
			
		case NOTFOUND:
			break;
		}
	}
}