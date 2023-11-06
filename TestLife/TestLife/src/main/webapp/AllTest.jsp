<%@ include file="header.jsp" %>
    <div class="container   p-2 mt-5" >
        <h1 class="text-danger">Explore the Lab Test Here</h1>
       
         <!-- Blood Test  ......... -->
         
        <h2 class="text-info mt-3 mb-3" id="Main Course">Blood Test</h2>
        <div class="d-flex gap-0 column-gap-4" id="naman">
        <c:forEach items="${object}" var="food">
            
            	<div>
                	<a href="singleitem?item_id=${food.item_id}" class="link-underline-light link-dark link-underline-opacity-0 link-offset-3-hover link-offset-2 ">
                    <img src="AllFoodItems/${food.img_url}" alt="${food.item_name}" class="img-fluid rounded-5 mx-auto mt-2 d-block" width="200" height="auto">
                    	<div class="card_content">
                        	<h3 class="mt-2">${food.item_name}</h3>
                        	<div class="d-flex mt-4">
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star-half fa-xl" style="color: #e0ce00;"></i>
                            	<p class="text-secondary justify-content-center">${food.votes}votes</p>
                        	</div>
                        	<p class=" fs-4">&#x20B9;${food.price}</p>
                  	 </a>
                        	<div class="d-flex gap-0 column-gap-3">
                         		<button  type="submit" class="btn align-self-start btn-primary">Buy Now</button>
                        		<button  type="submit" class="btn align-self-start btn-warning">Add Order</button>
                       	 	</div>    
                         </div>
                
                  </div>

          </c:forEach>
            
           <!-- Fast food Row ......... -->
            
          </div>
          
           <h2 class="text-info mt-3 mb-3" id="Fast Food">Fast Food</h2>
        <div class="d-flex gap-0 column-gap-4" id="naman">
        <c:forEach items="${object2}" var="food">
            
            	<div>
                	<a href="singleitem?item_id=${food.item_id}" class="link-underline-light link-dark link-underline-opacity-0 link-offset-3-hover link-offset-2 ">
                    <img src="AllFoodItems/${food.img_url}" alt="${food.item_name}" class="img-fluid rounded-5 mx-auto mt-2 d-block" width="200" height="auto">
                    	<div class="card_content">
                        	<h3 class="mt-2">${food.item_name}</h3>
                        	<div class="d-flex mt-4">
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star-half fa-xl" style="color: #e0ce00;"></i>
                            	<p class="text-secondary justify-content-center">${food.votes}votes</p>
                        	</div>
                        	<p class=" fs-4">&#x20B9;${food.price}</p>
                  	 </a>
                        	<div class="d-flex gap-0 column-gap-3">
                         		<button  type="submit" class="btn align-self-start btn-primary">Buy Now</button>
                        		<button  type="submit" class="btn align-self-start btn-warning">Add Order</button>
                       	 	</div>    
                         </div>
                
                  </div>

          </c:forEach>
            
             <!-- Dessert Row ......... -->
            
          </div>
          
          <h2 class="text-info mt-3 mb-3" id="Dessert">Dessert Items</h2>
        <div class="d-flex gap-0 column-gap-4" >
        <c:forEach items="${object3}" var="food">
            
            	<div>
                	<a href="singleitem?item_id=${food.item_id}" class="link-underline-light link-dark link-underline-opacity-0 link-offset-3-hover link-offset-2 ">
                    <img src="AllFoodItems/${food.img_url}" alt="${food.item_name}" class="img-fluid rounded-5 mx-auto mt-2 d-block" width="200" height="auto">
                    	<div class="card_content">
                        	<h3 class="mt-2">${food.item_name}</h3>
                        	<div class="d-flex mt-4">
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star-half fa-xl" style="color: #e0ce00;"></i>
                            	<p class="text-secondary justify-content-center">${food.votes}votes</p>
                        	</div>
                        	<p class=" fs-4">&#x20B9;${food.price}</p>
                  	 </a>
                        	<div class="d-flex gap-0 column-gap-3">
                         		<button  type="submit" class="btn align-self-start btn-primary">Buy Now</button>
                        		<button  type="submit" class="btn align-self-start btn-warning">Add Order</button>
                       	 	</div>    
                         </div>
                
                  </div>

          </c:forEach>
            
            
          </div>
    </div>
<%@ include file="footer.jsp" %> 