<%-- 
    Document   : output
    Created on : Jun 17, 2021, 4:02:34 PM
    Author     : CHRIS MALEMA
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Confirmation | Sickness Identifier</title>
<style>
            table 
{
  border-collapse: collapse;
  width: 50%;
}

th, td 
{
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th 
{
  background-color: burlywood;
  color: black;
}
        </style>
    </head>
    <body>
        <%
            Date date=new Date(0);
            SimpleDateFormat sdate=new SimpleDateFormat();
        HttpSession hs=request.getSession(false);
        Beans.RegisterBean[] rBean=(Beans.RegisterBean[])hs.getAttribute("RG");
        %>
        <h3 style="color: red"><%= sdate.format(date) %></h3>
        <h1>Registration Information</h1>
        <form method="post">
            <table>
                <tr>
                    <th>USERNAME</th>
                    <th>PASSWORD</th>
                    <th>EMAIL ADDRESS</th>
                    <th>CELLPHONE NUMBER</th>
                </tr>
                    <td><%=rBean[0].getUsername() %></td>
                    <td><%= rBean[0].getPasssowrd()%></td>
                    <td><%=rBean[0].getEmail()%></td>
                    <td><%= rBean[0].getCellphone()%></td>
                </tr>
            </table>
        </form>
                <br>
                <br>
                 <a href="Login.html" style="margin-top: 40%;"><Strong>Click here to Logout</Strong></a>
    </body>
</html>
