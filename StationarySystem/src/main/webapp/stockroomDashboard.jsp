<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"> 
        <title>Stockroom Dashboard</title>
    </head>
     <body>
        <div id="background">
        <div id="box">
            <table>
            <tr>
                <td><img class="UTSlogo" src="images/UTS_Logo.png" alt="UTS_Logo"></td>
                <td id="title">Stationery Management System</td>
            </tr>
        </table>
        <h2 align="center">Welcome to the UTS Stationary Management System</h2>
        <h3 align="center">Please choose from the following options</h3>
        <div align="center"> 
            <table>
                <tr><td id="dashTable"><input type="submit" class="button" onclick="window.location.href='requestForm.jsp'" value="Request Form"></td></tr>
                <tr><td id="dashTable"><input type="button" class="button" onclick="window.location.href='index.jsp'" value="View All Stationary Requests"></td></tr>
                <tr><td id="dashTable"><input type="button" class="button" onclick="window.location.href='index.jsp'" value="Edit Stationary Requests"></td></tr>
            </table>
           
        </div>
        </div>
        </div>
    </body>
</html>
