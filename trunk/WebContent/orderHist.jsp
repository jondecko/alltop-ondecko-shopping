<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Order History</title>
        <link rel="stylesheet" href="css/main.css" />
        <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <meta content="main" name="layout"/>
        <script type="text/javascript" src="js/application.js"></script>
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="images/spinner.gif" alt="Spinner" />
        </div>
        
        <div class="nav">
            <span class="menuButton"><a class="home" href="index.jsp">Home</a></span>
        </div>
        <div class="body">
            <h1>Alltop - Ondecko</h1>
            <h2>Order History</h2>
            <form action="" method="post" >
                <div class="dialog">
                    <table border="1"><tr><th>Order ID</th><th>Total Price</th>
                        <tbody>
                           <tr class="prop">
                                <td valign="top" class="name">
                                    <span class="menuButton"><a class="order" href="viewOrder.jsp">Order#1</a></span>
                                </td>
                         
                                <td valign="top" class="value ">
                                    <input type="text" name="" value="" id="" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <br>
                    <br>
                </div>
            </form>
        </div>
    </body>
</html>
