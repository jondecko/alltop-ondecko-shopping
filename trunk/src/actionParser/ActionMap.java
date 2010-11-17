package actionParser;

import java.util.HashMap;
import java.util.Map;

import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


/**
 * ActionMap.java
 * 
 * 
 * @author		Jimmy & Debbie
 * @version		1.0
 */
public class ActionMap 
{
	private Map<String, Map<String, String>> m_actionMap;
	
	/**
	 * ActionMap default constructor.
	 * 
	 * Disabled so it can not accidently be used.
	 */
	private ActionMap()
	{	
		// do nothing
	}
	
	/**
	 * ActionMap constructor.
	 * 
	 * A URL to a configuration file is passed and the ActionMap
	 * is created.  It parses the XML file down.
	 * 
	 * @param configUrl		URL to the config XML file.
	 */
	public ActionMap(String configUrl)
	{
		m_actionMap = new HashMap<String, Map<String, String>>();
		
		try
		{
			File file = new File(configUrl);
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(file);
			doc.getDocumentElement().normalize();
			//System.out.println("Root element " + doc.getDocumentElement().getNodeName());
			NodeList nodeLst = doc.getElementsByTagName("action");

			for (int s = 0; s < nodeLst.getLength(); s++) 
			{
				Node actionNode = nodeLst.item(s);
			   
			    if (actionNode.getNodeType() == Node.ELEMENT_NODE) 
			    {
			    	Element actionElement = (Element) actionNode;
			    	// Name
			    	NodeList nameElementList = actionElement.getElementsByTagName("name");
			    	Element nameElement = (Element) nameElementList.item(0);
			    	NodeList name = nameElement.getChildNodes();
			    	String nameStr = ((Node) name.item(0)).getNodeValue();
			    	// Class
			    	NodeList classElementList = actionElement.getElementsByTagName("class");
			    	Element classElement = (Element) classElementList.item(0);
			    	NodeList className = classElement.getChildNodes();
			    	String classStr = ((Node) className.item(0)).getNodeValue();
			    	// Success
			    	NodeList successElementList = actionElement.getElementsByTagName("success");
			    	Element successElement = (Element) successElementList.item(0);
			    	NodeList success = successElement.getChildNodes();
			    	String successStr = ((Node) success.item(0)).getNodeValue();
			    	// Failure
			    	NodeList failureElementList = actionElement.getElementsByTagName("failure");
			    	Element failureElement = (Element) failureElementList.item(0);
			    	NodeList failure = failureElement.getChildNodes();
			    	String failureStr = ((Node) failure.item(0)).getNodeValue();
			    	// Param
			    	NodeList paramElementList = actionElement.getElementsByTagName("param");
			    	Element paramElement = (Element) paramElementList.item(0);
			    	NodeList param = paramElement.getChildNodes();
			    	String paramStr = ((Node) param.item(0)).getNodeValue();
			    	//End of action node elements
			    	
			    	addAction(nameStr, classStr, successStr, failureStr, paramStr);
			    }
			}
		}
		catch (Exception e) 
		{			
		    e.printStackTrace();
		}
	}
	
	/**
	 * getClass method.
	 * 
	 * @param actionName	Name of the action class
	 * @return				Name of the Class for the specific action class
	 */
	public String getClassString(String actionName)
	{
		return m_actionMap.get(actionName).get("CLASS");
	}
	
	/**
	 * getSucess method.
	 * 
	 * @param actionName	Name of the action class
	 * @return				Name of the Success for the specific action class
	 */
	public String getSuccess(String actionName)
	{
		return m_actionMap.get(actionName).get("SUCCESS");
	}

	/**
	 * getFailure method.
	 * 
	 * @param actionName	Name of the action class
	 * @return				Name of the Failure for the specific action class
	 */
	public String getFailure(String actionName)
	{
		return m_actionMap.get(actionName).get("FAILURE");
	}
	
	/**
	 * getParam method.
	 * 
	 * @param actionName	Name of the action class
	 * @return				Name of the Param for the specific action class
	 */
	public String getParam(String actionName)
	{
		return m_actionMap.get(actionName).get("PARAM");
	}
	
	public Map<String, String> getWholeAction(String actionName)
	{
		return m_actionMap.get(actionName);
	}
	
	private void addAction(String actionName, String className, String success, String failure, String param)
	{
		Map<String, String> temp = new HashMap<String, String>();
		temp.put("CLASS", className);
		temp.put("SUCCESS", success);
		temp.put("FAILURE", failure);
		temp.put("PARAM", param);		
		m_actionMap.put(actionName, temp);
	}
}
