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
	<title>코드 관리</title>
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
				         	<li ><a href="/codeGroup/codeGroupList/">코드그룹 관리</a></li>
				         	<li style="text-shadow: 2px 2px 2px #b4b4b4,3px 3px 3px #6a79a3; font-weight: 500;  "><a href="/code/codeList">코드 관리</a></li>
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
				    <div id="collapseTwo" class="accordion-collapse collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li><a href="/member/memberList">회원 관리</a></li>
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
				         	<li><a href="">도서 리스트</a></li>
				         </ul>
				      </div>
				    </div>
				  </div>							<!-- 아코디언 아이템 3번 끝 -->
				
				</div> <!-- 아코디언 끝 -->
				
				<div style="background: white; position: fixed; bottom: 50px; left: 30px;">
					안녕하세요!
				</div>
				
			</div>
		</div>
		
	</div>
	
	<form method="post" name = "form">
 	<div class="container-fluid bodyd3" style="padding-top: 50px;">																														<!-- 본문내용 시작-->
 		<div class="row codeGroupadmintitle" style=" margin-top: 60px;">
 			<i class="fa-solid fa-square" style="padding-left: 0px;"><span style="padding-left: 10px;">코드 관리</span></i>
 		</div>
 		
 		<div class="row" style="background: white; margin-top: 30px; border: 2px solid #777777; border-radius: 10px;">
				<div class="col-12">
					
								<div class="border" style="margin: 15px; border-radius: 5px; padding: 10px;">

									
									
									<select id="shOption" name ="shOption" class="form-select" aria-label="Default select example" style="width: 200px; margin:0; display:inline-block; margin-top: 20px;">
										<option value="0" <c:if test ="${empty vo.shOption}"> selected</c:if>> 검색구분</option>								  		
								  		<option value="1" <c:if test ="${vo.shOption eq 1}"> selected</c:if>>코드그룹 이름 (한글)</option>
								 		<option value="2" <c:if test ="${vo.shOption eq 2}"> selected</c:if>>코드그룹 이름 (영문)</option>
									</select>

									<input  type="text" class="form-control" name="shValue" style="width: 500px; margin-right:10px; display:inline-block; margin-top: 20px;" placeholder="검색어">
	
									<button id="SearchBtn" style="background: rgb(180, 176, 176); border:1px solid rgb(180, 176, 176); margin-right:5px; border-radius: 4px; color: black; font-size: 15px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-magnifying-glass"></i>
									</button>
									
									<button style="background: rgb(227, 227, 227); border:1px solid rgb(227, 227, 227); border-radius: 4px; color: black; font-size: 15px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-arrow-rotate-right"></i>
									</button>
								
								</div>
						
						</div> 

						<div style="padding-top: 30px; padding: 15px;">  <!-- total 갯수 창-->


							<h4 style="padding-bottom: 10px;">
								Total: <span> ${fn:length(list)} </span>
								<!-- <span style="float:right;">
									
										<select class="form-select" aria-label="Default select example" style="width: 80px; margin:0; display:inline-block;">
											<option selected >10</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									
								</span> -->
							</h4>
							
							
							<input type="hidden" name="cSeq">
							
							<table class="table table-bordered" style="text-align: center;">
								<tr style="background: #B8BFC4;">
									<th style="text-align: center;"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></th>
									<th style="text-align: center;">#</th>
									<th>코드그룹 코드</th>
									<th>코드그룹 이름(한글)</th>
									<th>코드</th>
									<th>대체 코드</th>
									<th>코드 이름(한글)</th>	
									<th>코드 이름 (영문)</th>
									<th>사용</th>
									<th>순서</th>
									<th>등록일</th>
									<th>수정일</th>	
								</tr>
								
								
								<c:set var="ny" value="${fn:length(list)}"/>
								<c:set var="orderListLength" value="${fn:length(list)}"/>
								<c:choose>
									<c:when test = "${fn:length(list) eq 18 }">
										<tr>
											<td colspan="19">There is no data!!!</td>
										<tr>
									</c:when>
									
									<c:otherwise>
										<c:forEach items="${list}" var="list" varStatus="status">
											<tr class="lltem" style="cursor: pointer;" onclick ="goFormk(${list.cSeq})">
												<td>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
												</td>
												
												<td >
													${orderListLength - status.index }
												</td>
												
												<td>
												
													<c:out value="${list.codeGroup_cgSeq }"/>
													
													
													<div>
														<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
														
															<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
															
																
																
															</c:forEach>
													</div>
													
													
													
												</td>
												
												<td>
													<c:out value="${list.cgName }"/>
												</td>
												
												<td>
													<c:out value="${list.cSeq }"/>
												</td>
												
												<td></td>
												
												<td>
													<c:out value="${list.cdName }"/>
												</td>
												
												<td>
													${list.cdEng }
												</td>
												
												<td>
													<c:set var="ny1" value="${list.useNY }"/>
														<c:choose>
														
															<c:when test ="${ny1 eq 1 }">
																Y
															</c:when>
																
															<c:otherwise>
																N
															</c:otherwise>
														</c:choose>
												</td>
												
												<td></td>
												<td></td>
												<td></td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>

							<!-- <div>
								<nav aria-label="Page navigation example">
									<ul class="pagination justify-content-center">
										<li class="page-item"><a class="page-link" href="#">Previous</a></li>
										<li class="page-item"><a class="page-link" href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">Next</a></li>
									</ul>
								</nav>
							</div>	 -->	

							<div style="display:table; width: 100%; padding-bottom:10px;">
								<div style="display:table-cell;">
									<button style="background: rgb(168, 209, 248); border:1px solid  rgb(168, 209, 248); border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-trash"></i>
									</button>
									
									<button style="background: rgb(241, 200, 63); border:1px solid rgb(241, 200, 63); border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-arrow-rotate-right"></i>
									</button>
								</div>
								
								<div style="display:table-cell; text-align: right;">
									<button style="background: rgba(8, 116, 8, 0.699); border:1px solid rgba(8, 116, 8, 0.699); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-file-excel"></i>
									</button>	
									
									<button type="button" style="background: rgb(82, 82, 194); border:1px solid rgb(82, 82, 194); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;" onclick="location.href='/code/codeForm/'"> 
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
 	<!-- row 끝-->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
 <script>
 	var goUrlList = "/code/codeList";
	var goUrlInst = "/code/codeGroupInst";
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";
	var goUrlUele = "/codeGroup/codeGroupUele";
	var goUrlDele = "/codeGroup/codeGroupDele";
	var goUrlForm = "/code/codeForm";
	
	// var seq = $("input:text[name=cgSeq]");				/* #-> */
	var seq = $("input:hidden[name=cSeq]");
	
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	var formList = $("form[name=formList]");
 	
 	
	goFormk = function(keyValue) {
    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
    	
    	seq.val(keyValue);
    	form.attr("action", goUrlForm).submit();
	}
	
	$("#SearchBtn").click(function(){
		form.attr("action", "/code/codeList").submit();
	});

 </script>
</body>
</html>
