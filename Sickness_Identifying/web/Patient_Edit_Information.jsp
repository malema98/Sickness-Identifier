<%-- 
    Document   : Patient_Edit_Information
    Created on : Jun 20, 2021, 3:08:29 AM
    Author     : CHRIS MALEMA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/RegisterStyling.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Information | Sickness Identifier</title>
    </head>
    <body>
      <%
     
            HttpSession s = request.getSession();
            ResultSet rs = (ResultSet)s.getAttribute("LogRset");
            
        %>
    <center>
                
 <form method="POST" action="Patient_UpdateServlet">
       
  <div class="container">
    <h5>Edit and update your details here</h5>
    <hr>
    <label for="name"><b>username :</b></label><br>
    <input type="text" name="uname" value="<%=rs.getString("USERNAME")%>" readonly="">
    <br>
    <label for="regPword1"><b>Password :</b></label><br>
    <input type="password" value="<%=rs.getString("PASSWORD")%>" name="pass" >
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
