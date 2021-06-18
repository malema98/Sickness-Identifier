<%-- 
    Document   : Doctor_View_Appointments
    Created on : Jun 18, 2021, 11:08:58 PM
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
        <title>Doctor View App | Sickness Identifier</title>
                    <%
          Date dat=new Date(0);
          //Time time=new Time(0);
           SimpleDateFormat formatter=new SimpleDateFormat("dd-MMM-yyyy");
          // SimpleTimeZone timeformatter=new SimpleTimeZone(1,"HH:mm:ss");
           HttpSession hs=request.getSession();
           Beans.LoginBean[] lbn=(Beans.LoginBean[]) hs.getAttribute("LG");
         %>
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
        ResultSet rs = (ResultSet)h.getAttribute("view");
   %>
            
    <center>
        <h1>Welcome : Doctor <%=lbn[0].getUsername()%></h3</h1>
        <h3>Date : <%=formatter.format(dat)%></h3>
        
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
    <center>
        <a href="Doctor_Cancel_App.jsp"></a><button class="btn" style=" margin: 0.5%;position: absolute; left: 10%;" <strong>Cancel Appointment</strong></button>
    <a href="Doctor_Cancel_App.jsp" style="margin-top: 40%;"><Strong>Click here to Logout</Strong></a>
    </center>
    </body>
</html>
