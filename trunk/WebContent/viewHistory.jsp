<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Altop/Ondecko Shopping Cart Application - View History</title>
        <link rel="stylesheet" href="assets/css/comp461.css" />
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
	</head>
    <body>
	<center>
	<div class="mainShell">
		<jsp:include page="/includes/banner.jsp" />
		<jsp:include page="/includes/navigation.jsp" />
		<div class="pageIdentifier">View History Page</div>
		<div class="content">
			<form action="" method="post" >
                <div class="dialog">
                    <table border="1"><tr><th>Order Number</th><th>Order Status</th><th>Total Price</th><th>View</th></tr>
                        <tbody>
                        	<!-- Simple basic UI filler data -->
                           <tr class="prop">
                                <td valign="top" class="orderNumber">01526</td>
                                <td valign="top" class="orderStatusComplete">Complete</td>
                                <td valign="top" class="totalPrice">$150.25</td>
                                <td valign="top" class="action">
                                  <div class="buttons">
                                    <span class="button">
                                      <input type="button" onclick="location='viewOrderComplete.jsp'" value="View Order" />
                                    </span>
                                  </div>
                                </td>
                            </tr>
                           <tr class="prop">
                                <td valign="top" class="orderNumber">01582</td>
                                <td valign="top" class="orderStatusPending">Pending</td>
                                <td valign="top" class="totalPrice">$825.25</td>
                                <td valign="top" class="action">
                                  <div class="buttons">
                                    <span class="button">
                                      <input type="button" onclick="location='viewOrderPending.jsp'" value="View Order" />
                                    </span>
                                  </div>
                                </td>
                            </tr>
                           <tr class="prop">
                                <td valign="top" class="orderNumber">01625</td>
                                <td valign="top" class="orderStatusCanceled">Canceled</td>
                                <td valign="top" class="totalPrice">$25.85</td>
                                <td valign="top" class="action">
                                  <div class="buttons">
                                    <span class="button">
                                      <input type="button" onclick="location='viewOrderCanceled.jsp'" value="View Order" />
                                    </span>
                                  </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <br>
                    <br>
                </div>
            </form>
		</div>	<!-- End content div -->
    </div>	<!-- End mainShell div -->
    </center>
	</body>
</html>
