<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Altop/Ondecko Shopping Cart Application - Browse Items</title>
        <link rel="stylesheet" href="assets/css/comp461.css" />
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
	</head>
    <body>
    <center>
    <div class="mainShell">
    	<jsp:include page="/includes/banner.jsp" />
		<jsp:include page="/includes/navigation.jsp" />
		<div class="pageIdentifier">Browse Items Page</div>
		<div class="content">
			
				<table border="1">	
				<c:forEach var="result" items="${results}">
					<tr>
						<td width=10%><center><img width="100" height="100" src="${result.IMAGE}" /></center></td>
						<td width=55%>${result.DESCRIPTION}</td>
						<td width=10%>${result.PRICE}</td>
						<td width=5%>
							<form action="addItemToCart.do" method="post">
							<input style="display:none" type="text" name="product_ID" id="product_ID" value="${result.PRODUCT_ID}" />
							<input type="text" name="numItems" value="" id="numItems" />
							<input type="submit" name="add" value="Add" id="add" />
							</form>
						</td>	
						<td width=15%>
							<form name="${result.PRODUCT_ID}" action="viewItem.do" method="POST">
							<input style="display:none" type="text" name="product_ID" id="product_ID" value="${result.PRODUCT_ID}" />
							<input type="submit" value="Details" />
							</form>
						</td>
					</tr>
				</c:forEach>
				</table>
		</div>	<!-- End content div -->
    </div>	<!-- End mainShell div -->
    </center>
    </body>
</html>