<%-- 
    Document   : index
    Created on : Aug 11, 2018, 9:34:31 PM
    Author     : George
--%>
<%@page import="uts.controller.Validator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css">
        <title>UTS Stationary Management System</title>
    </head>
    <body>         
        <div id="loginborder">
        <%
            String exist = (String) session.getAttribute("existErr");
            String idErr = (String) session.getAttribute("IDErr");
            String passError = (String) session.getAttribute("passErr");
        %>
        <table>
            <tr>
                <td><img class="UTSlogo" src="images/UTSlogo.png" alt="UTS_Logo"></td>
                <td id="title">Stationary Management System</td>
            </tr>
        </table>
        
        <h1>Enter your details to login: <span class="error"><%=(exist != null ? exist : "")%></span></h1>

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
