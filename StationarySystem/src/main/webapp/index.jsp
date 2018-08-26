<%-- 
    Document   : index
    Created on : Aug 11, 2018, 9:34:31 PM
    Author     : Declan Schillert, Ash Wan, Bec Helou, Brooklyn Ciba, Jamie Chan, Jarrod Watts
--%>
<%@page import="uts.controller.Validator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title>UTS Stationery Management System</title>
    </head>
    <body>         
        <div id="border">
        <%
            String exist = (String) session.getAttribute("existErr");
            String idErr = (String) session.getAttribute("IDErr");
            String passError = (String) session.getAttribute("passErr");
        %>
        <table>
            <tr>
                <td><img class="UTSlogo" src="images/UTSlogo.png" alt="UTS_Logo"></td>
                <td id="title">Stationery Management System</td>
            </tr>
        </table>
        
        <h2>Enter your details to login:</h2>
        <p id="loginerror"><span class="error"><%=(exist != null ? exist : "")%></span></p>

        <form action="loginAction.jsp" method="post">
            <table>                
                <tr><td>Staff ID:</td><td><input type="text" name="ID" value="<%=(idErr != null ? idErr : "")%>"/></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password" value="<%=(passError != null ? passError : "")%>"></td></tr>                
                <tr><td><input type="hidden" value="submitted" name="submitted"></td>
                    <td><input class="button" type="submit" value="Login"> 
                    </td>
                </tr>
            </table>
        </form>  
        <%
            if (request.getParameter("submitted") != null) {
                exist = idErr = passError = null;

            }
            session.invalidate();
        %>
        </div>
    </body>
</html>
