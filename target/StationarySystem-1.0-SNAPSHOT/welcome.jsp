<%@page contentType="text/html" import="java.util.*" import="uts.wsd.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css">
        <title>Welcome Page</title>
    </head>

    <div><span class="time"> <jsp:include page="date.jsp" flush="true"/></span></div>
    <% String staffPath = application.getRealPath("WEB-INF/staffs.xml");%>
    <jsp:useBean id="staffApp" class="uts.wsd.StaffApplication" scope="application">
        <jsp:setProperty name="staffApp" property="filePath" value="<%=staffPath%>"/>
    </jsp:useBean>
    <%
        Staffs staffs = staffApp.getStaffs();
        Staff staff = (Staff) session.getAttribute("staff");
        String tos = (String) session.getAttribute("tos");
    %>
    <body>

        <% if (tos != null && staff != null) {%>
        <h1>Hello, <%=staff.getName()%></h1> 
        <p>Your email: <%=staff.getEmail()%></p>
        <p>Your password is: <%=staff.getPassword()%></p>        
        <p>Your ID is: <%=staff.getID()%></p>
        <%
            staffs.addStaff(staff);
            staffApp.updateXML(staffs, staffPath);
            session.setAttribute("staff", staff);
        %>
        <button class="button" type="button" onclick="location.href = 'main.jsp'" > Main Page </button>
        <%} else {
            session.invalidate();
        %>
        <p class="outline">NOTE: You must agree to TOS</p>
        <button class="button" type="button" onclick="location.href = 'main.jsp'" > Main Page </button>
        <%}%>        
        <button class="button" type="button" onclick="location.href = 'index.jsp'" > Home Page </button>
    </body>
</html>
