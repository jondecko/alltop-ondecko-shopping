package appObjects;

import edu.franklin.db.sql.AbstractSqlOperation;
import edu.franklin.db.sql.ExecuteQuery;
import edu.franklin.db.sql.ExecuteUpdate;
import edu.franklin.db.sql.MapMakerProcessor;

public class Order 
{
	int m_focusOrder;
	
	public Order()
	{
		// do nothing right now
	}
	
	public void getEmptyOrder(int userId)
	{
    	MapMakerProcessor queryResults = new MapMakerProcessor();
    	String command = "SELECT * FROM ORDERS "
    				   + "INNER JOIN CUSTOMERS "
    				   + "ON ORD_CUST_ID = CUSTOMER_ID "
    				   + "WHERE CUSTOMER_ID=" + userId
    				   + " AND ORDER_STATUS='cart'";
    	AbstractSqlOperation query = new ExecuteQuery(queryResults, command);
    	query.execute();

    	if (0 == queryResults.getResults().size())
    	{
    		command = "INSERT INTO ORDERS (ORD_CUST_ID, ORDER_STATUS) " +
    				  "VALUES (" + userId + ", \'cart\')";
    		query = new ExecuteUpdate(command);
    		query.execute();
    		
        	queryResults = new MapMakerProcessor();
        	command = "SELECT * FROM ORDERS "
        				   + "INNER JOIN CUSTOMERS "
        				   + "ON ORD_CUST_ID = CUSTOMER_ID "
        				   + "WHERE CUSTOMER_ID=" + userId
        				   + " AND ORDER_STATUS='cart'";
        	query = new ExecuteQuery(queryResults, command);
        	query.execute();
    	}
    	m_focusOrder = Integer.parseInt(queryResults.getResults().get(0).get("ORDER_ID").toString());
	}

	public void addOrderLine(String productId, String numItems) 
	{
		MapMakerProcessor queryResults = new MapMakerProcessor();
		String command = "SELECT * FROM PRODUCTS WHERE PRODUCT_ID=" + productId;
		AbstractSqlOperation query = new ExecuteQuery(queryResults, command);
		query.execute();
		
		int productIdent	= Integer.parseInt(productId);
		double productPrice	= Double.parseDouble(queryResults.getResults().get(0).get("PRICE").toString());
		int numberItems		= Integer.parseInt(numItems);
		double lineTotal		= numberItems * productPrice;
		
		command	= "INSERT INTO ORDERLINES (LINE_ORDER_ID, ORD_PRODUCT_ID, LINE_QUANTITY, LINE_PRICE, LINE_TOTAL)"
			   	+ "VALUES (" + m_focusOrder + ", " +
			   	+ productIdent + ", "
			   	+ numberItems + ", "
			   	+ productPrice + ", "
			   	+ lineTotal + ")";
		AbstractSqlOperation input =  new ExecuteUpdate(command);
		input.execute();		
	}

	public MapMakerProcessor getOrder() 
	{
		MapMakerProcessor queryResults = new MapMakerProcessor();
		String command = "SELECT * FROM ORDERLINES "
						+ "INNER JOIN ORDERS "
						+ "ON LINE_ORDER_ID = ORDER_ID "
						+ "INNER JOIN PRODUCTS "
						+ "ON ORD_PRODUCT_ID = PRODUCT_ID "
						+ "WHERE LINE_ORDER_ID=" + m_focusOrder;
		AbstractSqlOperation query = new ExecuteQuery(queryResults, command);
		query.execute();
		return queryResults;
	}
}
