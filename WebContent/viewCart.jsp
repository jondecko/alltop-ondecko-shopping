<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Altop/Ondecko Shopping Cart Application - View Cart</title>
        <link rel="stylesheet" href="assets/css/comp461.css" />
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
	</head>
    <body>
	<center>
	<div class="mainShell">
		<jsp:include page="/includes/banner.jsp" />
		<jsp:include page="/includes/navigation.jsp" />
		<div class="pageIdentifier">View Cart Page</div>
		<div class="content">
			<form action="viewOrderCheckout.jsp" method="POST" >
                <div class="dialog">
                    <table border="1"><tr><th></th><th>Product</th><th>Product Description</th><th>Quantity</th><th>Item Price</th><th>Total Price</th><th>Action</th>
                        <tbody>
                        	<!-- Simple basic UI filler data -->
                        	
                        	<c:forEach var="result" items="${results}">
                           <tr class="prop">
                           		<td valign="top" class="image"><img width="50" height="50" src="${result.IMAGE}"></td>
                                <td valign="top" class="name">${result.PRODUCT_NAME}</td>
                                <td valign="top" class="description">${result.DESCRIPTION}</td>
                                <td valign="top" class="quantity"></td>
                                <td valign="top" class="itemPrice"></td>
                                <td valign="top" class="totalPrice"></td>
                                <td valign="top" class="name">
                                  <div class="buttons">
                                    <span class="button">
                                      <input type="button" value="Edit" />
                                      <input type="button" value="Remove" />
                                    </span>
                                  </div>
                                </td>
                            </tr>
                            </c:forEach>
                            
                            
                            
                            <tr class="prop">
                           		<td></td>
                               	<td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td valign="top" class="grandTotalPrice">$150.25</td>
                                <td><input type="submit" value="Checkout" /></td>
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
