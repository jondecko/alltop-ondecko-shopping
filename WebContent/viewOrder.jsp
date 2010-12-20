<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Altop/Ondecko Shopping Cart Application - View Order Pending</title>
        <link rel="stylesheet" href="assets/css/comp461.css" />
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
	</head>
    <body>
	<center>
	<div class="mainShell">
		<jsp:include page="/includes/banner.jsp" />
		<jsp:include page="/includes/navigation.jsp" />
		<div class="pageIdentifier">View Order Page Pending</div>
		<div class="content">
			<table border="1"><tr><th></th><th>Product</th><th>Quantity</th><th>Item Price</th><th>Total Price</th>
				<tbody>
                    <c:forEach var="result" items="${results}">
					<tr class="prop">
                        <td valign="top" class="image"><img width="100" height="100" src='${result.IMAGE}' /></td>
                        <td valign="top" class="description">${result.DESCRIPTION}</td>
                        <td valign="top" class="quantity">${result.LINE_QUANTITY}</td>
                        <td valign="top" class="itemPrice">${result.LINE_PRICE}</td>
                        <td valign="top" class="totalPrice">${result.LINE_TOTAL}</td>
					</tr>
					</c:forEach>
					<tr class="prop">
                    	<td></td>
                  		<td></td>
                        <td></td>
                        <td></td>
                        <td valign="top" class="grandTotalPrice">${results[0].FINAL_TOTAL}</td>
					</tr>
            	</tbody>
			</table>
		</div>	<!-- End content div -->
    </div>	<!-- End mainShell div -->
    </center>
	</body>
</html>
