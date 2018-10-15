<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
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
            String fieldErr = (String) session.getAttribute("fieldErr");
            String nameErr = (String) session.getAttribute("nameErr");
            String idErr = (String) session.getAttribute("idErr");
            String emailErr = (String) session.getAttribute("emailErr");
            String quantityErr = (String) session.getAttribute("quantityErr");
        %>
        <% 
            Date today = new Date();
            SimpleDateFormat DATE_FORMAT = new SimpleDateFormat ("dd/MM/yyyy");
            DATE_FORMAT.setTimeZone(TimeZone.getTimeZone("Australia/Sydney"));
            String DDMMYYYYToday = DATE_FORMAT.format(today);
                    
        %>
        <h2 id="FillIn">Fill in the form to request stationery:</h2> 
        <p id="fieldError"><span class="error"><%=(fieldErr != null ? fieldErr  : "")%></span></p>     
        <form action="requestFormAction.jsp" method="post">
            <table class='formTable'>
                <tr><td>Name:</td><td><input size="23" type="text" name="name" value="<%=(nameErr != null ? nameErr : "")%>" required></td></tr>
                <tr><td>Staff ID:</td><td><input maxlength="10" size="23" type="text" name="ID" value="<%=(idErr != null ? idErr : "")%>" required></td></tr>
                <tr><td>Email:</td><td><input size="23" type="text" name="email" value="<%=(emailErr != null ? emailErr : "")%>" required></td></tr>         
                <tr><td>Faculty:</td><td><select name="faculty" required>
                    <option value="Faculty of Transdisciplinary Innovation">Faculty of Transdisciplinary Innovation</option>
                    <option value="Graduate School of Health">Graduate School of Health</option>
                    <option value="Faculty of Health">Faculty of Health</option>
                    <option value="UTS Business School">UTS Business School</option>
                    <option value="Faculty of Law">Faculty of Law</option>
                    <option value="Faculty of Science">Faculty of Science</option>
                    <option value="Faculty of Arts and Social Science">FASS</option>
                    <option value="Faculty of Design, Architecture and Building">FDAB</option>
                    <option value="Faculty of Engineering and Information Technology">FEIT</option>
                        </select></td></tr>
                <tr>
                    <td>Date of Request:</td>
                    <td>
                        <input id="datePrefil" size="23" type="text" name="dob" required readonly value="<%= DDMMYYYYToday %>">
                        <br>
                        <div id='prefilText'>*This field has been prefilled to today's date.</div>
                    </td>
                </tr>       
                <tr><td>Products: </td><td><select name="product" required>
                    <option value="HB Pencil">HB Pencil</option>
                    <option value="2B Pencil">2B Pencil</option>
                    <option value="Black Pen">Black Pen</option>
                    <option value="Blue Pen">Blue Pen</option>
                    <option value="Red Pen">Red Pen</option>
                    <option value="Notebooks">Notebook</option>
                    <option value="Sticky Notes">Sticky Notes</option>
                    <option value="Sticky Tape">Sticky Tape</option>
                    <option value="Rubber">Rubber</option>
                    <option value="Ruler">Ruler</option>
                    <option value="Whiteout">Whiteout</option>
                    <option value="Pencil Case">Pencil Case</option>
                    <option value="Plastic Sleeve">Plastic Sleeve</option>
                    <option value="Display Book">Rulers</option>
                    <option value="Folder">Folder</option>                    
                        </select></td></tr>
                <tr><td>Quantity:</td><td><input size = "23" type="number" name="quantity" value="<%=(quantityErr != null ? quantityErr : "")%>" required></td></tr>
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
            if (request.getParameter("Submit") != null) {
                fieldErr = nameErr = idErr = emailErr = quantityErr = null;                
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