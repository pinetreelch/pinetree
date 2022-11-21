 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.pinetreelch.infra.modules.code.CodeServiceImpl"/>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title> 멤버 리스트 </title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/admin.css" />	 
	  
	
	  
	  <!-- Datepicker -->  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  	
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
				    <div id="collapseOne" class="accordion-collapse collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li ><a href="/codeGroup/codeGroupList/">코드그룹 관리</a></li>
				         	<li><a href="/code/codeList">코드 관리</a></li>
				         	<li><a href="/codeGroup/codeGroupForm">코드그룹 추가</a></li>
				         	<li><a href="/code/codeForm/">코드 추가</a></li>
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
				    <div id="collapseTwo" class="accordion-collapse collapse show " aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li style=" font-weight: 700;"><a href="/member/memberList">회원 관리</a></li>
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

<form name = "form" id = "form" method ="post">
	<input type="hidden" name="ifmmSeq" id="ifmmSeq"/>
	<input type="hidden" name="checkboxSeqArray" id="checkboxSeqArray">
 	<div class="container-fluid bodyd3" style="padding-top: 50px;">																														<!-- 본문내용 시작-->
 		<div class="row codeGroupadmintitle" style=" margin-top: 60px;">
 			<i class="fa-solid fa-square" style="padding-left: 0px;"><span style="padding-left: 10px;">회원 관리</span></i>
 		</div>
 		
 		<div class="row" style="background: white; margin-top: 30px; border: 2px solid #777777; border-radius: 10px;">
				<div class="col-12">
					
								<div class="border" style="margin: 15px; border-radius: 5px; padding: 10px;">

									
								
								<select id="shOption" name ="shOption" class="form-select" aria-label="Default select example" style="width: 200px; margin-right:10px; display:inline-block;">
									<option value="0" <c:if test ="${empty vo.shOption}"> selected</c:if>> 검색구분</option>
						  			<option value="1" <c:if test ="${vo.shOption eq 1}"> selected</c:if>> 회원이름 </option>
						  			<option value="2" <c:if test ="${vo.shOption eq 2}"> selected</c:if>> 회원아이디 </option>
						 			 <option value="3" <c:if test ="${vo.shOption eq 3}"> selected</c:if>>  회원 이메일  </option>
								</select>

								<input  value="<c:out  value="${vo.shValue}"/>" type="text" class="form-control" name="shValue" id="shValue" style="width: 500px; margin-right:10px; display:inline-block; margin-top: 20px;" placeholder="검색어">

								<button name="btnSearch" id="btnSearch" style="background: rgb(180, 176, 176); border:1px solid rgb(180, 176, 176); margin-right:5px; border-radius: 4px; color: black; font-size: 15px; width: 35px; height: 35px;"> 
									<i class="fa-solid fa-magnifying-glass"></i>
								</button> 
								
								<button id="resetBtn" style="background: rgb(227, 227, 227); border:1px solid rgb(227, 227, 227); border-radius: 4px; color: black; font-size: 15px; width: 35px; height: 35px;"> 
									<i class="fa-solid fa-arrow-rotate-right"></i>
								</button>
								
								</div>
						
						</div>	<!-- 검색창-->

						<div style="padding-top: 30px; padding: 15px;">  <!-- total 갯수 창-->

						
							
							
			
							
							<h4 style="padding-bottom: 10px;">
								 
									<span>
									Total: ${fn:length(list)} 
										
									</span>
									
									
							</h4>
							
						
							<div style=" overflow:auto; ">
							<table class="table table-bordered " style="text-align: center;">
								<thead>
								
								<tr style="background: #B8BFC4;">
									<th style="text-align: center;"> <input class="form-check-input" type="checkbox" value="" id="checkall"> </th>
									<th >#</th>
									<th >회원 시퀀스</th>
									<th >회원 이름</th>
									<th >회원 성별</th>
									<th >회원 아이디</th>
									<th>회원 이메일</th>						
									<th>회원 전화번호</th>
									
								</tr>
								</thead>
								
								<tbody>
								<c:set var="cachedList" value="${CodeServiceImpl.selectListCachedCode()}"/>
								<c:set var="orderListLength" value="${fn:length(list)}"/>
								<c:choose>
									<c:when test = "${fn:length(list) eq 0 }">
										<tr>
											<td colspan="8">There is no data!!!</td>
										<tr>
									</c:when>
									
									<c:otherwise>
										<c:forEach items="${list}" var="list" varStatus="status">
											<tr class="lltem" style="cursor: pointer;"  >
											
												<td style="text-align: center;" > 
													<input class="form-check-input" type="checkbox" value="${list.ifmmSeq }" id="flexCheckDefault" name="checkboxitem">
												</td>
												
												<td >
													${status.count }
												</td>
												
												<td onclick="goForm(${list.ifmmSeq})">
													<c:out value="${list.ifmmSeq }"></c:out>
												</td>
												
												<td onclick="goForm(${list.ifmmSeq})">
													<c:out value="${list.ifmmName }"></c:out>
												</td>
												
												<td onclick="goForm(${list.ifmmSeq})">
													${list.gender }
													
												</td>
												
												<td onclick="goForm(${list.ifmmSeq})">
													<c:out value="${list.ifmmId }"></c:out>
												</td>
												
												<td onclick="goForm(${list.ifmmSeq})">
													<c:out value="${list.ifmmEmail }"></c:out>
												</td>
												
														
												<td onclick="goForm(${list.ifmmSeq})">
													<c:out value="${list.ifmmTel }"></c:out>
												</td>
												
												
												
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
								</tbody>
							</table>
							</div>
							
							
							
							

							<div style="display:table; width: 100%; padding-bottom:10px;">
								<div style="display:table-cell;">
								
									<button type="button" style="background: rgb(168, 209, 248); border:1px solid  rgb(168, 209, 248); border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;" data-bs-toggle="modal" data-bs-target="#exampleModal"> 
										<i class="fa-solid fa-trash"></i>
									</button>
										<!-- Modal -->
											<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <h1 class="modal-title fs-5" id="exampleModalLabel"> 확인 </h1>
											        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
											      </div>
											      <div class="modal-body" style="text-align: left;">
											        삭제하시겠습니까? 
											      </div>
											      <div class="modal-footer">
											        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"> 닫기 </button>
											        <button type="button" class="btn btn-primary" id="deleteBtn"> 확인 </button>
											      </div>
											    </div>
											  </div>
											</div>
									
									<button type="button" style="background: rgb(241, 200, 63); border:1px solid rgb(241, 200, 63); border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;" data-bs-toggle="modal" data-bs-target="#exampleModal12"> 
										<i class="fa-solid fa-arrow-rotate-right"></i>
									</button>
										<!-- Modal -->
											<div class="modal fade" id="exampleModal12" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <h1 class="modal-title fs-5" id="exampleModalLabel"> 확인 </h1>
											        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
											      </div>
											      <div class="modal-body" style="text-align: left;">
											        이 항목을 더 이상 사용하지 않습니다 (Ulete) 
											      </div>
											      <div class="modal-footer">
											        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"> 닫기 </button>
											        <button type="button" class="btn btn-primary" id="uleteBtn"> 확인 </button>
											      </div>
											    </div>
											  </div>
											</div>
								</div>
								
								<div style="display:table-cell; text-align: right;">
									<button style="background: rgba(8, 116, 8, 0.699); border:1px solid rgba(8, 116, 8, 0.699); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-file-excel"></i>
									</button>	
									
									<button  type="button" name ="btnForm" id="btnForm" style="background: rgb(82, 82, 194); border:1px solid rgb(82, 82, 194); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-plus"></i>
									</button>
													
								</div>
							</div>	
						</div>	<!-- 토탈 갯수 창 부터 시작된 div-->
						
				</div> 			<!-- col끝 -->
				
 		</div> 		<!-- 검정 테리 코드그룹 관리 안-->
	</form>
		<div style="visibility: hidden; height: 100px;"> 
				d
		</div>	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
 
<script>	
	var form = $("form[name=form]");
	
	$("#btnSearch").on("click", function(){
		form.attr("action", "/member/memberList").submit();
	});
	
	$("#btnForm").click(function(){
		form.attr("action", "/member/memberForm").submit();
	});
	
	goForm = function(seq){
		
		$("#ifmmSeq").val(seq);
		
		form.attr("action", "/member/memberForm").submit();
	}
	
	$("#resetBtn").click(function(){
		$("#shOption").val("0").prop("selected", true);
		$("#shValue").val(null);
		return false;
	});
</script>

<script>
	$(document).ready(function(){
		$("#checkall").click(function(){
			if( $('#checkall').is(':checked')) {
				$("input[name=checkboxitem]").prop("checked", true);
			} else{
				$("input[name=checkboxitem]").prop("checked", false);
			}	
		});
		
		$("input[name=checkboxitem]").click(function() {
			var total = $("input[name=checkboxitem]").length;
			var checked = $("input[name=checkboxitem]:checked").length;
			
			if(total != checked){
				$("#checkall").prop("checked", false);
			} else {
				$("#checkall").prop("checked", true);
			}			
		})
	});
</script>

<script>
$("#deleteBtn").click(function(){
		
		checkboxSeqArray = [];
		
		$("input[name=checkboxitem]:checked").each(function(){
		checkboxSeqArray.push($(this).val());
	});	
		$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
		
		form.attr("action", "/member/deleteArray").submit();

		return false;
	});
	
	$("#uleteBtn").click(function(){
		checkboxSeqArray = [];
		
		$("input[name=checkboxitem]:checked").each(function(){
		checkboxSeqArray.push($(this).val());
		});	
		
		$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
		
		
		alert(checkboxSeqArray);
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
