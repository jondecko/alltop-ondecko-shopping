<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Altop/Ondecko Shopping Cart Application - Login</title>
        <link rel="stylesheet" href="assets/css/comp461.css" />
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
    </head>
    <body>
	<center>
	<div class="mainShell">
		<jsp:include page="/includes/preLoginBanner.jsp" />
		<jsp:include page="/includes/preLoginNavigation.jsp" />
		<div class="pageIdentifier">Home Page</div>
		<div class="content">
			<form action="login.do" method="POST" >
                <div class="dialog">
                    <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userName">User Name</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="userName" value="" id="userName" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="password">Password</label>
                                </td>
                                <td valign="top" class="value ">
                                    <input type="password" name="password" value="" id="password" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input type="submit" class="enter" name="login" value="Login" id="login" /></span>
                </div>
            </form>
		</div>	<!-- End content div -->
	</div>	<!-- End mainShell div -->
    </center>
    </body>
</html>
