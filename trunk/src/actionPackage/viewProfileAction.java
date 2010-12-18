package actionPackage;

import javax.servlet.http.HttpSession;

import edu.franklin.db.sql.MapMakerProcessor;

import appObjects.Customer;

public class viewProfileAction implements Action 
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
			data.addOutput("results", results.getResults());
			break;
			
		case NOTFOUND:
			break;
		}
	}
}