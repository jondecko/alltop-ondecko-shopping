package appObjects;

import java.util.ArrayList;

import edu.franklin.db.sql.AbstractSqlOperation;
import edu.franklin.db.sql.CompositeSqlOperation;
import edu.franklin.db.sql.ExecuteQuery;
import edu.franklin.db.sql.MapMakerProcessor;

public class Product 
{
	public Product()
	{
		// do nothing right now
	}
	
	public MapMakerProcessor getProduct(int productId)
	{
    	MapMakerProcessor queryResults = new MapMakerProcessor();
    	String command = "SELECT * FROM PRODUCTS WHERE product_ID=?";
    	AbstractSqlOperation query = new ExecuteQuery(queryResults, command, productId);
    	query.execute();
    	return queryResults;
	}
	
	public MapMakerProcessor getAllProducts()
	{
    	MapMakerProcessor queryResults = new MapMakerProcessor();
    	String command = "SELECT * FROM PRODUCTS";
    	AbstractSqlOperation query = new ExecuteQuery(queryResults, command);
    	query.execute();
    	return queryResults;
	}

	public MapMakerProcessor getProducts(ArrayList<String> cartListItemId)
	{
    	MapMakerProcessor queryResults = new MapMakerProcessor();
    	String command = "SELECT * FROM PRODUCTS WHERE product_ID=?";
    	CompositeSqlOperation query = new CompositeSqlOperation();
    	
    	for(int i = 0; i < cartListItemId.size(); i++)
    	{
    		AbstractSqlOperation tempQuery = new ExecuteQuery(queryResults, command, Integer.parseInt(cartListItemId.get(i)));
    		query.addSqlOperation(tempQuery);
    	}
    	query.execute();
    	return queryResults;
	}
}
