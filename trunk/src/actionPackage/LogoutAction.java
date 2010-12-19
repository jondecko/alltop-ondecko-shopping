package actionPackage;

import javax.servlet.http.HttpSession;


public class LogoutAction implements Action 
{
	@Override
	public void process(ActionContainer data) 
	{		
		HttpSession session = (HttpSession)data.getParam("session");
		
		switch (data.getActionResult())
		{
		case INPUT:
			session.removeAttribute("session_userName");
			break;
			
		case SUCESS:
			break;
			
		case NOTFOUND:
			break;
		}
	}
}