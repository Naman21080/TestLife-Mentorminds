<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Tests</title>
<link rel="icon" type="icon" href="/images/labfav.svg">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <script src="https://kit.fontawesome.com/aece58d724.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css" />

</head>
<body style=background-color:#61caee20;>
<%@ include file="AdminNavBar.jsp" %>
<div class="container">
  <div class="bg-dark text-info display-4 px-4 foody ">Add All Diagnostic Tests</div>
  
  <form action="addAllTests" method="get" class="border border-dark px-2  mb-5">
<div >
<label for="category" class="mt-2">Category</label><br/>
<input type="text" class="form-control" id="category" name="category" placeholder="Enter Test Category">
</div>

<div>
<label for="test_name" class="mt-2 ">Test Name</label><br/>
<input type="text" class="form-control" id="test_name" name="test_name" placeholder="Enter test">
</div>

<div>
<label for="description_notes" class="mt-2 ">Description Notes</label><br/>
<input type="text" class="form-control" id="description_notes" name="description_notes" placeholder="Description of Test">
</div>

<div>
<label for="test_price" class="mt-2 ">Price</label><br/>
<input type="number" class="form-control" id="test_price" name="test_price" value="0">
</div>


<div>
<label for="img_url" class="mt-2 ">Image Url</label><br/>
<input type="text" class="form-control" id="img_url" name="img_url" placeholder="Enter url">
</div>

<input type="submit" class="btn btn-success mt-4 mb-2 " value="Save">
</form>
  </div>
<%@ include file="footer.jsp" %>