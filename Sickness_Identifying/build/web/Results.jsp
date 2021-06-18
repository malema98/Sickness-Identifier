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
</style>
        <title>JSP Page</title>
    </head>
    <body>
        <table cellpadding="1"  cellspacing="1" border="1" bordercolor="gray">
         <tr>
            <th>SYMPTOMS</th>
            <th>SICKNESS</th>
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
  </tr>
  <%}%>
      </table>
    </body>
</html>
