<%-- 
    Document   : Results
    Created on : Jun 16, 2021, 9:27:47 PM
    Author     : CHRIS MALEMA
--%>

<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
.f{
                background-color: #ddd;
}
</style>
        <title>Results | Sickness identifier</title>
    </head>
    <body>
        <table cellpadding="1"  cellspacing="1" border="1" bordercolor="gray">
         <tr>
            <th>SYMPTOMS</th>
            <th>SICKNESS NAME</th>
            <th>CAUSES</th>
            <th>TREATMENT</th>
         </tr>
         <%
         HttpSession h = request.getSession();
        ResultSet rs = (ResultSet)h.getAttribute("Syp");
            List<String> employees  = (List<String>)request.getAttribute("name");
        %>
 <%while(rs.next()){%>

  <tr>
      <td><%=rs.getString("name") %></td>
      <td><%=rs.getString("sickness_name") %></td>
      <td><%=rs.getString("tuberculosis") %></td>
      <td><%=rs.getString("tuberculosis") %></td>
  </tr>
  <%}%>
      </table>
    <center>
      <a href="https://www.nhs.uk/conditions/tuberculosis-tb/causes/" target="_blank" >Click here for details about tuberculosis causes</a><br><br>
      <a href="https://www.cdc.gov/tb/topic/treatment/tbdisease.htm" target="_blank">Click here for details about tuberculosis treatment</a><br><br>
      <a href="https://www.google.co.za/maps" target="_blank" >Click here to locate the nearest hospital near </a><br><br><br>
    </center>

      </body>
</html>
