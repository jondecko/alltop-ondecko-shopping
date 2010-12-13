package testCode;
import java.util.Map;

import actionParser.ActionMap;

import junit.framework.TestCase;


public class ActionMapTest extends TestCase
{
	ActionMap testMap;
	
	public ActionMapTest()
	{
		testMap = new ActionMap("frontcontroller-config.xml");
	}
	
	public void testGetClassString() {
		assertEquals("RegisterClass", testMap.getClassString("register.do"));
		assertEquals("LoginClass", testMap.getClassString("Login"));
		assertEquals("EditProfileClass", testMap.getClassString("EditProfile"));
		assertEquals("ViewProfileClass", testMap.getClassString("ViewProfile"));
	}

	public void testGetSuccess() {
		assertEquals("/viewProfile.jsp", testMap.getSuccess("register.do"));
		assertEquals("/index.jsp", testMap.getSuccess("Login"));
		assertEquals("/viewProfile.jsp", testMap.getSuccess("EditProfile"));
		assertEquals("/viewProfile.jsp", testMap.getSuccess("ViewProfile"));
	}

	public void testGetFailure() {
		assertEquals("/index.jsp", testMap.getFailure("register.do"));
		assertEquals("/index.jsp", testMap.getFailure("Login"));
		assertEquals("/viewProfile.jsp", testMap.getFailure("EditProfile"));
		assertEquals("/viewProfile.jsp", testMap.getFailure("ViewProfile"));
	}

	public void testGetParam() {
		assertEquals("none", testMap.getParam("register.do"));
		assertEquals("none", testMap.getParam("Login"));
		assertEquals("none", testMap.getParam("EditProfile"));
		assertEquals("none", testMap.getParam("ViewProfile"));
	}

	public void testGetWholeAction() {
		Map<String, String> temp;
		
		temp = testMap.getWholeAction("register.do");
		assertEquals("RegisterClass", temp.get("CLASS"));
		assertEquals("/viewProfile.jsp", temp.get("SUCCESS"));
		assertEquals("/index.jsp", temp.get("FAILURE"));
		assertEquals("none", temp.get("PARAM"));
		
		temp = testMap.getWholeAction("ViewOrderCanceled");
		assertEquals("ViewOrderClass", temp.get("CLASS"));
		assertEquals("/viewOrderCanceled.jsp", temp.get("SUCCESS"));
		assertEquals("/index.jsp", temp.get("FAILURE"));
		assertEquals("none", temp.get("PARAM"));
		
		temp = testMap.getWholeAction("PlaceOrder");
		assertEquals("PlaceOrderClass", temp.get("CLASS"));
		assertEquals("/viewOrderCheckout.jsp", temp.get("SUCCESS"));
		assertEquals("/index.jsp", temp.get("FAILURE"));
		assertEquals("none", temp.get("PARAM"));
	}

}
