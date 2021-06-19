<%-- 
    Document   : Doctor_Cancel_App
    Created on : Jun 19, 2021, 12:46:34 AM
    Author     : CHRIS MALEMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Cancel Appointment | Sickness Identifier</title>
        <style>

 .container {
  padding: 16px;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 38%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus,input[type=number]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
    width: 40%;
    border: 1px solid;
    margin-bottom: 10px;
    color: burlywood;
}

/* Set a style for the submit/register button */
.registerbtn {
  background-color: burlywood;
  color: black;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 40%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:1;
}
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
h1
{
    background-color: burlywood;
    width: 40%;
}
h2
{
    background-color: burlywood;
    width: 100%;
}
.f
{
    background-color: burlywood;
    padding: 10px;
}
img
{
    margin: 10px;
}
</style>
    </head>
    <body>
       
            <center>
            <h2>All the identities for the Appointments are unique so the appointment Identity can be used to identify which appointment to delete</h2>
            <br>
    <form method="post" action="Doc_CancelServ">
      <h1 ><strong>CANCEL AN APPOINTMENT</strong></h1>
    <hr>
    <i class="fa fa-user" aria-hidden="true"></i>
    <label for="uname"><b>APPOINTMENT ID :</b></label><br>
    <input type="text" placeholder="Enter the appointment ID to delete" name="App_ID" required=""> 
    <hr>

    <i class="fa fa-user" aria-hidden="true"></i>
    <label for="room"><b>APPOINTMENT STATUS :</b></label><br>
    <select name="Option" style="width: 40%;font-size: 15px;">
                    <option>CANCELED</option>
                    <option>POSTPONED</option>
    </select><br><br>
    <hr>
    <button class="registerbtn"type="submit"  name="remove"><strong>CANCEL APPOINTMENT</strong></button>
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
