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
    				   + "NATURAL JOIN CUSTOMERS "
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
        				   + "NATURAL JOIN CUSTOMERS "
        				   + "WHERE CUSTOMER_ID=" + userId
        				   + " AND ORDER_STATUS='cart'";
        	query = new ExecuteQuery(queryResults, command);
        	query.execute();
    	}
    	m_focusOrder = Integer.parseInt(queryResults.getResults().get(0).get("ORDER_ID").toString());
	}
}
