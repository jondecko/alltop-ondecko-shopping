<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Altop/Ondecko Shopping Cart Application - Registration</title>
 		<link rel="stylesheet" href="assets/css/comp461.css" />
		<meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
	</head>
    <body>
    <center>
	<div class="mainShell">
		<jsp:include page="/includes/preLoginBanner.jsp" />
		<jsp:include page="/includes/preLoginNavigation.jsp" />
		<div class="pageIdentifier">Registration Page</div>
        <div class="content">
            <form action="register.do" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="firstName">First Name</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="firstName" value="" id="firstName" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lastName">Last Name</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="lastName" value="" id="lastName" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email">Email</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="email" value="" id="email" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="username">Username</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" maxlength="15" name="userName" value="" id="userName" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="password">Password</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" maxlength="15" name="password" value="" id="password" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="address">Address</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="address" value="" id="address" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state">State</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="state" value="" id="state" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="city">City</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="city" value="" id="city" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="zipcode">Zipcode</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="zipCode" value="" id="zipCode" />
                                </td>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="areacode">Area Code</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="areaCode" value="" id="areaCode" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="phone">Phone Number</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="phone" value="" id="phone" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input type="submit" class="save" name="register" value="Register" id="register" /></span>
                </div>
            </form>
        </div>
	</div>
    </center>
    </body>
</html>
