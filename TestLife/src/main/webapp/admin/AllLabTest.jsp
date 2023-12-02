<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Lab Tests</title>
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
<div class="container   p-2 mt-5" >
<div class="active">
       <img src="images/banner3.jpg" class="mt-5 img-fluid rounded-5 banner" />
       <img src="images/banner.jpg" alt="covid_banner"  class="img-fluid rounded-5 mt-5 banner" width="1300" height="350" />
   </div>
        <h1 class="text-center mt-4 mb-4" style="color:#0a577a;">Visit the Diagnostic Tests Here</h1>
         <!-- Top Booked Diagnostic Tests  ......... -->
         
        <h2 class="mt-4 mb-4" id="Main Course" style="color:#05ab18;">Top Booked Diagnostic Tests </h2>
        <div class="d-flex gap-0 column-gap-4 " id="naman">
        <c:forEach items="${object}" var="test">
            
            	<div class="border border-white px-2 pb-3" style="max-width:20%;max-height:auto;">
                	<a href="adminSingle?test_id=${test.test_id}" class="link-underline-light link-dark link-underline-opacity-0 link-offset-3-hover link-offset-2 ">
                    	<div class="card_content">
                        	<h3 class="mt-2">${test.test_name}</h3>
                        	<p class="fs-6">${test.description_notes}</p>
                        	<p class="fs-5 fw-1">E-Reports with in 2 days</p>
                        	<p class=" fw-4 fs-4">&#x20B9;${test.test_price}</p>
                  	 </a>
                        	<div class="d-flex gap-0 column-gap-3">
                        		 <a href="update?test_id=${test.test_id}"><button  type="submit" class="btn align-self-start btn-primary">Update</button></a>
                         		 <a href="deleteTest?test_id=${test.test_id}"><button  type="submit" class="btn align-self-start btn-danger">Delete</button></a>
                            </div>  
                         </div>
                
                  </div>

          </c:forEach>           
          </div>

           <!-- Maternity essentials tests ......... -->
           
          <h2 class="mt-4 mb-4" id="Main Course" style="color:#ed53bc;">Maternity essentials Tests </h2>
        <div class="d-flex gap-0 column-gap-4 " id="naman">
        <c:forEach items="${object2}" var="test">
            
            	<div class="border border-white px-2 pb-3" style="width:20%;">
                	<a href="adminSingle?test_id=${test.test_id}" class="link-underline-light link-dark link-underline-opacity-0 link-offset-3-hover link-offset-2 ">
                    	<div class="card_content">
                        	<h3 class="mt-2">${test.test_name}</h3>
                        	<p class="fs-6">${test.description_notes}</p>
                        	<p class="fs-5 fw-1">E-Reports with in 2 days</p>
                        	<p class=" fw-4 fs-4">&#x20B9;${test.test_price}</p>
                  	 </a>
                        	<div class="d-flex gap-0 column-gap-3">
                        		 <a href="update?test_id=${test.test_id}"><button  type="submit" class="btn align-self-start btn-primary">Update</button></a>
                         		 <a href="deleteTest?test_id=${test.test_id}"><button  type="submit" class="btn align-self-start btn-danger">Delete</button></a>
                            </div>      
                         </div>
                
                  </div>

          </c:forEach>           
          </div>
          
          <!-- Top Booked Blood Tests........ -->
          
          <h2 class=" mt-4 mb-4" id="Main Course" style="color:#cf0606;">Top Booked Blood Tests </h2>
        <div class="d-flex gap-0 column-gap-4 mb-5 " id="naman">
        <c:forEach items="${object3}" var="test">
            
            	<div class="border border-white px-2  pb-3" style="width:20%;">
                	<a href="adminSingle?test_id=${test.test_id}" class="link-underline-light link-dark link-underline-opacity-0 link-offset-3-hover link-offset-2 ">
                    	<div class="card_content">
                        	<h3 class="mt-2">${test.test_name}</h3>
                        	<p class="fs-6">${test.description_notes}</p>
                        	<p class="fs-5 fw-1">E-Reports with in 1 day</p>
                        	<p class=" fw-4 fs-4">&#x20B9;${test.test_price}</p>
                  	 </a>
                        	<div class="d-flex gap-0 column-gap-3">
                        		 <a href="update?test_id=${test.test_id}"><button  type="submit" class="btn align-self-start btn-primary">Update</button></a>
                         		 <a href="deleteTest?test_id=${test.test_id}"><button  type="submit" class="btn align-self-start btn-danger">Delete</button></a>
                            </div>     
                         </div>
                
                  </div>

          </c:forEach>           
          </div>
          
          
         
    </div>
    <script type="text/javascript">
    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let slides = document.getElementsByClassName("banner");
        for (let i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1;
        }
        slides[slideIndex - 1].style.display = "block";
        setTimeout(showSlides, 2000); // Change image every 6 seconds (6000 milliseconds)
    }
    </script>
<%@ include file="footer.jsp" %> 