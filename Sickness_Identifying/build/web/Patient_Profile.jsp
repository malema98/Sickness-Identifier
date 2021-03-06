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
        <link rel="stylesheet" href="CSS/RegisterStyling.css">
        <style type="text/css">
             body{
                background-image: url("images/doc1.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                
            }
            table.t tr{
                background-color: white;
                font-size: 16px;
            }
            table.t, table.t th, table.t td {
                border: 1px solid black;
            }
            table.t {
            border-collapse: collapse;
            border: 1px solid black;
            width: 50%;
            position: left;
            }
            table.t th {
                
                height: 25px;
                text-align: left;
                background-color: burlywood;
                color: white;
            }
            
            table.t td {
                height: 16px;
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
                height: 16px;
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
            label
            {
                font-size: 16px;
            }

        </style>
    </head>
    <body>
        <%
     
            HttpSession s = request.getSession();
            ResultSet rs = (ResultSet)s.getAttribute("LogRset");
            
        %>
    <center>
        <h1 class="msg">Here is your Profile Information <%=rs.getString("USERNAME")%></h1>
        
        <table class="t">
                <th>Attribute</th><th>Value</th>
                <tr><td>username :</td><td><%=rs.getString("USERNAME")%></td></tr>
                <tr><td>Password</td><td><%=rs.getString("PASSWORD")%></td></tr>
                <tr><td>Email address : </td><td><%=rs.getString("EMAIL")%></td></tr>
                <tr><td>Contacts Number:</td><td><%=rs.getString("CONTACTS")%></td></tr>
                
            </table>
                
 <form method="POST" action="Patient_UpdateServlet">
       
  <div class="container">
    <h5>Edit and update your details here</h5>
    <hr>
    <label for="name"><b>username :</b></label><br>
    <input type="text" name="uname" value="<%=rs.getString("USERNAME")%>" >
    <br>
    <label for="pass"><b>Password :</b></label><br>
    <input type="password" value="<%=rs.getString("PASSWORD")%>" name="pass">
    <br>
    <label for="regPword1"><b>Email address :</b></label><br>
    <input type="email" value="<%=rs.getString("EMAIL")%>" name="email" >
     <br>
    <label for="regPword1"><b>Contacts Number :</b></label><br>
    <input type="text" value="<%=rs.getString("CONTACTS")%>" name="contact" >
    <br>
    <button type="submit" class="registerbtn" name="update"><strong>Update Profile</strong></button>
  </div>
</form>
            
            
        <br>
    </center>
        <div class="f">
                <center>
        
                <p>Connect With Us</p>
                <a href="https://www.facebook.com"><img src="images/facebook.png" style="width: 5%; height: 5%;"></a>
                <a href="https://www.instagram.com"><img src="images/instagram.png" style="width: 5%; height: 5%;"></a>
                <a href="https://www.twitter.com"><img src="images/twitter.png" style="width: 5%; height: 5%;"></a>
                <a href="https://www.gmail.com"><img src="images/gmail.png" style="width: 5%; height: 5%;"></a>
            <br>
            Sickness Identifier System By: CHRIS MALEMA 
                </center>
            </div>
    </body>
</html>
