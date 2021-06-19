<%-- 
    Document   : Patient_Profile
    Created on : Jun 19, 2021, 2:35:13 AM
    Author     : CHRIS MALEMA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Profile | Sickness Identifier</title>
        <style type="text/css">
             body{
                background-image: url("images/img4.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }
            table.t tr{
                background-color: #f5f5f5;
            }
            table.t, table.t th, table.t td {
                border: 1px solid black;
            }
            table.t {
            border-collapse: collapse;
            border: 1px solid black;
            width: 50%;
            }
            table.t th {
                height: 50px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
            
            table.t td {
                height: 30px;
                vertical-align: bottom;
            }
            table.t th, table.t td {
                padding: 15px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
            button{
                background-color: orange;
                height: 30px;
                width: 200px;
                
            }
            table.foot td{
                height: 35px;
            }
            table.foot img{
                height:35px;
            }
            .f{
                background-color: white;
            }
            h1.msg{
                background-color: white;
            }
            
            button:hover {background-color: #4CAF50}

        </style>
    </head>
    <body>
         <%
     
            HttpSession s = request.getSession();
            ResultSet rs = (ResultSet)s.getAttribute("LogRset");
            
        %>
    <center>
        <h1 class="msg">Here is your Profile Information <%=rs.getString("FIRSTNAME")%> <%=rs.getString("LASTNAME")%> </h1>
        
        <table class="t">
                <th>Attribute</th><th>Value</th>
                <tr><td>FIRSTNAME:</td><td><%=rs.getString("FIRSTNAME")%></td></tr>
                <tr><td>LASTNAME:</td><td><%=rs.getString("LASTNAME")%></td></tr>
                <tr><td>NATIONALITY:</td><td><%=rs.getString("NATIONALITY")%></td></tr>
                <tr><td>ID/PASSPORT NUMBER:</td><td><%=rs.getString("IDNO")%></td></tr>
                <tr><td>GENDER::</td><td><%=rs.getString("GENDER")%></td></tr>
                <tr><td>CONTACT NO:</td><td><%=rs.getString("CONTACTNO")%></td></tr>
                <tr><td>EMAIL ADDRESS:</td><td><%=rs.getString("EMAIL")%></td></tr>
                <tr><td>ADDRESS:</td><td><%=rs.getString("ADDRESS")%></td></tr>
                <tr><td>USERNAME:</td><td><%=rs.getString("USERNAME")%></td></tr>
                <tr><td>PASSWORD:</td><td><%=rs.getString("PASSWORD")%></td></tr>
            </table>
            <br>
            
            <a href="GuestProfUpdate.jsp"><button type="button">Update Profile</button></a>
        <br>
    </center>
            <div class="f">
                <center>
            <table class="foot">
                <p>Connect With Us</p>
                <td><a href="https://www.facebook.com"><img src="images/facebook.png"></a></td>
                <td><a href="https://www.instagra.com"><img src="images/instagram.png"></a></td>
                <td><a href="https://www.twitter.com"><img src="images/twitter.png"></a></td>
                <td><a href="https://www.gmail.com"><img src="images/gmail.png"></a></td>
            </table><br>
            RestEasy Website By: NDIVHO MUKWEVHO 
                </center>
            </div>
    </body>
</html>
