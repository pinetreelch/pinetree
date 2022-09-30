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
	<title>memberList</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/admin.css" />	 
	  
	
	  
	  <!-- Datepicker -->  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  	
  	
  	<script>
	  $( function() {
	    $("#shDateStart").datepicker({
	    	dateFormat: 'yy-mm-dd'
	    	,changeYear: true
	    	,changeMonth: true
	    	,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12']
	   		,monthNames: ['1월  ','2월  ','3월  ','4월  ','5월  ','6월  ','7월  ','8월  ','9월  ','10월  ','11월  ','12월  '] 
       		,dayNamesMin: ['월  ','화  ','수  ','목  ','금  ','토  ','일  ']  
       		,dayNames: ['월요일','화요일','수요일','목요일','금요일','토요일','일요일'] 
        	 
	    });
	    
	    $("#shDateEnd").datepicker({
	    	dateFormat: 'yy-mm-dd'
	    	,changeYear: true
	    	,changeMonth: true
	    	,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12']
	   		,monthNames: ['1월  ','2월  ','3월  ','4월  ','5월  ','6월  ','7월  ','8월  ','9월  ','10월  ','11월  ','12월  '] 
       		,dayNamesMin: ['월  ','화  ','수  ','목  ','금  ','토  ','일  ']  
       		,dayNames: ['월요일','화요일','수요일','목요일','금요일','토요일','일요일'] 
        	 
	    });
	    
	   	$('#shDateStart').datepicker('setDate', '-1M');
	    $('#shDateEnd').datepicker('setDate', 'today');
	  } );
	  
  	</script>
  	
  	
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
				         	<li style="text-shadow: 2px 2px 2px #b4b4b4,3px 3px 3px #6a79a3; font-weight: 500;  "><a href="/member/memberList">회원 관리</a></li>
				         	<li><a href="/member/memberForm">회원 추가(수정)</a></li>
				         	<li><a href="">결제 관리</a></li>
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

<form name = "formList" id = "formList" method ="post">
 	<div class="container-fluid bodyd3" style="padding-top: 50px;">																														<!-- 본문내용 시작-->
 		<div class="row codeGroupadmintitle" style=" margin-top: 60px;">
 			<i class="fa-solid fa-square" style="padding-left: 0px;"><span style="padding-left: 10px;">회원 관리</span></i>
 		</div>
 		
 		<div class="row" style="background: white; margin-top: 30px; border: 2px solid #777777; border-radius: 10px;">
				<div class="col-12">
					
								<div class="border" style="margin: 15px; border-radius: 5px; padding: 10px;">

									<select id="shUse" name = "shUse" class="form-select" aria-label="Default select example"style="width: 200px; margin-right:10px; display:inline-block;">
									 <option value=""  <c:if test ="${empty vo.shUse}"> selected</c:if> >사용여부</option>   <!--  -->
									 <option value="0" <c:if test ="${vo.shUse eq 0}"> selected</c:if>>N</option>
									 <option value="1" <c:if test ="${vo.shUse eq 1}"> selected</c:if>>Y</option>
									</select>

									<select id="shOptionDate" name = "shOptionDate" class="form-select" aria-label="Default select example" style="width: 200px; margin-right:10px; display:inline-block;">
										<option value ="" <c:if test = "${empty vo.shOptionDate}"> selected </c:if> >날짜</option>
										<option value="1" <c:if test = "${vo.shOptionDate eq 1 }">  selected </c:if> >등록일</option>
										<option value="2" <c:if test = "${vo.shOptionDate eq 2 }">  selected </c:if> >수정일</option>
										<option value="3" <c:if test = "${vo.shOptionDate eq 3 }">  selected </c:if> >생일</option>
									</select>
									
									<%-- <fmt:parseDate var="shDateStart" value="${vo.shDateStart}" pattern="yyyy-MM-dd HH:mm:ss"/> --%>
									<input type="text" id="shDateStart" style = "width: 200px; height: 36px; border: 1px solid #CED4DA; border-radius: 5px; padding-bottom: 2px;">
									
									<%-- <fmt:parseDate var="shDateEnd" value="${vo.shDateEnd}" pattern="yyyy-MM-dd HH:mm:ss"/> --%>		
						 			<input type="text" id="shDateEnd" style = "width: 200px; height: 36px; border: 1px solid #CED4DA; border-radius: 5px; padding-bottom: 2px;">

									<br />
								
								<select id="shOption" name ="shOption"class="form-select" aria-label="Default select example" style="width: 200px; margin-right:10px; display:inline-block; margin-top: 20px;">
									<option value="" <c:if test ="${empty vo.shOption}"> selected</c:if>> 검색구분</option>
						  			<option value="1" <c:if test ="${vo.shOption eq 1}"> selected</c:if>>코드그룹 코드</option>
						  			<option value="2" <c:if test ="${vo.shOption eq 2}"> selected</c:if>>코드그룹 이름 (한글)</option>
						 			 <option value="3" <c:if test ="${vo.shOption eq 3}"> selected</c:if>>코드그룹 이름 (영문)</option>
								</select>

								<input value="<c:out  value="${vo.shValue}"/>" type="text" class="form-control" name="shValue" style="width: 200px; margin-right:10px; display:inline-block; margin-top: 20px;" placeholder="검색어">

								<button name="btnSearch" id="btnSearch" style="background: rgb(180, 176, 176); border:1px solid rgb(180, 176, 176); margin-right:5px; border-radius: 4px; color: black; font-size: 15px; width: 35px; height: 35px;"> 
									<i class="fa-solid fa-magnifying-glass"></i>
								</button> 
								
								<button style="background: rgb(227, 227, 227); border:1px solid rgb(227, 227, 227); border-radius: 4px; color: black; font-size: 15px; width: 35px; height: 35px;"> 
									<i class="fa-solid fa-arrow-rotate-right"></i>
								</button>
								
								</div>
						
						</div>	<!-- 검색창-->

						<div style="padding-top: 30px; padding: 15px;">  <!-- total 갯수 창-->

						
							
							<input type="hidden" name="ifmmSeq" value = " ${vo.ifmmSeq }"/>
			
							
							<h4 style="padding-bottom: 10px;">
								 
									<span>
									Total:
									 <c:out value="${vo.totalRows}" > </c:out>	
									</span>
									
									<span style="float:right;">
										
											<select class="form-select" aria-label="Default select example" style="width: 80px; margin:0; display:inline-block;">
												<option selected >10</option>
												<option value="1">One</option>
												<option value="2">Two</option>
												<option value="3">Three</option>
											</select>
									</span>	
							</h4>
							
							<table class="table table-bordered " style="text-align: center;  ">
								<tr style="background: #B8BFC4;">
									<th style="text-align: center;"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></th>
									<th style="text-align: center;">#</th>
									<th>회원 시퀀스</th>
									<th>회원 이름</th>
									<th>회원 성별</th>
									<th>회원 아이디</th>
									<th>회원 이메일</th>
									<th>이메일 도메인</th>
									<th>비밀번호</th>
									<th>회원 전화번호</th>
									<th>통신사</th>
									<th>이메일수신동의</th>
									<th>마케팅앱동의</th>
									<th>밤 알림 동의</th>
								</tr>
								<!-- ${orderListLength - status.index  } ${vo.totalRows} -->
								
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
											<tr class="lltem" style="cursor: pointer;" >
											
												<td style="text-align: center;" > 
													<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
												</td>
												
												<td>
													
												</td>
												
												<td onclick="location.href='javascript:goFormk( <c:out value="${list.ifmmSeq }"/> )'">
													<c:out value="${list.ifmmSeq }"></c:out>
												</td>
												
												<td>
													<c:out value="${list.ifmmName }"></c:out>
												</td>
												
												<td>
													<c:forEach items="${cachedList}" var="clist" varStatus="status">
														<c:if test="${clist.cSeq eq list.gender }">
															<c:out value="${clist.cdName }"></c:out>
														</c:if>
													</c:forEach>
													
												</td>
												
												<td>
													<c:out value="${list.ifmmId }"></c:out>
												</td>
												
												<td>
													<c:out value="${list.ifmmEmail }"></c:out>
												</td>
												
												<td>
													<c:forEach items="${cachedList}" var="clist" varStatus="status">
														<c:if test="${clist.cSeq eq list.ifmmEmaildom }">
															<c:out value="${clist.cdName }"></c:out>
														</c:if>
													</c:forEach>
												</td>
												
												<td>
													<c:out value="${list.ifmmPwd }"></c:out>
												</td>
												
												<td>
													<c:out value="${list.ifmmTel }"></c:out>
												</td>
												
												<td>
													<c:forEach items="${cachedList}" var="clist" varStatus="status">
														<c:if test="${clist.cSeq eq list.ifmmtelCo }">
															<c:out value="${clist.cdName }"></c:out>
														</c:if>
													</c:forEach>
												</td>
												
												<td>
													<c:forEach items="${cachedList}" var="clist" varStatus="status">
														<c:if test="${clist.cSeq eq list.ifmmMktemailNY }">
															<c:out value="${clist.cdName }"></c:out>
														</c:if>
													</c:forEach>
												</td>
												
												<td>
													 <c:forEach items="${cachedList}" var="clist" varStatus="status">
														<c:if test="${clist.cSeq eq list.ifmmMktappAlertNY }">
															<c:out value="${clist.cdName }"></c:out>
														</c:if>
													</c:forEach>
												</td>
												
												<td>
													<c:forEach items="${cachedList}" var="clist" varStatus="status">
														<c:if test="${clist.cSeq eq list.ifmmMktapppushnight }">
															<c:out value="${clist.cdName }"></c:out>
														</c:if>
													</c:forEach>
												</td>
												
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
							
							
							
							

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
 	var goUrlList = "/codeGroup/codeGroupList";
	var goUrlInst = "/codeGroup/codeGroupInst";
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";
	var goUrlUele = "/codeGroup/codeGroupUele";
	var goUrlDele = "/codeGroup/codeGroupDele";
	var goUrlForm = "/member/memberForm";
	
	// var seq = $("input:text[name=cgSeq]");				/* #-> */
	var seq = $("input:hidden[name=ifmmSeq]");
	
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	var formList = $("form[name=formList]");
	
	$("#btnSearch").on("click", function(){
		formList.attr("action", goUrlList).submit();
	});
	
	$("#btnupdt").on("click", function(){
		formList.attr("action", goUrlUpdt).submit();
	});
	
 	goList = function(thisPage){
 		$("input:hidden[name=thisPage]").val(thisPage);
 		formList.attr("action", goUrlList).submit();
 	}
 	
 	$('#btnForm').on("click", function() {
 		
		goForm(0);                
	});
 	
 	goForm = function(keyValue) {
    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */						//form으로 넘어갈때 seq를 0으로 만듬; -> 애러 요인
    	seq.val(keyValue);
    	formList.attr("action", goUrlForm).submit();
	}
 	
	goFormk = function(keyValue) {
    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
    	seq.val(keyValue);
    	formList.attr("action", goUrlForm).submit();
	}

 </script>
</body>
</html>
