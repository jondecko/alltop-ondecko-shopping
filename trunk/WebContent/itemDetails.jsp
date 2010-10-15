<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Item Details</title>
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
            <span class="menuButton"><a class="noicon" href="index.jsp">Checkout</a></span>
        </div>
        <div class="body">
            <h1>Alltop - Ondecko</h1>
            <h2>Item Details</h2>
            <form action="" method="post" >
                <div class="dialog">
                    <table border=\"1\"><tr><th>Product ID</th><th>Product Description</th><th>Quantity</th><th>Item Price</th><th>Status</th><th>Action</th>
                        <tbody>
                           <tr class="prop">
                                <td valign="top" class="name">
                                    <input type="text" name="" value="" id="" />
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="" value="" id="" />
                                </td>
                                <td valign="top" class="name">
                                    <input type="text" name="" value="" id="" />
                                </td>
                                <td valign="top" class="value ">
                                    <input type="text" name="" value="" id="" />
                                </td>
                                <td valign="top" class="name">
                                    <input type="text" name="" value="" id="" />
                                </td>
                                <td valign="top" class="name">
                                   <div class="buttons">
                                    <span class="button">
                                      <input type="submit" class="noicon" name="details" value="Details" id="details" />
                                      <input type="submit" class="create" name="add" value="Add" id="add" />
                                    </span>
                                  </div>
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
