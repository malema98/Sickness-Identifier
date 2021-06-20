<%-- 
    Document   : Patient_View_BookingDetails
    Created on : Jun 20, 2021, 5:05:48 AM
    Author     : CHRIS MALEMA
--%>
<%@page import="java.util.SimpleTimeZone"%>
<%@page import="java.sql.Time"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Appointment details</title>
        <style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: burlywood;
  color: black;
}
.btn
{
    background-color: burlywood;
    width: 10%;
    height: 7%;
    cursor: pointer;
    position: fixed;
}
</style>
    </head>
    <body>
        <%
        HttpSession h = request.getSession();
        ResultSet rs = (ResultSet)h.getAttribute("LogRset");
   %>
            
    <center>
        
    </center>
 <table>
    <tr>
    <th>Book ID</th>
    <th>Username</th>
    <th>Cell Phone</th>
    <th>Email address</th>
    <th>Gender</th>
    <th>Appointment Date</th>
    <th>Appointment Time</th>
  </tr>
     <%while(rs.next()){%>

  <tr>
      <td><%=rs.getString("BOOK_ID") %></td>
      <td><%=rs.getString("USERNAME") %></td>
      <td><%=rs.getString("CONTACTS") %></td>
      <td><%=rs.getString("EMAIL") %></td>
      <td><%=rs.getString("GENDER") %></td>
      <td><%=rs.getString("APPOINMENT_DATE") %></td>
      <td><%=rs.getString("APPOINMENT_TIME") %></td>
  </tr>
  <%}%>
</table>
    <br>
    <center>
        <a href="Doctor_Cancel_App.jsp">Click here to delete an appointment</a><br><br>
    <a href="Doctor_Cancel_App.jsp" style="margin-top: 40%;"><Strong>Click here to Logout</Strong></a>
    </center>
    </body>
</html>
