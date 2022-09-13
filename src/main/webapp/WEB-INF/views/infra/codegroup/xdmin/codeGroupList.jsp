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
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  	
  	
  	<script>
	  $( function() {
	    $("#datepicker").datepicker({
	    	dateFormat: 'yy-mm-dd'
	    	,changeYear: true
	    	,changeMonth: true
	    	,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12']
	   		,monthNames: ['1월  ','2월  ','3월  ','4월  ','5월  ','6월  ','7월  ','8월  ','9월  ','10월  ','11월  ','12월  '] 
       		,dayNamesMin: ['월  ','화  ','수  ','목  ','금  ','토  ','일  ']  
       		,dayNames: ['월요일','화요일','수요일','목요일','금요일','토요일','일요일'] 
        	 
	    });
	    
	    $("#datepicker2").datepicker({
	    	dateFormat: 'yy-mm-dd'
	    	,changeYear: true
	    	,changeMonth: true
	    	,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12']
	   		,monthNames: ['1월  ','2월  ','3월  ','4월  ','5월  ','6월  ','7월  ','8월  ','9월  ','10월  ','11월  ','12월  '] 
       		,dayNamesMin: ['월  ','화  ','수  ','목  ','금  ','토  ','일  ']  
       		,dayNames: ['월요일','화요일','수요일','목요일','금요일','토요일','일요일'] 
        	 
	    });
	    $('#datepicker').datepicker('setDate', '-1M');
	    $('#datepicker2').datepicker('setDate', 'today');
	  } );
	  
	  
	  function edit(){
	 		
	 		alert("edit");
	 	
	 		alert("끝");
	 		
	 	}
	 
  	</script>
  	
  	
</head>
<body>
	<div id="aaaaa"  class="container-fluid">
		 <div style="border-bottom: solid; height: 35px; border-width: 3px; border-color:#F5F5F5;">
		 	<div class="container bodyd">
				<div id="aaaaa" class="row align-items-center">
					<div  class="col-12" style="padding-top:6px;">
						<a class="heading"  href="./codeGroupList" style="padding-right: 20px;" >코드그룹 관리</a >
						<a class="heading"  href="./codeGroupForm" style="padding-right: 20px;" >코드그룹 추가</a >
						<a class="heading"  href="../code/codeList" style="padding-right: 20px;" >코드관리</a >
						<a class="heading"  href="./codeAdd" style="padding-right: 20px;" >코드 추가</a >
					</div>		 	
			 	</div>
		 	</div>
		 </div>
	 </div>
 	<div style="height: 100px; background: #999999;"></div>
 	
 	<div class="container bodyd" >
 		<div class="row" style="padding-top: 50px;">
 			<div class="col-12">
				<h3>코드그룹 관리</h3>
			
				<div class="border " style=" padding: 10px; ">
					<form method="post" action="/codeGroup/codeGroupList">
						<select id="shUse" name = "shUse" class="form-select" aria-label="Default select example" style="width: 200px; margin:0; display:inline-block;">
						  <option value="" <c:if test ="${empty vo.shUse}"> selected</c:if> >사용여부</option>   <!--  -->
						  <option value="0" <c:if test ="${vo.shUse eq 0}"> selected</c:if>>N</option>
						  <option value="1"<c:if test ="${vo.shUse eq 1}"> selected</c:if>>Y</option>
						</select>
									
						<select class="form-select" aria-label="Default select example" style="width: 200px; margin:0; display:inline-block;">
						  <option selected >수정일</option>
						  <option value="1">One</option>
						  <option value="2">Two</option>
						  <option value="3">Three</option>
						</select>
									
						 <input type="text" id="datepicker" style = "width: 200px; height: 36px; border: 1px solid #CED4DA; border-radius: 5px; padding-bottom: 2px;">		
						 <input type="text" id="datepicker2" style = "width: 200px; height: 36px; border: 1px solid #CED4DA; border-radius: 5px; padding-bottom: 2px;">		

						
						<br />
						
					
						<select id="shOption" name ="shOption"class="form-select" aria-label="Default select example" style="width: 200px; margin:0; display:inline-block; margin-top: 20px;">
						  <option value="" <c:if test ="${empty vo.shOption}"> selected</c:if>> 검색구분</option>
						  <option value="1" <c:if test ="${vo.shOption eq 1}"> selected</c:if>>코드그룹 코드</option>
						  <option value="2" <c:if test ="${vo.shOption eq 2}"> selected</c:if>>코드그룹 이름 (한글)</option>
						  <option value="3" <c:if test ="${vo.shOption eq 3}"> selected</c:if>>코드그룹 이름 (영문)</option>
						</select>
						
						<input value="<c:out  value="${vo.shValue}"/>" type="text" class="form-control" name="shValue"  style="width: 200px; margin:0; display:inline-block; margin-top: 20px;" placeholder="검색어">
						
						<button  type="" style="background: yellow; border:1px solid yellow; border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;"> 
							<i class="fa-solid fa-magnifying-glass"></i>
						</button>
						
						<button style="background: red; border:1px solid yellow; border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;"> 
							<i class="fa-solid fa-arrow-rotate-right"></i>
						</button>
					</form>
				</div>
			
				<div style="padding-top: 30px;">
					<h4 style="padding-bottom: 10px;">
						Total: <span>1</span>
						<span style="float:right;">
							<form action="">
								<select class="form-select" aria-label="Default select example" style="width: 80px; margin:0; display:inline-block;">
								  <option selected >10</option>
								  <option value="1">One</option>
								  <option value="2">Two</option>
								  <option value="3">Three</option>
								</select>
							</form>
						</span>
					</h4>
					
				
					<table class="table table-bordered" style="text-align:center;">
						<tr>
							<th><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></th>
							<th>#</th>
							<th>코드그룹 코드</th>
							<th>코드그룹 이름(한글)</th>
							<th>코드그룹 이름(영문)</th>
							<th>코드갯수</th>
							<th>등록일</th>	
							<th>수정일</th>	
						<tr>
						<form  method="post" action="/codeGroup/codeGroupEdit">
						<c:set var="orderListLength" value="${fn:length(list)}"/>
						
						
						<c:choose>
							<c:when test = "${fn:length(list) eq 0 }">
								<tr>
									<td colspan="8">There is no data!!!</td>
								<tr>
							</c:when>
							
							<c:otherwise>
								<c:forEach items="${list}" var="list" varStatus="status">
										<tr  class="lltem" style="cursor: pointer;" onclick="location.href='/codeGroup/codeGroupView?cgSeq=<c:out value="${list.cgSeq}"/>'">
											<td><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
											<td>${orderListLength - status.index }</td>
											<td><c:out value="${list.cgSeq }"/></td>
											<td ><c:out value="${list.cgName }"/></td>
											<td><c:out value="${list.cgKor }"/></td>
											<td><c:out value="${list.total }"/></td>
											<td></td>
											<td></td>
										</tr>
								</c:forEach>								
							</c:otherwise>
						</c:choose>
						</form>
					</table>
					
					<div>
						<nav aria-label="Page navigation example">
						  <ul class="pagination justify-content-center">
						    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
						    <li class="page-item"><a class="page-link" href="#">1</a></li>
						    <li class="page-item"><a class="page-link" href="#">2</a></li>
						    <li class="page-item"><a class="page-link" href="#">3</a></li>
						    <li class="page-item"><a class="page-link" href="#">Next</a></li>
						  </ul>
						</nav>
					</div>					
					
					<div style="display:table; width: 100%; padding-bottom:150px;">
						<div style="display:table-cell;">
							<button style="background: red; border:1px solid yellow; border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;"> 
								<i class="fa-solid fa-trash"></i>
							</button>
							
							<button style="background: red; border:1px solid yellow; border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;"> 
								<i class="fa-solid fa-arrow-rotate-right"></i>
							</button>
						</div>
						
						<div style="display:table-cell; text-align: right;">
							<button style="background: green; border:1px solid yellow; border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
								<i class="fa-solid fa-file-excel"></i>
							</button>	
							
							<button type="button" style="background: blue; border:1px solid yellow; border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;" onclick="location.href='./codeGroupForm'"> 
								<i class="fa-solid fa-plus"></i>
							</button>				
						</div>
						</form>
					</div>	
				</div>
			</div>
 		</div>
 		
 	</div>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
</body>
</html>
