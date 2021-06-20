<%-- 
    Document   : Book_Appoitment
    Created on : Jun 17, 2021, 8:41:07 PM
    Author     : CHRIS MALEMA
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Appointment Book | Sickness Identifier</title>
        <link rel="stylesheet" href="CSS/Appointment.css">
    </head>
    <body>
          <%
           Date date=new Date(0);
           SimpleDateFormat formatter=new SimpleDateFormat("dd-MMM-yyyy");
           HttpSession hs=request.getSession();
           Beans.LoginBean[] lbn=(Beans.LoginBean[]) hs.getAttribute("LG");
           
        %>
        <div>
   <center>
        <h3>Date : <%=formatter.format(date)%></h3>
        <h3>Welcome : <%=lbn[0].getUsername()%></h3>
        <h4> <a href="index.html"><Strong>Click here to Logout</Strong></a> </h4>

    </center>
        </div>
        <center>
        <form method="POST" action="Appointment_BookingServ" name="RegisterForm" onsubmit=" return validateForm(this) ">
            
  <div class="container">
    <h1>Patients Personal Details</h1>
    <p>Fill the form below and we will get back soon to you for more updates.</p>
    <hr>
    <label for="name"><b>Full Name  :</b></label><br>
    <input type="text" placeholder="Enter Name" name="name">
    <label for="regUname"><b>Gender  :</b></label><br>
 <select name="gender" style="width: 40%;font-size: 15px;">
                    <option>Male</option>
                    <option>Female</option>
    </select><br>
    
    
    <label for="regPword"><b>Phone Number  :</b></label><br>
    <input type="text" placeholder="Enter contacts" name="contacts"><br>
    
    <label for="email"><b>Address  :</b></label><br>
    <input type="text" placeholder="Enter street name" name="street"><br>
    <input type="text" placeholder="Enter city" name="city">
    <br>
    <input type="text" placeholder="Enter Province" name="province">
    <br>
    <input type="text" placeholder="Enter postal code" name="postalcode">
    <br>
    
    <label for="email1"><b> Email :</b></label><br>
    <input type="email" placeholder="Enter Email" name="email">
    <br>
    
    
    <label for="dateofbirth">Appoitment Date </label><br>
     <input type="date" name="date" id="dateofbirth">
     <label for="dateofbirth">Appoitment Time </label><br>
     <input type="time" name="time" id="dateofbirth">
    
    <hr>

    <button type="submit" class="registerbtn"><strong>Register</strong></button>
  </div>

        </form>
    </center>
          <center>
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
        </center>
    </body>
</html>
