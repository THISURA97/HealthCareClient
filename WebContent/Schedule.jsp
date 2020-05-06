<%@page import="com.Schedule"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Schedule</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
  <script src="Components/Schedule.js"></script>
</head>
<body>
<form id="formSchedule" name="formSchedule" >
<div class="container-fluid">
 scheduleDate:
<input id="scheduleDate" name="scheduleDate" type="text"class="form-control form-control-sm" style="width: 50%"  required>
<br> scheduleTime:
<input id="scheduleTime" name="scheduleTime" type="text"class="form-control form-control-sm" style="width: 50%" required>
<br> scheduleType:
<input id="scheduleType" name="scheduleType" type="text"class="form-control form-control-sm" style="width: 50%" required>
<br> scheduleDoc:
<input id="scheduleDoc" name="scheduleDoc" type="text"class="form-control form-control-sm" style="width: 50%" required>
<br> scheduleHos:
<input id="scheduleHos" name="scheduleHos" type="text"class="form-control form-control-sm" style="width: 50%" required>
<br>
<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"> 
		
 <input type="hidden" id="hidScheduleIDSave" name="hidScheduleIDSave" value="">
  </form>                                                 
<br>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<div id="divScheduleGrid">
 <%
	 	Schedule schO = new Schedule();
 		out.print(schO.readItems());
 %>
</div>

</body>
</html>
