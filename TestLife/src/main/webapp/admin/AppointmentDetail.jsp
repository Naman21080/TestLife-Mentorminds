<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment Details</title>
<link rel="icon" type="icon" href="/images/labfav.svg">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <script src="https://kit.fontawesome.com/aece58d724.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css" />
<style type="text/css">
		body
		{
		    counter-reset: Serial;          
		}

		tr td:first-child:before
		{
		  counter-increment: Serial;      
		  content: counter(Serial); 
		}
	</style>
</head>
<body style=background-color:#61caee20;>
<%@ include file="AdminNavBar.jsp" %>
<div class="container"> 
     <table class="table table-striped table-hover table-bordered" style="margin-top:8%;margin-bottom:5%;">
       <thead>
        <tr>
       		<th scope="col" class="bg-success text-white text-center" colspan="9"><h2>List of Appointments</h2></th>
        </tr>
     	<tr>
     		<th scope="col">Order No.</th>
     		<th scope="col">Test Name</th>
     		<th scope="col">Price </th>
     		<th scope="col">Appointment Date</th>
     		<th scope="col">Appointment Time</th>
     		<th scope="col">Patient Name</th>
     		<th scope="col">User Name</th>
     		
     	</tr>
       </thead>
       <tbody>
     	<tr>
     		<td></td>
     		<td >Thyroid Profile</td>
    		<td>400</td>
    		<td>02/12/2023</td>
    		<td>12:30PM</td>
    		<td>Ajeet Kumar</td>
    		<td>Naveen Kumar</td>
     	</tr>
     	<tr>
     		<td></td>
     		<td >CBC Test</td>
    		<td>250</td>
    		<td>03/12/2023</td>
    		<td>11:30AM</td>
    		<td>Ajeet Kumar</td>
    		<td>Naveen Kumar</td>
     	</tr>
     	<tr>
     		<td></td>
     		<td >Afp Test</td>
    		<td>699</td>
    		<td>03/12/2023</td>
    		<td>01:30PM</td>
    		<td>Arti Devi</td>
    		<td>Jaya Gupta</td>
     	</tr>
     	</tbody>
     </table>
</div>
<%@ include file="footer.jsp" %>
