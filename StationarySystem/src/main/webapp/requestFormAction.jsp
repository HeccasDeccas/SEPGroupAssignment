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
        <title>RequestForm Action Page</title>
    </head>
    <body>
        
        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String faculty = request.getParameter("faculty");
            String products = request.getParameter("products");
            String quantity = request.getParameter("quantity");
            int key = (new Random()).nextInt(999999);
            String ID = "" + key;
            String tos = request.getParameter("tos");

            Validator v = new Validator();

            if (!v.validateName(name)) {
                session.setAttribute("nameErr", "Name format is incorrect!");
                response.sendRedirect("requestForm.jsp");
            } else if (!v.validateEmail(email)) {
                session.setAttribute("emailErr", "Email format is incorrect");
                response.sendRedirect("requestForm.jsp");
            }
                else if (!v.validateID(ID)) {
                session.setAttribute("idErr", "ID format is incorrect");
                response.sendRedirect("requestForm.jsp");
            } else {
                Staff staff = new Staff(ID,name,email,password);
                session.setAttribute("staff", staff);
                session.setAttribute("tos", tos);
                response.sendRedirect("welcome.jsp");
            }
        %>
    </body>
</html>
