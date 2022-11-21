 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>codeGroupList</title> 
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/admin.css" />	 
	  
	
	  
	  <!-- Datepicker -->  
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
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
        	,maxDate: '0'
	    });
	    
	    $("#shDateEnd").datepicker({
	    	dateFormat: 'yy-mm-dd'
	    	,changeYear: true
	    	,changeMonth: true
	    	,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12']
	   		,monthNames: ['1월  ','2월  ','3월  ','4월  ','5월  ','6월  ','7월  ','8월  ','9월  ','10월  ','11월  ','12월  '] 
       		,dayNamesMin: ['월  ','화  ','수  ','목  ','금  ','토  ','일  ']  
       		,dayNames: ['월요일','화요일','수요일','목요일','금요일','토요일','일요일'] 
        	,maxDate: '0'
	
	    });
	    
	    $('#shDateStart').datepicker('setDate', '2010-01-01');
	    $('#shDateEnd').datepicker('setDate', 'today');
	   	
	  } );	  
  	</script>	
  	
  	
  	
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
				         	<li style="text-shadow: 2px 2px 2px #b4b4b4,3px 3px 3px #6a79a3; font-weight: 500;  "><a href="/codeGroup/codeGroupList/">코드그룹 관리</a></li>
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
 			<i class="fa-solid fa-square" style="padding-left: 0px;"><span style="padding-left: 10px;">코드그룹 관리</span></i>
 		</div>
 		
 		<div class="row" style="background: white; margin-top: 30px; border: 2px solid #777777; border-radius: 10px;">
				<div class="col-12">
					<form name = "formList" id = "formList" method ="post">	
						<input type="hidden" name="checkboxSeqArray" id="checkboxSeqArray">
								<div class="border" style="margin: 15px; border-radius: 5px; padding: 10px;">

									<select id="shUse" name = "shUse" class="form-select" aria-label="Default select example"style="width: 200px; margin-right:10px; display:inline-block;">
										 <option value="3" <c:if test ="${empty vo.shUse}"> selected</c:if> >사용여부</option>   <!--  -->
										 <option value="0" <c:if test ="${vo.shUse eq 0}"> selected</c:if>>N</option>
										 <option value="1"<c:if test ="${vo.shUse eq 1}"> selected</c:if>>Y</option>
									</select>

									<select id="shOptionDate" name = "shOptionDate" class="form-select" aria-label="Default select example" style="width: 200px; margin-right:10px; display:inline-block;">
										<option value="0" <c:if test = "${empty vo.shOptionDate }">  selected </c:if> > 날짜 구분 </option>
										<option value="1" <c:if test = "${vo.shOptionDate eq 1 }">  selected </c:if> >등록일</option>
										<option value="2" <c:if test = "${vo.shOptionDate eq 2 }">  selected </c:if> >수정일</option>
									</select>
									
									<input type="text" id="shDateStart" name="shDateStart" style = "width: 200px; height: 36px; border: 1px solid #CED4DA; border-radius: 5px; padding-bottom: 2px;" autocomplete="off">
									
									<%-- <fmt:parseDate var="shDateEnd" value="${vo.shDateEnd}" pattern="yyyy-MM-dd HH:mm:ss"/> --%>		
						 			<input type="text" id="shDateEnd" name="shDateEnd" style = "width: 200px; height: 36px; border: 1px solid #CED4DA; border-radius: 5px; padding-bottom: 2px;" autocomplete="off">
									

									<br />
								
								<select id="shOption" name ="shOption" class="form-select" aria-label="Default select example" style="width: 200px; margin-right:10px; display:inline-block; margin-top: 20px;">
									<option value="0" <c:if test ="${empty vo.shOption}"> selected</c:if>> 검색구분</option>
						  			<option value="1" <c:if test ="${vo.shOption eq 1}"> selected</c:if>>코드그룹 코드</option>
						  			<option value="2" <c:if test ="${vo.shOption eq 2}"> selected</c:if>>코드그룹 이름 (한글)</option>
						 			 <option value="3" <c:if test ="${vo.shOption eq 3}"> selected</c:if>>코드그룹 이름 (영문)</option>
								</select>

								<input value="<c:out  value="${vo.shValue}"/>" type="text" class="form-control" id="shValue" name="shValue" style="width: 200px; margin-right:10px; display:inline-block; margin-top: 20px;" placeholder="검색어">

								<button name="btnSearch" id="btnSearch" style="background: rgb(180, 176, 176); border:1px solid rgb(180, 176, 176); margin-right:5px; border-radius: 4px; color: black; font-size: 15px; width: 35px; height: 35px;"> 
									<i class="fa-solid fa-magnifying-glass"></i>
								</button> 
								
								<button id="resetBtn" style="background: rgb(227, 227, 227); border:1px solid rgb(227, 227, 227); border-radius: 4px; color: black; font-size: 15px; width: 35px; height: 35px;"> 
									<i class="fa-solid fa-arrow-rotate-right"></i>
								</button>
								
								</div>
						
						</div>	<!-- 검색창-->

						<div style="padding-top: 30px; padding: 15px;">  <!-- total 갯수 창-->

						
							
							<input type="hidden" name="cgSeq">
							<input type="hidden" name="mainKey">
							<input type="hidden" name="thisPage" value="<c:out value = "${vo.thisPage}" default="1"/>">
							<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
			
							
							<h4 style="padding-bottom: 10px;">
								 
									<span>
									Total:
									 <c:out value="${vo.totalRows}" > </c:out>	
									</span>
								
							</h4>
							
							<table class="table table-bordered" style="text-align: center;">
								<tr style="background: #B8BFC4;">
									<th style="text-align: center;"><input class="form-check-input" type="checkbox" value="" id="checkall"></th>
									<th style="text-align: center;">#</th>
									<th>코드그룹 코드</th>
									<th>코드그룹 이름(한글)</th>
									<th>코드그룹 이름(영문)</th>
									<th>사용여부</th>
									<th>삭제여부</th>
									<th>코드갯수</th>
									<th>등록일</th>
									<th>수정일</th>
								</tr>
								<!-- ${orderListLength - status.index  } ${vo.totalRows} -->
								
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
													<input class="form-check-input" type="checkbox" value="${list.cgSeq }" id="flexCheckDefault" name="checkboxitem">
												 </td>
												
												<td onclick="location.href='javascript:goFormk( <c:out value="${list.cgSeq }"/> )'">
															<c:out value = "${vo.totalRows - ((vo.thisPage -1) * vo.rowNumToShow +status.index) }"/>
												</td>
												
												<td onclick="location.href='javascript:goFormk( <c:out value="${list.cgSeq }"/> )'" >
														<c:out value="${list.cgSeq }"/>
												</td>
												 
												<td onclick="location.href='javascript:goFormk( <c:out value="${list.cgSeq }"/> )'">
														<c:out value="${list.cgName }"/>
												</td>
												
												<td onclick="location.href='javascript:goFormk( <c:out value="${list.cgSeq }"/> )'">
														<c:out value="${list.cgKor }"/>
												</td>
												
												<td onclick="location.href='javascript:goFormk( <c:out value="${list.cgSeq }"/> )'">
															<c:set var="ny1" value="${list.useNY }"/>
															<c:choose>
															
																<c:when test ="${ny1 eq 1 }">
																	Y
																</c:when>
																
																<c:when test ="${ny1 eq null }">
																	<b>(Null)</b>
																</c:when>
																	
																<c:otherwise>
																	N
																</c:otherwise>
															</c:choose>
												</td>
												
												<td onclick="location.href='javascript:goFormk( <c:out value="${list.cgSeq }"/> )'">
														<c:set var="ny2" value="${list.delNY }"/>
															<c:choose>
															
																<c:when test ="${ny2 eq 1 }">
																	Y
																</c:when>
																
																<c:when test ="${ny2 eq null }">
																	<b>(Null)</b>
																</c:when>
																
																<c:otherwise>
																	N
																</c:otherwise>
															</c:choose>
												</td>
												
												<td onclick="location.href='javascript:goFormk( <c:out value="${list.cgSeq }"/> )'">
												</td>
												
												<td onclick="location.href='javascript:goFormk( <c:out value="${list.cgSeq }"/> )'">
													<c:out value="${list.startDate }"/>
												</td>
												
												<td onclick="location.href='javascript:goFormk( <c:out value="${list.cgSeq }"/> )'">
													<c:out value="${list.updateDate }"/>
												</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
						
							
							
							<div>
								<!-- pagination s -->
									<%@include file="../../../common/xdmin/includeV1/pagination.jsp"%>
								<!-- pagination e -->
								
							</div>		

							<div style="display:table; width: 100%; padding-bottom:10px;">
								<div style="display:table-cell;">
									<button type="button" id="deleteBtn1" style="background: rgb(168, 209, 248); border:1px solid  rgb(168, 209, 248); border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;" data-bs-toggle="modal" data-bs-target="#exampleModal"> 
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
									<button id="excelbtn" style="background: rgba(8, 116, 8, 0.699); border:1px solid rgba(8, 116, 8, 0.699); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-file-excel"></i>
									</button>	
									
									<button  type="button" name ="btnForm" id="btnForm" style="background: rgb(82, 82, 194); border:1px solid rgb(82, 82, 194); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-plus"></i>
									</button>
									</form>				
								</div>
							</div>	
						</div>	<!-- 토탈 갯수 창 부터 시작된 div-->
						
				</div> 			<!-- col끝 -->
 		</div> 		<!-- 검정 테리 코드그룹 관리 안-->
		
		<div style="visibility: hidden; height: 100px;"> 
				d
		</div>	
 	<!-- row 끝-->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
  
 <script>
 	var goUrlList = "/codeGroup/codeGroupList";
	var goUrlInst = "/codeGroup/codeGroupInst";
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";
	var goUrlUele = "/codeGroup/codeGroupUele";
	var goUrlDele = "/codeGroup/codeGroupDele";
	var goUrlForm = "/codeGroup/codeGroupForm";
	
	// var seq = $("input:text[name=cgSeq]");				/* #-> */
	var seq = $("input:hidden[name=cgSeq]");
	
	
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
 
 <script>
 	$("#excelbtn").click(function(){
 		formList.attr("action", "/codeGroup/excelDownload").submit();
 	});
 	
 	$("#resetBtn").click(function(){
 		
 		$("#shUse").val("3").prop("selected", true);
 		$("#shOptionDate").val("0").prop("selected", true);
 		$("#shOption").val("0").prop("selected", true);
 		
 		$('#shDateStart').datepicker('setDate', '2010-01-01');
 		$('#shDateEnd').datepicker('setDate', 'today');
 		
 		$("#shValue").val(null);
 		return false;
 	})
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
 	var checkboxSeqArray = [];
 	
 	$("#deleteBtn").click(function(){
 		
 		checkboxSeqArray = [];
 		
 		$("input[name=checkboxitem]:checked").each(function(){
			checkboxSeqArray.push($(this).val());
		});	
 		$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
 		
 		alert(checkboxSeqArray);
 		
 		formList.attr("action", "/codeGroup/deleteArray").submit();

 		return false;
 	});
 	
 	$("#uleteBtn").click(function(){
 		checkboxSeqArray = [];
 		
 		$("input[name=checkboxitem]:checked").each(function(){
			checkboxSeqArray.push($(this).val());
		});	
 		$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
 		
 		formList.attr("action", "/codeGroup/updateUse").submit();
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
 </script>
</body>
</html>
