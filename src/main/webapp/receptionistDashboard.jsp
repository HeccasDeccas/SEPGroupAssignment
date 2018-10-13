<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"> 
        <title>Receptionist Dashboard</title>
    </head>
    <body>
        <div id="loginboxpadding">
            <div id="loginbox">
                <table>
                    <tr>
                        <td><img class="UTSLogoBlack" src="images/UTS_Logo_Black.png" alt="UTS_Logo"></td>
                        <td id="title">Stationery Management System</td>
                    </tr>
                </table>
                <h2>Welcome to the UTS Stationery Management System</h2>
                <h3>Please choose from the following options:</h3>
                <p>Note: you cannot return to the dashboard after selecting the "Request Form" button.</p>
                <table class="dashboardButtons">
                    <tr><td><input type="submit" class="button" onclick="window.location.href = 'receptionistViewOrders.jsp'" value="Fuck"></td></tr>
                    <tr><td><input type="submit" class="button" onclick="window.location.href = 'requestForm.jsp'" value="Request Form"></td></tr>

                    <tr><td>
                            <div class="boxLogoutButton">
                                <a href="logoutPage.jsp">Logout</a>
                            </div>
                        </td></tr>
                </table>
            </div>
        </div>
    </body>
</html>
