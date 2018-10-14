<%-- 
    Document   : loginAction
    Created on : Aug 11, 2018, 9:34:31 PM
    Author     : Declan Schillert, Ash Wan, Bec Helou, Brooklyn Ciba, Jamie Chan, Jarrod Watts
--%>

<%@page import="uts.controller.*"%>
<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Action Page</title>
    </head>
    <body>
        <% String staffPath = application.getRealPath("WEB-INF/staffs.xml");%>
        <jsp:useBean id="staffApp" class="uts.wsd.StaffApplication" scope="application">
            <jsp:setProperty name="staffApp" property="filePath" value="<%=staffPath%>"/>
        </jsp:useBean>
        <%
            Staffs staffs = staffApp.getStaffs();
            String ID = request.getParameter("ID");
            String password = request.getParameter("password");
            Staff staff = staffs.login(ID, password);
            Validator v = new Validator();

            if (!v.validateID(ID)) {
                session.setAttribute("IDErr", "ID format is incorrect.");
                response.sendRedirect("index.jsp");
            } else if (!v.validatePassword(password)) {
                session.setAttribute("passErr", "Password format is incorrect.");
                response.sendRedirect("index.jsp");
            } else if (staff != null && staff.getRole().equals("staff")) {
                session.setAttribute("staffLogin", staff);
                response.sendRedirect("requestForm.jsp");
            } else if (staff != null && staff.getRole().equals("receptionist")) {
                session.setAttribute("staffLogin", staff);
                response.sendRedirect("receptionistDashboard.jsp");
            } else if (staff != null && staff.getRole().equals("stockroom")) {
                session.setAttribute("staffLogin", staff);
                response.sendRedirect("stockManagementDashboard.jsp");
            } else {
                session.setAttribute("existErr", "Staff account does not exist!");
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
