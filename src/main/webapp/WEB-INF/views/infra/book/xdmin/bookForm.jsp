 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title> 책 추가 </title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/admin.css" />	 
</head>

<body style="background-image: url('/resources/images/wallpaperbetter.jpg'); background-size: 12% 12%;">
	<div class="border-bottom border-2 container-fluid"  style="position: fixed; height: 50px;  background:#F7FAFC;">
		<div class="row">
			<div class="col-12">
				<div style="display:table; width: 100%;  height: 50px;">
					<div style="display:table-cell; vertical-align: middle; padding-left: 50px; width: 80%;">
						<div>
							<img src="https://active.ridibooks.com/navbar/icons/web/ridi.f50c563403f615565a7328888ba19f87.svg"  style="width:61px; height:23px; padding: 0px;">
				 			<img src="https://active.ridibooks.com/navbar/icons/web/genre_books.24933faed881f7e79f1f8d5f0c529370.svg" style="width:122px; height: 40px; padding: 4px;">
				 			
				 			<div class="admintitle" style="display: inline-block; vertical-align: bottom; padding-bottom: 4px;">Admin</div>
						</div>
					</div>
					
					<div  style="display:table-cell;vertical-align: middle; padding-left: -20px; padding-right: 0px; width: 3%;">
						<div class="border-start" style="">
							<div  style="margin-left: 10px; background-color: #9EA7AD;  width: 40px; height: 40px; border-radius: 50%; text-align: center; padding-top: 0.7em;">
								<i class="fa-regular fa-user"></i>
							</div>
						</div>
					</div>
					
					<div  style="display:table-cell; padding-left: -20px; padding-right: 0px; line-height: 1.1em; vertical-align: middle; width: 4%;">
						<div class="border-end" style="height: 40px;">
							<span class="adminname">이찬호</span> <br /> <span class="adminname2">Administrator</span>
						</div>
					</div>
					
					<div  style="display:table-cell; padding-left: -20px; padding-right: 0px; line-height: 1.1em; vertical-align: middle; width: 3%; text-align: center;">
						<div class="border-end" style="height: 40px; vertical-align:center;">
							<div style="padding-top: 2px;">
								<a href="">
								<i class="fa-solid fa-right-from-bracket fa-ml"></i><br />
								<span class="adminname2">logout</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
 	</div>					<!-- 해드부분 continer end -->
 	
 	<div style=" background: #EBF6FF; width: 27vh; height: 100vh; position: fixed; top:50px; color: #40474D; padding:0; display:inline-block; min-width: 27vh;">
		<div class="row " style="width: 28.3vh;;">
			<div class="col-12">
				<div style="padding-left: 28px; padding-top: 50px; display:table; ">
					<div style="display: table-cell; vertical-align: middle;"><i class="fa-solid fa-house fa-xl" style="font-size: 25px;"></i></div>
					<div  class="dashb" style="display: table-cell; vertical-align: center; padding-left: 10px;">대쉬보드</div>
				</div>
				
				<div class="accordion" id="accordionExample" style="border:none; padding-top: 20px; --bs-accordion-btn-focus-box-shadow: none; padding-left: 12px;"> <!-- 아코디언 시작 -->
					
				  <div class="accordion-item " style="background: #EBF6FF; border:none;"> 	<!-- 아코디언 아이템 1번 -->
				    <h2 class="accordion-header" id="headingOne">
				      <button class="accordion-button"  class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne" style="background: #EBF6FF; border:none;">
				        <span id="accordtitle">코드그룹 & 코드관리</span>
				      </button>
				    </h2>
				    <div id="collapseOne" class="accordion-collapse collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li ><a href="/codeGroup/codeGroupList">코드그룹 관리</a></li>
				         	<li><a href="/code/codeList">코드 관리</a></li>
				         	<li ><a href="/codeGroup/codeGroupForm">코드그룹 추가</a></li>
				         	<li ><a href="/code/codeForm">코드 추가</a></li>
				         </ul>
				      </div>
				    </div>
				  </div>							<!-- 아코디언 아이템 1번 끝 -->
				  
				  <div class="accordion-item " style="background: #EBF6FF; border:none;"> 	<!-- 아코디언 아이템 2번 -->
				    <h2 class="accordion-header" id="headingTwo">
				      <button class="accordion-button"  class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" style="background: #EBF6FF; border:none;">
				        <span id="accordtitle"> 회원 관리</span>
				      </button>
				    </h2>
				    <div id="collapseTwo" class="accordion-collapse collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li><a href="/member/memberList">회원 관리</a></li>
				         	<li><a href="/member/memberForm">회원 추가 </a></li>
				         </ul>
				      </div>
				    </div>
				  </div>							<!-- 아코디언 아이템 2번 끝 -->
				
				
				<div class="accordion-item " style="background: #EBF6FF; border:none;"> 	<!-- 아코디언 아이템 3번 -->
				    <h2 class="accordion-header" id="headingThree">
				      <button class="accordion-button"  class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" style="background: #EBF6FF; border:none;">
				        <span id="accordtitle"> 도서 관리</span>
				      </button>
				    </h2>
				    <div id="collapseThree" class="accordion-collapse collapse show" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li><a href="/main/bookAdmin">도서 리스트</a></li>
				         	<li  style="font-weight: 500;"><a href="/main/bookForm">도서 추가 </a></li>
				         </ul>
				      </div>
				    </div>
				  </div>							<!-- 아코디언 아이템 3번 끝 -->
				
				</div> <!-- 아코디언 끝 -->
				
				
				
			</div>
		</div>
		
	</div>

 	<div class="container-fluid bodyd3" style="padding-top: 50px;">																														<!-- 본문내용 시작-->
 		<div class="row codeGroupadmintitle" style=" margin-top: 60px;">
 			<i class="fa-solid fa-square" style="padding-left: 0px;"><span style="padding-left: 10px;">도서 추가 </span></i>
 		</div>
 		
 		<div class="row" style="background: white; margin-top: 30px; border: 2px solid #777777; border-radius: 10px;">
				<div class="col-12">
					<form method ="post" name="form">
						<input type="hidden" name="cSeq" id="cSeq" value="${item.cSeq}"/>

						<c:if test="${ not empty list.tdbkSeq }">
							<div class="row" style="padding-top: 30px;" >								
								<div class="col" style="display: inline-block;  width: 500px;">
								   <label for="1" class="form-label"> 시퀀스   </label>
								    <input id="tdbkSeq" name="tdbkSeq" value="${list.tdbkSeq}" type="text" class="form-control" readonly>
							  	</div>
								  								  
								<div class="col"  style="display: inline-block; width: 500px;  margin-left:20px;">
								</div>								  
							</div>
						</c:if>
						
						<div class="row" style="padding-top: 30px;" >
							
							<div class="col" style="display: inline-block;  width: 500px;">
							   <label for="1" class="form-label"> 책 이름  </label>
							    <input name = "tdbkBookTitle" id = "tdbkBookTitle" <c:if test="${not empty list.tdbkBookTitle}"> value="${list.tdbkBookTitle}" </c:if> type="text" class="form-control">
						  	</div>
							  
							  
							<div class="col"  style="display: inline-block; width: 500px;  margin-left:20px;">
							    <label for="1" class="form-label"> 가격  </label>
							    <input name = "tdbkSales" id = "tdbkSales" <c:if test="${not empty list.tdbkSales}"> value="${list.tdbkSales}" </c:if> type="text" class="form-control">
							</div>
							  
							  
						</div>
						
						
						<div  class="row" style="padding-top: 20px;">
							  <div class="col" style="display: inline-block; width: 500px;">
							    <label for="1" class="form-label"> 출판사    </label>
							    <input name = "tdbkPublisher" id = "tdbkPublisher" <c:if test="${not empty list.tdbkPublisher}"> value="${list.tdbkPublisher}" </c:if> type="text" class="form-control">
							  </div >
							  
							 <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							     <label for="1" class="form-label"> ISBN   </label>
							    <input name = "tdbkIsbn" id = "tdbkIsbn" <c:if test="${not empty list.tdbkIsbn}"> value="${list.tdbkIsbn}" </c:if> type="text" class="form-control">																					
							  </div>
						</div>
						
						
					</form>
					
					<div style="padding-top: 30px;">
						<div style="display:table; width: 100%; padding-bottom:150px;">
							<div style="display:table-cell;">
								<button id="goList" type="button" style="background: rgb(168, 209, 248); border:1px solid rgb(168, 209, 248); border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;" onclick="location.href='/main/bookAdmin'">
									<i class="fa-solid fa-list"></i>
								</button>
								
								
							</div>
							
							<div style="display:table-cell; text-align: right;">
								
								<%-- <c:if test="${ not empty list.tdbkSeq }">
									<button type="button" id="deleteBtn" style="background: rgba(8, 116, 8, 0.699); border:1px solid rgba(8, 116, 8, 0.699); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-trash"></i>
									</button>	
								</c:if> --%>
								
								<c:if test="${ not empty list.tdbkSeq }">
									<button type="button" id="updateBtn" style="background: rgb(82, 82, 194); border:1px solid rgb(82, 82, 194); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-bookmark"></i>
									</button>
								</c:if>	
								
								<c:if test="${ empty list.tdbkSeq }">
									<button type="button" id="insertBtn" style="background: rgb(82, 82, 194); border:1px solid rgb(82, 82, 194); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;" > 
										<i class="fa-solid fa-plus"></i>
									</button>
								</c:if>
											
							</div>
						</div>
					</div>
				</div>	<!-- col12 -->
 		</div> 		<!-- 검정 테리 코드그룹 관리 안-->
		
		<div style="visibility: hidden; height: 100px;"> 
				d
		</div>	
 	<!-- row 끝-->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
 <script>
 
 	form = $("form[name=form]");
 	
 	$("#insertBtn").click(function(){
 		 
 		form.attr("action", "/main/bookInsert").submit();
 		
 	});
 	
 	$("#deleteBtn").click(function(){
 		form.attr("action", "/code/delete").submit();
 	});
 	
 	
 	$("#updateBtn").click(function(){
 		form.attr("action", "/main/bookUpdate").submit();
 	});
 </script>
</body>
</html>
