<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Altop/Ondecko Shopping Cart Application - View Profile</title>
        <title>Registration Sucess</title>
        <link rel="stylesheet" href="assets/css/comp461.css" />
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
    </head>
    <body>
	<center>
	<div class="mainShell">
		<jsp:include page="/includes/banner.jsp" />
		<jsp:include page="/includes/navigation.jsp" />
		<div class="pageIdentifier">Registration Success Page</div>
		<c:forEach var="result" items="${results}">
        <div class="content">
			<table>
				<tr>
					<td width=45%>First Name:</td>
					<td>${result.FIRSTNAME}</td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td>${result.LASTNAME}</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td>${result.EMAIL}</td>
				</tr>
				<tr>
					<td>Username:</td>
					<td>${result.USERNAME}</td>
				</tr>
				<tr>
					<td>Password:</td>
					<td>${result.PASSWORD}</td>
				</tr>
				<tr>
					<td>Address:</td>
					<td>${result.ADDRESS}</td>
				</tr>
				<tr>
					<td>State:</td>
					<td>${result.STATE}</td>
				</tr>
				<tr>
					<td>City:</td>
					<td>${result.CITY}</td>
				</tr>
				<tr>
					<td>Zipcode:</td>
					<td>${result.ZIPCODE}</td>
				</tr>
				<tr>
					<td>Area Code:</td>
					<td>${result.AREACODE}</td>
				</tr>
				<tr>
					<td>Phone Number:</td>
					<td>${result.PHONE}</td>
				</tr>
			</table>
		</div>	<!-- End content div -->
		</c:forEach>
    </div>	<!-- End mainShell div -->
	</center>
    </body>
</html>
