<%--
    Document   : requestFormAction
    Created on : Aug 11, 2018, 9:34:31 PM
    Author     : Declan Schillert, Ash Wan, Bec Helou, Brooklyn Ciba, Jamie Chan, Jarrod Watts
--%>

<%@page import="java.util.*"%>
<%@page import="uts.controller.*"%>
<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Form Action Page</title>
    </head>
    <body>
        <% String staffPath = application.getRealPath("WEB-INF/staffs.xml");%>
        <jsp:useBean id="staffApp" class="uts.wsd.StaffApplication" scope="application">
            <jsp:setProperty name="staffApp" property="filePath" value="<%=staffPath%>"/>
        </jsp:useBean>
        <%
            //Added DB Code:
            MongoMain database = new MongoMain();
            //Collect items

            //Add Getters:
            Staffs staffs = staffApp.getStaffs();
            //String staffID = request.getParameter("staffID");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String role = request.getParameter("role");
            String password = request.getParameter("password");
            String faculty = request.getParameter("faculty");
            String dateOfRequest = request.getParameter("dob");
            String product = request.getParameter("product");
            String quantity = request.getParameter("quantity");
            String ID = request.getParameter("ID");
            String tos = request.getParameter("tos");
                
            Validator v = new Validator();
            
            if (!v.validateName(name)) {
                session.setAttribute("nameErr", "Name format is incorrect.");
                session.setAttribute("fieldErr", "Invalid fields.");
                response.sendRedirect("requestForm.jsp");
            } else if (!v.validateID(ID)) {
                session.setAttribute("idErr", "ID format is incorrect.");
                session.setAttribute("fieldErr", "Invalid fields.");
                response.sendRedirect("requestForm.jsp");
            } else if (!staffs.matchStaffNameID(name, ID)){
                session.setAttribute("fieldErr", "Matching Name and Staff ID do not exist in database.");
                response.sendRedirect("requestForm.jsp");
            } else if (!v.validateEmail(email)) {
                session.setAttribute("emailErr", "Email format is incorrect.");
                session.setAttribute("fieldErr", "Invalid fields.");
                response.sendRedirect("requestForm.jsp");
            }  else if (!v.validateQuantity(quantity)) {
                session.setAttribute("quantityErr", "Quantity format is incorrect.");
                session.setAttribute("fieldErr", "Invalid fields.");
                response.sendRedirect("requestForm.jsp");     
            } else {
                Staff staff = new Staff(ID,name,email,password,role);
                database.add(name, ID, email, faculty, dateOfRequest, product, quantity);
                database.subtract(product, quantity);
                //session.setAttribute("staff", staff);
                //session.setAttribute("tos", tos);
                response.sendRedirect("formSubmitted.jsp");
            }
        %>
    </body>
</html>
