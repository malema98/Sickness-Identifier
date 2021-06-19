<%-- 
    Document   : PatientPage
    Created on : Jun 19, 2021, 5:51:54 AM
    Author     : CHRIS MALEMA
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient | Sickness Identifier</title>
        <style type="text/css">
            body{
                background-color: white;
            }
            p{
                font-family: Times New Roman;
                font-size: 20px;
          
            }
            h1{
                font-size: 60px;
                background-color: #ffcccc;
            }
            
            table{
                font-size: 20px;
            }
            button{
                background-color: #ccffff;
                width: 250px;
                height: 30px;
            }
            button.out{
                background-color: #ff0033;
            }
            h3{
                color: forestgreen;
            }
            table.foot img{
                height:35px;
            }
            .f{
                background-color: #ddd;
            }
            
            .uname{
                height: 40px;
            }
            button:hover {background-color: lightgreen}
        </style>
    </head>
    <body>
      <%
           Date date=new Date(0);
           SimpleDateFormat formatter=new SimpleDateFormat("dd-MMM-yyyy");
           HttpSession hs=request.getSession();
           Beans.LoginBean[] lbn=(Beans.LoginBean[]) hs.getAttribute("LG");
           
        %>
        <h1>Dashboard</h1>
        <table class="user" align="left">
            <tr><td><img class="uname" src="images/usename.png"></td><td><%=lbn[0].getUsername()%></td></tr>
        </table>
        <center>
            
        <h3>Date : <%=formatter.format(date)%></h3>
        <h3>Welcome : <%=lbn[0].getUsername()%></h3> 
         </center>
            <p>We are very happy to see you visiting our site as you are a registered customer it does'nt matter whether it's your first time visiting our site 
                 as long as you are registered , we appreciate your loyalty 
            and it means a lot to us, we know that this sounds crazy but it really mean a lot to us and we are looking forward
             to keep on having you as our customer. </p>
            
            <table align='left'>
                <tr><td><a href="Patient_Profile.jsp"><button type="button">My Profile</button></a></td></tr>
                <tr><td><a href="GuestProfUpdate.jsp"><button type="button">Update Profile</button></a></td></tr>
                <tr><td><a href="About.jsp"><button type="button">News</button></a></td></tr>
                <tr><td><a href="Gallery.jsp"><button type="button">Gallery</button></a></td></tr>
                <tr><td><a href="GuestBookingPage.jsp"><button type="button">My Bookings</button></a></td></tr>
                <tr><td><a href="LoginPage.jsp"><button type="button" class="out">Log Out</button></a></td></tr>
            </table>
            
            <center>
            <img src="images/img1.jpg"
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
