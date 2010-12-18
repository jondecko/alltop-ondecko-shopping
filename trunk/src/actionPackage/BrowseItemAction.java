package actionPackage;

import edu.franklin.db.sql.MapMakerProcessor;

import appObjects.Product;

public class BrowseItemAction implements Action 
{
	@Override
	public void process(ActionContainer data) 
	{		
		Product productHelper = new Product();
		MapMakerProcessor results;
		
		switch (data.getActionResult())
		{
		case INPUT:
			results = productHelper.getAllProducts();
			data.addOutput("results", results.getResults());
			break;
			
		case SUCESS:

			break;
			
		case NOTFOUND:
			break;
		}
	}
}