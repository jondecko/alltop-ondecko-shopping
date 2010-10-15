<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			<form action="" method="post">
				<table border="1">
					<tr>
						<td width=10%><center><img src="assets/images/item1.jpg"></center></td>
						<td width=55%>Five pound dog with black hair.</td>
						<td width=10%>$125.25</td>
						<td width=5%><input type="text" name="" value="" id="" /></td>				
						<td width=15%>
						<input type="submit" class="noicon" name="details" value="Details" id="details" />
						<input type="submit" class="create" name="add" value="Add" id="add" /></td>
					</tr>
					<tr>
						<td width=10%><center><img src="assets/images/item2.jpg"></center></td>
						<td width=55%>A "high five" from a pro-highfiver.</td>
						<td width=10%>$5.00</td>
						<td width=5%><input type="text" name="" value="" id="" /></td>
						<td width=15%>
						<input type="submit" class="noicon" name="details" value="Details" id="details" />
						<input type="submit" class="create" name="add" value="Add" id="add" /></td>
					</tr>
				</table>
			</form>
		</div>	<!-- End content div -->
    </div>	<!-- End mainShell div -->
    </center>
    </body>
</html>
