<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			<form action="" method="post" >
                <div class="dialog">
                    <table border="1"><tr><th></th><th>Product</th><th>Product Description</th><th>Quantity</th><th>Item Price</th><th>Total Price</th><th>Action</th>
                        <tbody>
                        	<!-- Simple basic UI filler data -->
                           <tr class="prop">
                           		<td valign="top" class="image"><img width="25%" height="25%" src="assets/images/item1.jpg"></td>
                                <td valign="top" class="name">Max</td>
                                <td valign="top" class="description">Five pound dog with black hair.</td>
                                <td valign="top" class="quantity">1</td>
                                <td valign="top" class="itemPrice">$125.25</td>
                                <td valign="top" class="totalPrice">$125.25</td>
                                <td valign="top" class="name">
                                  <div class="buttons">
                                    <span class="button">
                                      <input type="submit" class="save" name="edit" value="Edit" id="edit" />
                                      <input type="submit" class="delete" name="remove" value="Remove" id="remove" />
                                    </span>
                                  </div>
                                </td>
                            </tr>
                           <tr class="prop">
                           		<td valign="top" class="image"><img width="25%" height="25%" src="assets/images/item2.jpg"></td>
                                <td valign="top" class="name">High Five</td>
                                <td valign="top" class="description">A "high five" from a pro-highfiver.</td>
                                <td valign="top" class="quantity">5</td>
                                <td valign="top" class="itemPrice">$5.00</td>
                                <td valign="top" class="totalPrice">$25.00</td>
                                <td valign="top" class="name">
                                  <div class="buttons">
                                    <span class="button">
                                      <input type="submit" class="save" name="edit" value="Edit" id="edit" />
                                      <input type="submit" class="delete" name="remove" value="Remove" id="remove" />
                                    </span>
                                  </div>
                                </td>
                            </tr>
                            <tr class="prop">
                           		<td></td>
                               	<td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td valign="top" class="grandTotalPrice">$150.25</td>
                                <td><input type="submit" class="checkout" name="checkout" value="Checkout" id="checkout" /></td>
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
