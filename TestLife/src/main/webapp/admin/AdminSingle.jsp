<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testLife Test</title>
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
<div class="container m-5 p-5">
		
		
        <div class="d-flex gap-0 column-gap-3">
            <div>
                <img src="testImages/${object1.img_url}" alt="${object1.test_name}" class="img-fluid rounded-5 mx-auto d-block" width="600" height="800" >
            </div>
            <div class=" gap-0 row-gap-1 d-inline-flex flex-column justify-content-center me-5">
                    <div class=" bg-success text-white align-self-start p-2">
                    Special 50% Off 
                    </div>
                    <h1 class="fs-1 fw-bold">${object1.test_name}</h1>
                    <p class="fs-4 fw-normal lh-base">
                    ${object1.description_notes}
                    </p>
                    <p class="fs-5 fw-2"><i class="fa-solid fa-medal fa-flip-vertical" style="color: #2139e8;"></i>&nbsp&nbspCertified Labs</p>
                    <p class="fs-5 fw-1"><i class="fa-solid fa-circle-check" style="color: #13c316;"></i>&nbsp&nbspFree Home Sample Pickup on orders above &#x20B9;500</p>
                    <div ><span class="fw-3 text-danger">-50%</span> <span class="fs-3 fw-bold">&#x20B9;${object1.test_price}</span></div>
                    <div class="fw-4 text-secondary ">Price:&#x20B9;<s>${object1.test_price*2}</s></div>
                    <div class="d-flex gap-0 column-gap-3">
                         <a href="update?test_id=${object1.test_id}"><button  type="submit" class="btn align-self-start btn-primary">Update</button></a>
                         <a href="deleteTest?test_id=${object1.test_id}"><button  type="submit" class="btn align-self-start btn-danger">Delete</button></a>
                    </div>            
             </div>
        </div>
</div>
<%@ include file="footer.jsp" %>
    