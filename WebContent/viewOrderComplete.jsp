<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Altop/Ondecko Shopping Cart Application - View Order Complete</title>
        <link rel="stylesheet" href="assets/css/comp461.css" />
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
	</head>
    <body>
	<center>
	<div class="mainShell">
		<jsp:include page="/includes/banner.jsp" />
		<jsp:include page="/includes/navigation.jsp" />
		<div class="pageIdentifier">View Order Complete Page</div>
		<div class="content">
			<table border="1"><tr><th></th><th>Product</th><th>Product Description</th><th>Quantity</th><th>Item Price</th><th>Total Price</th>
				<tbody>
                    <!-- Simple basic UI filler data -->
					<tr class="prop">
                        <td valign="top" class="image"><img width="25%" height="25%" src="assets/images/item1.jpg"></td>
                        <td valign="top" class="name">Max</td>
                        <td valign="top" class="description">Five pound dog with black hair.</td>
                        <td valign="top" class="quantity">1</td>
                        <td valign="top" class="itemPrice">$125.25</td>
                        <td valign="top" class="totalPrice">$125.25</td>
					</tr>
					<tr class="prop">
                        <td valign="top" class="image"><img width="25%" height="25%" src="assets/images/item2.jpg"></td>
                        <td valign="top" class="name">High Five</td>
                        <td valign="top" class="description">A "high five" from a pro-highfiver.</td>
                        <td valign="top" class="quantity">5</td>
                        <td valign="top" class="itemPrice">$5.00</td>
                        <td valign="top" class="totalPrice">$25.00</td>
                	</tr>
					<tr class="prop">
                    	<td></td>
                  		<td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td valign="top" class="grandTotalPrice">$150.25</td>
					</tr>
            	</tbody>
			</table>
			<div class="orderStatusComplete">
				<p>Order Status - Complete</p>
			</div>
		</div>	<!-- End content div -->
    </div>	<!-- End mainShell div -->
    </center>
	</body>
</html>
