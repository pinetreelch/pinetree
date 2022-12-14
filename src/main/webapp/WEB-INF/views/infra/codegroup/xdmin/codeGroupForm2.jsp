
 
  <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

 <jsp:useBean id="CodeGroupServiceImpl" class="com.pinetreelch.infra.modules.codegroup.CodeGroupServiceImpl"/>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>codeGroupForm</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	 <link rel="stylesheet" href="/resources/css/admin.css" />	 
	 
	  <!-- Datepicker -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

  	
  	<script>
	  $( function() {
		  
	    $("#startDate1").datepicker({
	    	dateFormat: 'yy-mm-dd'
	    	,changeYear: true
	    	,changeMonth: true
	    	,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12']
	   		,monthNames: ['1월  ','2월  ','3월  ','4월  ','5월  ','6월  ','7월  ','8월  ','9월  ','10월  ','11월  ','12월  '] 
       		,dayNamesMin: ['월  ','화  ','수  ','목  ','금  ','토  ','일  ']  
       		,dayNames: ['월요일','화요일','수요일','목요일','금요일','토요일','일요일']        	 
	    });   	
	    
	    <c:if test="${vo.cgSeq eq 0 or item.startDate eq null}">
	   	 $('#startDate1').datepicker('setDate', 'today');
	   </c:if>
	   
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
				         	<li ><a href="/codeGroup/codeGroupList">코드그룹 관리</a></li>
				         	<li><a href="/code/codeList">코드 관리</a></li>
				         	<li style="text-shadow: 2px 2px 2px #b4b4b4,3px 3px 3px #6a79a3; font-weight: 500;"><a href="/codeGroup/codeGroupForm">코드그룹 추가</a></li>
				         	<li><a href="/code/codeForm">코드 추가</a></li>
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
				
				<div style="background: white; position: fixed; bottom: 50px; left: 30px;">
					안녕하세요!
				</div>
				
			</div>
		</div>
		
	</div>

 	<div class="container-fluid bodyd3" style="padding-top: 50px;">																														<!-- 본문내용 시작-->
 		<div class="row codeGroupadmintitle" style=" margin-top: 60px;">
 			<i class="fa-solid fa-square" style="padding-left: 0px;"><span style="padding-left: 10px;">코드그룹 추가</span></i>
 		</div>
 		
 		<div class="row" style="background: white; margin-top: 30px; border: 2px solid #777777; border-radius: 10px;">
				<div class="col-12">
					<form method ="post"  name="form">
						<div class="row" style="padding-top: 30px;" >
							  <div class="col"  style="display: inline-block; width: 500px;">
							  
							  	<input type="hidden" value= "${vo.cgSeq}" name ="cgSeq"> 
							  	
							    <label for="1" class="form-label">코드그룹 코드 (한글)</label>
							    <input name = "cgName" id = "cgName" value="<c:out  value="${item.cgName}"/>" type="text" class="form-control">
							  </div>
							  
							  <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="2" class="form-label">코드그룹 코드(영문)</label>
							    <input name = "cgKor" type="text" class="form-control" id="2" value="<c:out  value="${item.cgKor}"/>" >
							  </div>
						</div>
						
						<div  class="row" style="padding-top: 20px;">
							  <div class="col" style="display: inline-block; width: 500px;">
							    <label for="5" class="form-label">사용여부</label>
							    <select class="form-select" name="useNY" >
								  <option value="" >-----선택-----</option>
								  <option value="1"  <c:if test="${item.useNY eq 1}">selected</c:if> >Y</option>
								  <option value="0" <c:if test="${item.useNY eq 0}">selected</c:if> >N</option>
								</select>
							  </div >
							  
							 <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="8" class="form-label">삭제여부</label>
							    <select class="form-select" name="delNY" >
							    	<option value="">---선택---</option>
									<option value="1"  <c:if test="${item.delNY eq 1}">selected</c:if> >Y</option>
									<option value="0" <c:if test="${item.delNY eq 0}">selected</c:if>>N</option>
								</select>
								
								
							  </div>
						</div>
						
						<div class="row" style="padding-top: 30px;" >
							  <div class="col"  style="display: inline-block; width: 500px;">
							  	
							    <label for="1" class="form-label"></label>
							    
							    <label for="1" class="form-label">등록일</label> <br />
							    
							    
							  
							    <c:choose>			
									<c:when test="${vo.cgSeq eq 0 or item.startDate eq null}">
										 <input  type="text" id="startDate1" name = "startDate" autocomplete="off">
									</c:when>
									
									<c:otherwise>
										 <input  type="text" id="startDate1" name = "startDate1" value="<c:out  value="${item.startDate}"/>" autocomplete="off" disabled>  <!-- disabled값을 못넘김 -->
									</c:otherwise>
								</c:choose>	
							    
							      
							   <input  type="hidden" id="startDate" name = "startDate" value="<c:out  value="${item.startDate}"/>">						<!--  그래서 이 방법을 사용해야함 -->
							   
							    
							    <br />
							    
							   
							  </div>
							  	
							  <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							
							  </div>
							 	
						</div>
						
						
					
					
					<div style="padding-top: 30px;">
						<div style="display:table; width: 100%; padding-bottom:150px;">
							<div style="display:table-cell;">
								<button type="button" id="btnList" name="btnList" style="background: rgb(168, 209, 248); border:1px solid rgb(168, 209, 248); border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;" onclick="location.href='./codeGroupList'">
									<i class="fa-solid fa-list"></i>
								</button>
								
								
							</div>
							
							<div style="display:table-cell; text-align: right;">
								<c:if test="${not empty item.cgSeq}">
								<button  type="button"  data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="background:rgb(241, 200, 63); border:1px solid rgb(241, 200, 63); border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;"> 
									<i class="fa-solid fa-x"></i>
								</button>
								</c:if>
								
									<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="staticBackdropLabel">삭제</h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body" style="text-align:left;">
									        삭제하시겠습니까?
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
									        <button type="button" name="btndel"  id="btndel" class="btn btn-primary">삭제</button>
									      </div>
									    </div>
									  </div>
									</div>	
									
								<button type="button"id="btninsert" name="btninsert" style="background: rgb(82, 82, 194); border:1px solid rgb(82, 82, 194); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
									<i class="fa-solid fa-bookmark"></i>
								</button>			
								
							</div>
						</div>
					</div>
					</form>
					
					<form method ="post"  name="formVo">
						<%@ include file="codeGroupVo.jsp" %>	
					</form>
				</div>	<!-- col12 -->
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
	
	// var seq = $("input:text[name=cgSeq]");				/* #-> */
	var seq = $("input:hidden[name=cgSeq]");
	
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
	
	$("#btninsert").on("click", function(){
		
		if (seq.val() == "0" || seq.val()==""){
			/* if(validationInst() == false) return false; */
			form.attr("action", goUrlInst).submit();
		} else {
			/* if(validationUpdt() == false) return false; */
			
			form.attr("action", goUrlUpdt).submit();
		}
		
	});
	
	 $("#btndel").on("click", function(){
			form.attr("action", goUrlDele).submit();
		});
	
	 $("#btnList").on("click", function(){
		 formVo.attr("action", goUrlList).submit();
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
