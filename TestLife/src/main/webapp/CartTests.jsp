<%@ include file="header.jsp" %>
<div class="container">
  <h1 class= "text-center" style="margin-top:5%;margin-bottom:3%;color:#DC143C">Cart's Tests & Appointments</h1>
  <div class="d-flex">
   <div class="container"> 
     <table class="table table-striped table-hover table-bordered  m-0">
       <thead>
        <tr>
       		<th scope="col" class="bg-dark text-info text-center" colspan="3"><h2>List of Added tests</h2></th>
        </tr>
     	<tr>
     		<th scope="col">Test Name</th>
     		<th scope="col" colspan="2">Price </th>
     	</tr>
       </thead>
       <tbody>
       <c:forEach items="${object4}" var="test">
     	<tr>
     		<td scope="row">${test.test_id.test_name}</td>
    		<td>&#x20B9;${test.test_id.test_price}</td>
    		<c:set var="total" value="${total+test.test_id.test_price}"/>
    		<td colspan="2" style="font-size:20px;">
    		<div class="container bg-white border border-dark text-center" style="width:100px;">
    			<a href="deleteCartTest?cartId=${test.cartId}"><i class="fa-solid fa-circle-minus" style="color:#FF0000"></i></a>
    			<span>&nbsp2&nbsp</span>
    			<a href="#"><i class="fa-solid fa-circle-plus" style="color: #3cba12;"></i></a>
    		</div>
    		</td>
     	</tr>
     	</c:forEach>
     	<tr>
     	<td class="fw-5 fs-4">Total Amount </td>
     	<td class="fw-5 fs-4" colspan="2">&#x20B9;<c:out value="${total}"/></td>
     	</tr>
       </tbody>
     </table>
    </div>
    <div class="container">
			<div class="p-4 mb-3" style="background-color:#c6fcd49d;">
   				<h2 style="color:#0a577a;">Logged in <span><i class="fa-solid fa-circle-check" style="color: #3cba12;"></i></span></h2>
  			    <h3 class="text-primary"><span style="color:#0666c7;">${user.user_name} | </span><span style="color:#FF0000;">${user.phone_number}</span></h3>
            </div>
            <div class="container p-4 " style="background-color:#dcdcdccb;">
				 <h3><i class="fa-solid fa-tags fa-fade" style="color: #3b68b5;"></i>&nbsp&nbspSave Extra 20% on using Coupon Code "testLife20"</h3>
	             <h3><i class="fa-solid fa-user" style="color: #3c73d3;"></i>&nbsp&nbspExtra 40% OFF on Senior Citizen Lab Tests </h3>
            </div>
     </div>
   </div>
				<a href="Checkout.jsp" class="link-underline-light link-dark link-underline-opacity-0 link-offset-3-hover link-offset-2 ">
			<div class=" mt-4 mb-4 bg-light d-grid col-4 mx-auto">
				<button  class="btn text-white" style="background-color: #4CAF50;" type="button">BOOK APPOINTMENT &amp; PROCEED TO PAY</button>
			</div>
				</a>
</div>
<%@ include file="footer.jsp" %>