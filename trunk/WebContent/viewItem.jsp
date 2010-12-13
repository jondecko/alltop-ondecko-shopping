<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Altop/Ondecko Shopping Cart Application - View Item</title>
        <link rel="stylesheet" href="assets/css/comp461.css" />
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
	</head>
	<body>
	<center>
	<div class="mainShell">
		<jsp:include page="/includes/banner.jsp" />
		<jsp:include page="/includes/navigation.jsp" />
		<div class="pageIdentifier">View Item Page</div>
		<div class="content">
			<c:forEach var="result" items="${results}">
			<div class="viewItemShell">
				<!-- Left Panel -->
				<div class="viewItemLeftPanel">
					<div class="viewItemImage"><img width="150" height="150" src="${result.IMAGE}" /></div>
					<form action="addItemToCart.do" method="post">
					<p><input type="text" name="numItems" value="" id="numItems" /></p>
					<center><p><input type="submit" class="create" name="add" value="Add" id="add" /></p></center>
					<input style="display:none" type="text" name="product_ID" id="product_ID" value="${result.PRODUCT_ID}" />
					</form>
				</div>
				<!-- Right Panel -->
				<div class="viewItemRightPanel">
					<div class="viewItemName"><h2>${result.PRODUCT_NAME}</h2></div>
					<div class="viewItemShort"><p>${result.DESCRIPTION}</div>
					<div class="viewItemPrice"><p>${result.PRICE}</p></div>
					<div class="viewItemInStock"><p>Quantity Available(${result.QUANTITY_ON_HAND})</p></div>
					<div class="viewItemDescription"><p>${result.SUMMARY}</p></div>
				</div>
			</div>
			</c:forEach>
		</div>	<!-- End content div -->
    </div>	<!-- End mainShell div -->
    </center>
	</body>
</html>
