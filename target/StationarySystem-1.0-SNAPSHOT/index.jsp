<%-- 
    Document   : index
    Created on : Aug 11, 2018, 9:34:31 PM
    Author     : Declan Schillert, Ash Wan, Bec Helou, Brooklyn Ciba, Jamie Chan, Jarrod Watts
--%>
<%@page import="uts.controller.Validator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title>UTS Stationery Management System</title>
    </head>
    <body>      
        <div id="loginboxpadding">
        <div id="loginbox">
        <%
            String exist = (String) session.getAttribute("existErr");
            String idErr = (String) session.getAttribute("IDErr");
            String passError = (String) session.getAttribute("passErr");
        %>
        <%  
            System.out.print(session.getAttribute("existErr"));
        %>
        <script>console.log("<%=((HttpServletRequest) request).getSession().getAttribute("existErr")%>")</script>
        <table>
            <tr>
                <td><img class="UTSLogoBlack" src="images/UTS_Logo_Black.png" alt="UTS_Logo"></td>
                <td id="title">Stationery Management System</td>
            </tr>
        </table>
        
        <h2>Enter your details to login:</h2>
        <p id="fieldError"><span class="error"><%=(exist != null ? exist : "")%></span></p>

        <form action="loginAction.jsp" method="post">
            <table class="loginTable">                
                <tr>
                    <td>Staff ID:</td>
                    <td><input required class="loginFields" type="text" name="ID" value="<%=(idErr != null ? idErr : "")%>"/></td>
                </tr>
                <tr>
                    <td vertical-align="top">Password:</td>
                    <td>
                        <input required class="loginFields" id="password" type="password" name="password" value="<%=(passError != null ? passError : "")%>">
                        <br>
                        <div id="showPassowrd"><input type="checkbox" onchange="document.getElementById('password').type = this.checked ? 'text' : 'password'"> Show password</div>
                    </td>
                </tr>                
                <tr><td><input type="hidden" value="submitted" name="submitted"></td>
                    <td><input class="button" type="submit" id="Login" value="Login"> 
                    </td>
                </tr>
            </table>
        </form> 
       
        <!--This part below was only for test purposes but now that permissions are working it should be ok to delete. But leave it in for now.
        
        <div class="tempLoginButtons">
            <a href="stockManagementDashboard.jsp">Stockroom Dashboard</a>
            <br>
            <a href="receptionistDashboard.jsp">Receptionist Dashboard</a>
            <br>
        </div>-->
        <%
            if (request.getParameter("submitted") != null) {
                exist = idErr = passError = null;

            }
            session.invalidate();
        %>
        
        </div>
        </div>
    </body>
</html>
