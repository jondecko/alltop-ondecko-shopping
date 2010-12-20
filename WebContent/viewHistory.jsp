<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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
                <div class="dialog">
                    <table border="1"><tr><th>Order Number</th><th>Order Status</th><th>Total Price</th><th>View</th></tr>
                        <tbody>
                        	<c:forEach var="result" items="${results}">
                        	<tr class="prop">
                                <td valign="top" class="orderNumber">${result.ORDER_ID}</td>
                                <td valign="top" class="orderStatusComplete">${result.ORDER_STATUS}</td>
                                <td valign="top" class="totalPrice">${result.FINAL_TOTAL}</td>
                                <td valign="top" class="action">
                                    	<form name="${result.PRODUCT_ID}" action="viewOrder.do" method="POST">
										<input style="display:none" type="text" name="order_ID" id="order_ID" value="${result.ORDER_ID}" />${result.ORDER_ID}
										<input type="submit" value="Details" />
										</form>
                                </td>
                            </tr>
                        	</c:forEach>
                        </tbody>
                    </table>
                    <br>
                    <br>
                </div>
		</div>	<!-- End content div -->
    </div>	<!-- End mainShell div -->
    </center>
	</body>
</html>
