<%-- 
    Document   : Patient_View_Book_Info
    Created on : Jun 20, 2021, 4:12:01 AM
    Author     : CHRIS MALEMA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Booking Details</title>
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
     
            HttpSession s = request.getSession();
            ResultSet rs1 = (ResultSet)s.getAttribute("LogRset");
            
        %>
            
    <center>
        <h1 class="msg">Here is your Profile Information <%=rs1.getString("USERNAME")%></h1>
        
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
     <%while(rs1.next()){%>

  <tr>
      <td><%=rs1.getString("BOOK_ID") %></td>
      <td><%=rs1.getString("USERNAME") %></td>
      <td><%=rs1.getString("CONTACTS") %></td>
      <td><%=rs1.getString("EMAIL") %></td>
      <td><%=rs1.getString("GENDER") %></td>
      <td><%=rs1.getString("APPOINMENT_DATE") %></td>
      <td><%=rs1.getString("APPOINMENT_TIME") %></td>
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
