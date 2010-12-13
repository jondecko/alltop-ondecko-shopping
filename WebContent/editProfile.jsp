<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Altop/Ondecko Shopping Cart Application - Edit Profile</title>
        <title>Edit Profile</title>
        <link rel="stylesheet" href="assets/css/comp461.css" />
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
    </head>
    <body>
	<center>
	<div class="mainShell">
		<jsp:include page="/includes/banner.jsp" />
		<jsp:include page="/includes/navigation.jsp" />
		<div class="pageIdentifier">Edit Profile Page</div>
        <div class="content">
            <form action="" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="firstName">First Name</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="firstName" id="firstName" value='${results[0].FIRSTNAME}' />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lastName">Last Name</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="lastName" id="lastName" value="${results[0].LASTNAME}" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email">Email</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="email" id="email" value="${results[0].EMAIL}"  />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="username">Username</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" maxlength="15" name="userName" id="userName" value="${results[0].USERNAME}" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="password">Password</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" maxlength="15" name="password" id="password"  value="${results[0].PASSWORD}" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="address">Address</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="address" value="${results[0].ADDRESS}" id="address" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state">State</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="state" value="${results[0].STATE}" id="state" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="city">City</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="city" value="${results[0].CITY}" id="city" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="zipcode">Zipcode</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="zipCode" value="${results[0].ZIPCODE}" id="zipCode" />
                                </td>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="areacode">Area Code</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="areaCode" value="${results[0].AREACODE}" id="areaCode" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="phone">Phone Number</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="phone" value="${results[0].PHONE}" id="phone" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input type="submit" class="save" name="savechange" value="Save Changes" id="savechange" /></span>
                </div>
            </form>
		</div>	<!-- End content div -->
    </div>	<!-- End mainShell div -->
	</center>
    </body>
</html>
