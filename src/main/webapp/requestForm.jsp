<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="css/style.css">
        <title>Request Page</title>
    </head>
    <body>
            <div class="container">
            <header>
                <img class="UTSLogoWhite" src="images/UTS_Logo_White.png" alt="UTS_Logo"> 
                    <h1>Stationery Management System</h1>   
            </header>
                 <div class="navbuttons">
                    <a href="logoutPage.jsp">Logout</a>
                </div>               
        <div class="maincontent">
         <%
            String nameErr = (String) session.getAttribute("nameErr");
            String idErr = (String) session.getAttribute("idErr");
            String emailErr = (String) session.getAttribute("emailErr");
        %>
        <h2 id="FillIn">Fill in the form to request stationery:</h2> 
        <form action="requestFormAction.jsp" method="post">
            <table>
                <tr><td>Name:</td><td><input size="23" type="text" name="name" value="<%=(nameErr != null ? nameErr : "")%>"></td></tr>
                <tr><td>Staff ID:</td><td><input size="23" type="text" name="staffID" value="<%=(idErr != null ? idErr : "")%>"></td></tr>
                <tr><td>Email:</td><td><input size="23" type="text" name="email" value="<%=(emailErr != null ? emailErr : "")%>"></td></tr>         
                <tr><td>Faculty:</td><td><input size="23" type="text" name="faculty"></td></tr>
                <tr><td>Date of Request:</td><td><input type="date" name="dob"></td></tr>
                <tr><td>Products: </td><td><select name="products">
                    <option value="pencils">Pencils</option>
                    <option value="pens">Pens</option>
                    <option value="notebooks">Notebooks</option>
                        </select></td></tr>
                <tr><td>Quantity:</td><td><input size = "23" type="text" name="quantity"></td></tr>
                <tr><td><input type="hidden" value="submitted" name="submitted"></td>
                    <td>
                        <input class="button" type="submit" id="submit" value="Submit"> 
                        &nbsp; 
                        <button class="button" type="button" onclick="location.href = 'requestForm.jsp'" > Clear </button>
                    </td>
                </tr>
            </table>
        </form>
        <%
            if (request.getParameter("submitted") != null) {
                nameErr = idErr = emailErr = null;                
            }          
            session.invalidate();
        %>
        
        </div>
        <footer>
            <p>Copyright UTS 2018 | All rights reserved.</p>
        </footer>
        </div>
        </div>
    </body>
</html>