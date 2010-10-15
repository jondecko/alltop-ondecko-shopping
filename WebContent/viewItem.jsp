<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			<div class="viewItemShell">
				<!-- Left Panel -->
				<div class="viewItemLeftPanel">
					<div class="viewItemImage"><img src="assets/images/item1.jpg"></div>
					<form action="" method="post">
					<p><input type="text" name="" value="" id="" /></p>
					<center><p><input type="submit" class="create" name="add" value="Add" id="add" /></p></center>
					</form>
				</div>
				<!-- Right Panel -->
				<div class="viewItemRightPanel">
					<div class="viewItemName"><h2>Max</h2></div>
					<div class="viewItemShort"><p>Five pound dog with black hair.</div>
					<div class="viewItemPrice"><p>$125.25</p></div>
					<div class="viewItemStock"><p>In Stock (1)</p></div>
					<div class="viewItemDescription"><p>This is my dog Max.  He is about five pounds and is about a year and a half old.  He will bark at the
					mail man and keep you company in the evenings.  He likes to be fed about three 2-3 times a day (few cups of dry food), and he requires you
					to take him outside often (small bladder).  However, he is house broken and will wait if needed.  Great buy!</p></div>
				</div>
			</div>
		</div>	<!-- End content div -->
    </div>	<!-- End mainShell div -->
    </center>
	</body>
</html>
