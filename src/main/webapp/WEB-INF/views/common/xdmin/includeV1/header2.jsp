<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<div class="row" >
		<div class="col-4">
			<div style="padding-top: 30px; display: inline-block;">
			 	<span id = "home" style="cursor: pointer">
				 	<img src="https://active.ridibooks.com/navbar/icons/web/ridi.f50c563403f615565a7328888ba19f87.svg"  style="width:61px; height:23px; padding: 0px;">
				 	<img src="https://active.ridibooks.com/navbar/icons/web/genre_books.24933faed881f7e79f1f8d5f0c529370.svg" style="width:122px; height: 40px; padding: 4px;">
			 	</span>		 	
		 </div>
	</div>

	<div class="col-8 justify-content-end d-flex" style="padding-top: 20px;">			
 		<nav  style="display: inline-block;">
 			<ul >
 					
 				<!-- <li style="display: inline-block; padding-right: 40px;">
 						<input type="text" class="form-control inputclass" placeholder="" aria-label="First name" style="width:250px;">
 				</li>				 								 				
 				
 				<li style="display: inline-block;">
 					
 						<i class="fa-solid fa-book-open fa-xl" style="width: 50px;"></i>
 					
 				</li> -->
 								 				
 				<li style="display: inline-block;">
 					<i class="fa-solid fa-cart-shopping fa-xl" id="cart" style="padding-top:30px; width: 50px; cursor: pointer;" onclick="clickcart(${sessSeq})"></i>				 				
 				</li>	
 					 					
 				<li style="display: inline-block;">			 					
 						<span style="cursor:pointer;" id ="mypage" name ="myapge"> <i class="fa-regular fa-user fa-xl" style="padding-top:30px;" ></i></span>				 					
 				</li>				 				
		 	</ul>
	 	</nav>
		
		<c:if test="${fn:length(cartlist) > 0}">
			<div id="circlediv">
				${fn:length(cartlist)}
			</div>	
		</c:if>
	</div>
</div>