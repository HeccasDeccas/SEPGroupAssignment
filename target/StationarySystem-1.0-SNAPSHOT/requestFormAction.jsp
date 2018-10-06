<%--
    Document   : requestFormAction
    Created on : Aug 11, 2018, 9:34:31 PM
    Author     : Declan Schillert, Ash Wan, Bec Helou, Brooklyn Ciba, Jamie Chan, Jarrod Watts
--%>

<%@page import="java.util.*"%>
<%@page import="uts.controller.*"%>
<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Form Action Page</title>
    </head>
    <body>
        
        <%
            //Added DB Code:
            MongoMain database = new MongoMain();
            //Collect items

            //Add Getters:
            String staffID = request.getParameter("staffID");
            String dateOfRequest = request.getParameter("dob");
            String product = request.getParameter("products");
            
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String role = request.getParameter("role");
            String password = request.getParameter("password");
            String faculty = request.getParameter("faculty");
            String products = request.getParameter("products");
            String quantity = request.getParameter("quantity");
            int key = (new Random()).nextInt(999999);
            String ID = "" + key;
            String tos = request.getParameter("tos");
                
            Validator v = new Validator();

            if (!v.validateName(name)) {
                session.setAttribute("nameErr", "Name format is incorrect");
                response.sendRedirect("requestForm.jsp");
            }   else if (!v.validateID(ID)) {
                session.setAttribute("idErr", "ID format is incorrect");
                response.sendRedirect("requestForm.jsp");
            } else if (!v.validateEmail(email)) {
                session.setAttribute("emailErr", "Email format is incorrect");
                response.sendRedirect("requestForm.jsp");
            } else {
                Staff staff = new Staff(ID,name,email,password,role);
                database.add(name, staffID, email, faculty, dateOfRequest, product, quantity);
                database.subtract(product, quantity);
                session.setAttribute("staff", staff);
                session.setAttribute("tos", tos);
                response.sendRedirect("formSubmitted.jsp");
            }
        %>
    </body>
</html>
