<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="css/style.css">
        <title>Login Page</title>
    </head>
    <body>
        <div id="loginborder">
         <%
            String nameErr = (String) session.getAttribute("nameErr");
            String emailErr = (String) session.getAttribute("emailErr");
            String idErr = (String) session.getAttribute("idErr");
        %>
        <table>
            <tr>
                <td><img class="UTSlogo" src="images/UTSlogo.png" alt="UTS_Logo"></td>
                <td id="title">Stationary Management System</td>
            </tr>
        </table>
        <h2>Fill in the form to request stationary:</h2> 
        <br>
        <form action="registerAction.jsp" method="post">
            <table>
                <tr><td>Name:</td><td><input size="23" type="text" name="name" value="<%=(nameErr != null ? nameErr : "")%>"></td></tr>
                <tr><td>Staff ID:</td><td><input size="23" type="text" name="staffID" value="<%=(idErr != null ? idErr : "")%>"></td></tr>
                <tr><td>Email:</td><td><input size="23" type="text" name="email" value="<%=(emailErr != null ? emailErr : "")%>"></td></tr>         
                <tr><td>Faculty:</td><td><input size="23" type="text" name="faculty"></td></tr>
                <tr><td>Date of Request:</td><td><input type="date" name="dob"></td></tr>
                <tr><td>Products: </td><td><select name="products">
                    <option value="pencils">Pencils</option>
                    <option value="pens">Pens</option>
                        </select></td></tr>
                <tr><td>Quantity:</td><td><input size = "23" type="number" name="quantity"></td></tr>
                <tr><td>Agree to Terms of Service</td><td><input type="checkbox" name="tos"></td></tr>
                <tr><td><input type="hidden" value="submitted" name="submitted"></td>
                    <td>
                        <input class="button" type="submit" value="Register"> 
                        &nbsp; 
                        <button class="button" type="button" onclick="location.href = 'index.jsp'" > Cancel </button>
                    </td>
                </tr>
            </table>
        </form>
        <%
            if (request.getParameter("submitted") != null) {
                nameErr = emailErr  = null;                
            }          
            session.invalidate();
        %>
        </div>
    </body>
</html>