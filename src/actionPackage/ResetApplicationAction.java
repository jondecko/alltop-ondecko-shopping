package actionPackage;

import appObjects.Application;


public class ResetApplicationAction implements Action 
{
	@Override
	public void process(ActionContainer data) 
	{		
		Application applicationHelper = new Application();
		
		switch (data.getActionResult())
		{
		case INPUT:
			applicationHelper.resetApplication();
			break;
			
		case SUCESS:
			break;
			
		case NOTFOUND:
			break;
		}
	}
}