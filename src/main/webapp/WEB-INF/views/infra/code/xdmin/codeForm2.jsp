 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>코드추가</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/admin.css" />	 
</head>

<body style="background-image: url('/resources/images/wallpaperbetter.jpg'); background-size: 12% 12%;">
	
	<%@include file="../../.././common/xdmin/includeV1/adminheader.jsp"%>
 	
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
				    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li ><a href="/codeGroup/codeGroupList">코드그룹 관리</a></li>
				         	<li><a href="/code/codeList">코드 관리</a></li>
				         	<li ><a href="/codeGroup/codeGroupForm">코드그룹 추가</a></li>
				         	<li style="text-shadow: 2px 2px 2px #b4b4b4,3px 3px 3px #6a79a3; font-weight: 500;"><a href="/code/codeForm">코드 추가</a></li>
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
				    <div id="collapseThree" class="accordion-collapse collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li><a href="/main/bookAdmin">도서 리스트</a></li>
				         	<li ><a href="/main/bookForm">도서 추가 </a></li>
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
 			<i class="fa-solid fa-square" style="padding-left: 0px;"><span style="padding-left: 10px;">코드 <c:if test="${not empty item.cSeq}">수정 </c:if> <c:if test="${ empty item.cSeq}">추가  </c:if> </span></i>
 		</div>
 		
 		<div class="row" style="background: white; margin-top: 30px; border: 2px solid #777777; border-radius: 10px;">
				<div class="col-12">
					<form method ="post" name="form">
						<input type="hidden" name="cSeq" id="cSeq" value="${item.cSeq}"/>
						<div class="row" style="padding-top: 30px;" >
						
							<div class="col" style="display: inline-block;  width: 500px;">
							    <label for="2" class="form-label">코드그룹 코드</label>
							    <select id="cgSeq" name="cgSeq" class="form-select" aria-label="Default select example">
							    	<option value="0" <c:if test="${empty item.codeGroup_cgSeq }"> selected </c:if>>-- 선택 -- </option> 
							    	<c:forEach var="codeGroupList" items="${codeGroupList }" varStatus="status">
							    	  <option value="${codeGroupList.cgSeq}" <c:if test="${item.codeGroup_cgSeq eq codeGroupList.cgSeq}"> selected </c:if>>  
							    	  	${codeGroupList.cgSeq} - ${codeGroupList.cgName} 
							    	  </option>
							    	</c:forEach>								
								</select>
							  </div>
							  
							  
							  <div class="col"  style="display: inline-block; width: 500px;  margin-left:20px;">
							   
							  </div>
							  
							  
						</div>
						
						<div class="row" style="padding-top: 30px;" >
							
							<div class="col" style="display: inline-block;  width: 500px;">
							   <label for="1" class="form-label">코드 (한글) </label>
							    <input name = "cdName" id = "cdName" <c:if test="${not empty item.cdName}"> value="${item.cdName}" </c:if> type="text" class="form-control">
							  </div>
							  
							  
							  <div class="col"  style="display: inline-block; width: 500px;  margin-left:20px;">
							    
							  </div>
							  
							  
						</div>
						
						<div  class="row" style="padding-top: 20px;">
							  <div class="col" style="display: inline-block; width: 500px;">
							    <label for="5" class="form-label">사용여부</label>
							    <select class="form-select" name="useNY" id="useNY">
								  <option value="2" <c:if test="${empty item.useNY }"> selected</c:if>>--선택---</option>  
								  <option value="1" <c:if test="${item.useNY ==1 }"> selected</c:if>>Y</option>  
								  <option value="0" <c:if test="${item.useNY == 0 }"> selected</c:if>>N</option>
								</select>
							  </div >
							  
							 <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="8" class="form-label">삭제여부</label>
							    <select class="form-select" name="delNY" id="delNY" >
							    	<option value="2" <c:if test="${empty item.delNY}"> selected</c:if>>--선택---</option> 
									<option value="1" <c:if test="${item.delNY == 1 }"> selected</c:if>>Y</option>
									<option value="0" <c:if test="${item.delNY == 0 }"> selected</c:if>>N</option>
								</select>
								
							
								
							  </div>
						</div>
						
						
					</form>
					
					<div style="padding-top: 30px;">
						<div style="display:table; width: 100%; padding-bottom:150px;">
							<div style="display:table-cell;">
								<button id="goList" type="button" style="background: rgb(168, 209, 248); border:1px solid rgb(168, 209, 248); border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;" onclick="location.href='./codeGroupList'">
									<i class="fa-solid fa-list"></i>
								</button>
								
								
							</div>
							
							<div style="display:table-cell; text-align: right;">
								
								<c:if test="${ not empty item.cSeq }">
									<button type="button" id="deleteBtn" style="background: rgba(8, 116, 8, 0.699); border:1px solid rgba(8, 116, 8, 0.699); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-trash"></i>
									</button>	
								</c:if>
								
								<c:if test="${ not empty item.cSeq }">
									<button type="button" id="updateBtn" style="background: rgb(82, 82, 194); border:1px solid rgb(82, 82, 194); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-bookmark"></i>
									</button>
								</c:if>	
								
								<c:if test="${ empty item.cSeq }">
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
 		
 		if( $("#useNY").val() ==2 ){
 			alert("사용여부를 체크해주세요.");
			return false;
 		} 
 		
 		if( $("#delNY").val() ==2 ){
 			alert("삭제여부를 체크해주세요.");
 			return false; 
 		}
 		
 		if( $("#cgSeq").val() == 0 ){
 			alert("코드그룹 코드를 체크해주세요.");
 			return false;
 		}
 		
 		if( $("#cdName").val()  == null || $("#cdName").val() == ''){
 			alert("코드이름은 입력해주세요. ");
 			return false;
 		}
 		 
 		
 		form.attr("action", "/code/codeInst").submit();
 		
 	});
 	
 	$("#deleteBtn").click(function(){
 		form.attr("action", "/code/delete").submit();
 	});
 	
 	$("#goList").click(function(){
 		form.attr("action", "/code/codeList").submit();
 	});
 	
 	$("#updateBtn").click(function(){
 		form.attr("action", "/code/update").submit();
 	});
 </script>
 
 <script>
 $("#logoutBtn").on("click", function(){
		alert('logout');

		
		$.ajax({ 
			url : "/member/logoutProc",
			
			type : 'post',
			
			data : {
				
			},
			
			success : function(data) {
	
			 	if(data.rt == "success"){			 		
					location.href = "/"
				 } else {
					 // by pass
				 }
				
		     },
		          
			error : function(request, status, error){ 
							
				  	console.log("code: " + request.status)	
			        console.log("message: " + request.responseText)
			        console.log("error: " + error);
				 }	     
		});	
	});
 </script>
</body>
</html>
