<%-- 
    Document   : Booking_Details_Confirm
    Created on : Jun 17, 2021, 11:09:08 PM
    Author     : CHRIS MALEMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking_Details</title>
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
    </head>
    <body>
        <%
        HttpSession hs=request.getSession(false);
        Beans.BookingBean[] rBean=(Beans.BookingBean[])hs.getAttribute("BB");
        %>
        < <table>
                <tr>
                    <th>NAME</th>
                    <th>GENDER</th>
                    <th>STREET NAME</th>
                    <th>CITY</th>
                    <th>PROVINCE</th>
                    <th>POSTAL CODE</th>
                    <th>APPOINTMENT DATE</th>
                    <th>APPOINTMENT TIME</th>
                    <th>EMAIL ADDRESS</th>
                    <th>CELL PHONE NUMBER</th>
                </tr>
                
                    <td><%=rBean[0].getName()%></td>
                    <td><%= rBean[0].getGender()%></td>
                    <td><%=rBean[0].getStreet()%></td>
                    <td><%= rBean[0].getCity()%></td>
                    <td><%=rBean[0].getProvince()%></td>
                    <td><%= rBean[0].getPostal_code()%></td>
                    <td><%=rBean[0].getAppointment_date()%></td>
                    <td><%= rBean[0].getTime() %></td>
                    <td><%=rBean[0].getEmail()%></td>
                    <td><%= rBean[0].getContacts()%></td>
                </tr>
            </table>
    </body>
</html>
