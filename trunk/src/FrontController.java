import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.lang.reflect.Method;

import actionParser.*;
import actionPackage.*;


/**
 * Servlet implementation class FrontController
 */
public class FrontController extends HttpServlet 
{
	ActionMap actionMap;
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
    }
    
	@Override
	public void init() throws ServletException 
	{
		actionMap = new ActionMap("/Users/Jimmy/Documents/Workspace/alltop-ondecko-shopping/frontcontroller-config.xml");	
		super.init();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("doGet");
		try
		{
			HttpSession session = request.getSession();
			System.out.println(session.getAttribute("userName"));
			
			// Get everything ready and sent to the proper action
			String reqURI = request.getRequestURI();
			String parsedURI = parsedUri(reqURI);
			Class theAction = Class.forName(actionMap.getClassString(parsedURI));
			Object theActionObject = theAction.newInstance();
			Method foundProcessMethod = findProcessMethod(theAction);
			ActionContainer actionContainer = new ActionContainer(ActionResult.INPUT);
			actionContainer.addParam("session", session);
			foundProcessMethod.invoke(theActionObject, actionContainer);
			
			Map sessionMap = new HashMap();
			Enumeration e = session.getAttributeNames();
		    while (e.hasMoreElements()) 
		    {
		      String name = (String) e.nextElement();
		      sessionMap.put(name, session.getAttribute(name));
		    }
						
			// Get everything ready and sent to the proper view
			String mappedResult = actionMap.getSuccess(parsedURI);
			request.setAttribute("results", actionContainer.getOutputs().get("results"));
		    request.setAttribute("sessionMap", sessionMap); 
			RequestDispatcher view = request.getRequestDispatcher(mappedResult);
			view.forward(request, response);
		}
		catch (Exception e)
		{
			System.out.println("doGet CAUGHT!!!");
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("doPost");
		try
		{
			HttpSession session = request.getSession();
			String reqURI = request.getRequestURI();
			String parsedURI = parsedUri(reqURI);
			Class theAction = Class.forName(actionMap.getClassString(parsedURI));
			Object theActionObject = theAction.newInstance();
			Method foundProcessMethod = findProcessMethod(theAction);
			ActionContainer actionContainer = new ActionContainer(ActionResult.SUCESS);
			
			String param;
			Enumeration temp = request.getParameterNames();
			
			while(temp.hasMoreElements())
			{
				param = temp.nextElement().toString();
				actionContainer.addParam(param, request.getParameter(param));
			}
			actionContainer.addParam("session", session);
			foundProcessMethod.invoke(theActionObject, actionContainer);
			
			Map sessionMap = new HashMap();
			Enumeration e = session.getAttributeNames();
		    while (e.hasMoreElements()) 
		    {
		      String name = (String) e.nextElement();
		      sessionMap.put(name, session.getAttribute(name));
		    }
					
			// Get everything ready and sent to the proper view
			String mappedResult = actionMap.getSuccess(parsedURI);
			request.setAttribute("results", actionContainer.getOutputs().get("results"));
		    request.setAttribute("sessionMap", sessionMap); 
			RequestDispatcher view = request.getRequestDispatcher(mappedResult);
			view.forward(request, response);
		}
		catch (Exception e)
		{
			System.out.println("doPost CAUGHT!!!");
			e.printStackTrace();
		}
	}
	
	/**
	 * findProcessMethod function.
	 * 
	 * This helper function will scan though the class passed in and look for a method by the name of
	 * "process".  The "process" method should be apart of any class that was implemented off of the
	 * Action base class.fs
	 * 
	 * @param classParam
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	private static Method findProcessMethod(Class classParam) throws Exception
	{
		Method[] methods = classParam.getMethods();
		for(int i = 0; i < methods.length; i++)
		{
			if (methods[i].getName().equals("process"));
			{
				return methods[i];
			}
		}
		// process method not found
		return null;
	}
	
	private String parsedUri(String uri)
	{
		String delims = "/";
		String[] tokens = uri.split(delims);		
		return tokens[tokens.length - 1];
	}
}
