<%-- 
    Document   : Symptoms
    Created on : Jun 16, 2021, 2:51:36 AM
    Author     : CHRIS MALEMA
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Symptoms | Sickness Identifier</title>
    <div style="background-color: white">
         <%
           Date date=new Date();
           SimpleDateFormat formatter=new SimpleDateFormat("dd-MMM-yyyy");
           HttpSession hs=request.getSession();
         %>
    </div>
    <style>
/* Styling the Body element i.e. Color,
        Font, Alignment */
        body {
            background-color: burlywood;
            font-family: Verdana;
            text-align: center;     }
        
 
        /* Styling the Form (Color, Padding, Shadow) */
        form {
            background-color: #fff;
            max-width: 500px;
            margin: 50px auto;
            padding: 30px 20px;
            box-shadow: 2px 5px 10px rgba(0, 0, 0, 0.5);
        }
 
        /* Styling form-control Class */
        .form-control {
            text-align: left;
            margin-bottom: 25px;
        }
 
        /* Styling form-control Label */
        .form-control label {
            display: block;
            margin-bottom: 10px;
        }
 
        /* Styling form-control input,
        select, textarea */
        .form-control input,
        .form-control select,
        .form-control textarea {
            border: 1px solid #777;
            border-radius: 2px;
            font-family: inherit;
            padding: 10px;
            display: block;
            width: 95%;
        }
 
        /* Styling form-control Radio
        button and Checkbox */
        .form-control input[type="radio"],
        .form-control input[type="checkbox"] {
            display: inline-block;
            width: auto;
        }
 
        /* Styling Button */
        button {
            background-color: #05c46b;
            border: 1px solid #777;
            border-radius: 2px;
            font-family: inherit;
            font-size: 21px;
            display: block;
            width: 100%;
            margin-top: 50px;
            margin-bottom: 20px;
        }
    </style>
    </head>
    <body style="background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(images/background.jpeg);">
        <%
        HttpSession h = request.getSession();
        ResultSet rs = (ResultSet)h.getAttribute("sypmto");
        %>
        
        <form id="form" method="POST" action="ResultsServ">
  
        <div class="form-control">
            <label for="age" id="label-age">
                Age
            </label>
 
            <!-- Input Type Text -->
            <input type="text"
                   id="age"
                   placeholder="Enter your age" />
        </div>
  
        </div>
  <div class="form-control">
            <label>
                Gender
            </label>
            <!-- Input Type Radio Button -->
            <label for="recommed-1">
                <input type="radio" id="male" name="gender">Male</input></label>
                <label for="recommed-2">
                    <input type="radio" id="female" name="gender">Female
                </label>
        </div>
        <div class="form-control">
            <label>
                I’m overweight or obese
            </label>
            <!-- Input Type Radio Button -->
            <label for="recommed-1">
                <input type="radio" id="recommed-1" name="obese">Yes</label>
                <label for="recommed-2">
                    <input type="radio" id="recommed-1" name="obese">No</input></label>
                </label>
            <label for="recommed-3">
                <input type="radio" id="recommed-3" name="obese">I don't know
            </label>
        </div>
                <div class="form-control">
            <label>
               I smoke cigarettes
            </label>
            <!-- Input Type Radio Button -->
            <label for="recommed-1">
                <input type="radio" id="recommed-1" name="smoke">Yes</input></label>
                <label for="recommed-2">
                    <input type="radio" id="recommed-1" name="smoke">No</input></label>
                </label>
            <label for="recommed-3">
                <input type="radio" id="recommed-3" name="smoke">I don't know
            </label>
        </div>
                <div class="form-control">
            <label>
                I have diabetes
            </label>
            <!-- Input Type Radio Button -->
            <label for="recommed-1">
                <input type="radio" id="recommed-1" name="diabetes">Yes</input></label>
                <label for="recommed-2">
                  <input type="radio" id="recommed-1" name="diabetes">No</input></label>  
            <label for="recommed-3">
                <input type="radio" id="recommed-3" name="diabetes">I don't know
            </label>
        </div>
  
        <div class="form-control">
            <label>Symptoms
                <small>(Check all symptoms that apply to you)</small>
            </label>
            <%while(rs.next()){%>
            <!-- Input Type Checkbox -->
            <label for="inp-1">
                <input type="checkbox" name="name" value="<%=rs.getString("name") %>"><%=rs.getString("name") %> 
                 <%}%>
            </label>
        </div> 
       <!-- Multi-line Text Input Control -->
       <button type="submit" value="submit" >Submit</button>
        </form>
    </body>
</html>
