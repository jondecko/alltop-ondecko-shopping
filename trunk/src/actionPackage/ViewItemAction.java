package actionPackage;

import appObjects.Product;
import edu.franklin.db.sql.MapMakerProcessor;

public class ViewItemAction implements Action 
{
	@Override
	public void process(ActionContainer data) 
	{		
		Product productHelper = new Product();
		MapMakerProcessor results;
		
		switch (data.getActionResult())
		{
		case INPUT:
			break;
			
		case SUCESS:
			results = productHelper.getProduct(Integer.parseInt((String)data.getParam("product_ID")));
			data.addOutput("results", results.getResults());
			System.out.println(data.getParam("product_ID"));
			break;
			
		case NOTFOUND:
			break;
		}
	}
}