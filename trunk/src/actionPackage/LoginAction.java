package actionPackage;

import javax.servlet.http.HttpSession;

import edu.franklin.db.sql.MapMakerProcessor;
import appObjects.Customer;

public class LoginAction implements Action 
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
			break;
			
		case SUCESS:
			// Pull up the user based off the username trying to in
			results = customerHelper.getCustomer((String)data.getParam("userName"));
			String resultUsr = (String)results.getResults().get(0).get("USERNAME");
			String resultPwd = (String)results.getResults().get(0).get("PASSWORD");
			
			if (resultPwd.equals((String)data.getParam("password")))
			{
				System.out.println("Logging in:\t" + resultUsr);
				session.setAttribute("session_userName", resultUsr);
			}
			else
			{
				System.out.println("Fail logging in:\t" + resultUsr);
			}
			break;
			
		case NOTFOUND:
			break;
		}
	}
}