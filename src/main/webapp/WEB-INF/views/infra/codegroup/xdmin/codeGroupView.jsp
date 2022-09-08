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
	  
	
  	
  	
</head>
<body>
	<div class="container-fluid">
		 <div style="border-bottom: solid; height: 35px; border-width: 3px; border-color:#F5F5F5;">
		 	<div class="container bodyd">
				<div class="row align-items-center">
					<div class="col" style="padding-top:6px;">
						<a class="heading" href="./codeGroupList" style="padding-right: 20px;" >코드그룹 관리</a >
						<a class="heading" href="./codeGroupForm" style="padding-right: 20px;" >코드그룹 추가</a >
						<a class="heading" href="../code/codeList"style="padding-right: 20px;"  >코드관리</a >
						<a class="heading" href="./codeAdd" style="padding-right: 20px;" >코드 추가</a >
	
					</div>		 	
			 	</div>
		 	</div>
		 </div>
	 </div>
 	<div style="height: 100px; background: #999999;"></div>
 	
 	<div class="container bodyd" >
 		<div class="row bodyd2" style="padding-top: 50px;">
 			<div class="col-12">
				<h3> 뷰 페이지</h3>
					<form method ="post" action = "/codeGroup/codeGroupInst">
						<div class="row" style="padding-top: 30px;" >
							  <div class="col"  style="display: inline-block; width: 500px;">
							    <label for="1" class="form-label">코드그룹 코드</label>
							    <input name = "cgName" value="<c:out  value="${cgName}"/>" type="text" class="form-control" id="1" >
							  </div>
							  
							  <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="2" class="form-label">코드그룹 코드(Another)</label>
							    <input name = "cgKor" type="text" class="form-control" id="2">
							  </div>
						</div>
						<input type = "submit">
					</form>
						<div  class="row" style="padding-top: 20px;">
							  <div class="col" style="display: inline-block; width: 500px;">
							    <label for="3" class="form-label">코드그룹 이름(한글)</label>
							    <input type="text" class="form-control" id="3" >
							  </div>
							  
							  <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="4" class="form-label">코드그룹 이름 (영문)</label>
							    <input type="text" class="form-control" id="4" >
							  </div>
						</div>
						
						<div  class="row" style="padding-top: 20px;">
							  <div class="col" style="display: inline-block; width: 500px;">
							    <label for="5" class="form-label">사용여부</label>
							    <select class="form-select" id="5" >
								  <option selected>Y</option>
								  <option value="1">N</option>
								</select>
							  </div >
							  
							  <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="6" class="form-label">순서</label>
							    <input type="text" class="form-control" id="6" placeholder="숫자">
							  </div>
						</div>
						
						<div  class="row" style="padding-top: 20px;">
							  <div class="col" style="float: left; width: 500px;">
							    <label for="7" class="form-label">설명</label>
							    <textarea class="form-control" placeholder="Leave a comment here" id="7"></textarea>
							  </div>
							  
							 <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="8" class="form-label">삭제여부</label>
							    <select class="form-select" id="8" >
								  <option selected>Y</option>
								  <option value="1">N</option>
								</select>
							  </div>
						</div>
						<div style="display:inline-block"></div>
						<div  class="row" style="padding-top: 20px;">
							  <div  class="col" style="display: inline-block; width: 500px; ">
							    <label for="9" class="form-label">예비1 (varchar type)</label>
							    <input type="text" class="form-control" id="9"  placeholder="영문(대소문자,숫자)">
							  </div>
							  
							  <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="10" class="form-label">예비2 (varchar type)</label>
							    <input type="text" class="form-control" id="10" placeholder="영문(대소문자,숫자)">
							  </div>
						</div>
						
						<div  class="row" style="padding-top: 20px;">
							  <div class="col" style="display: inline-block; width: 500px; ">
							    <label for="11" class="form-label">예비3 (varchar type)</label>
							    <input type="text" class="form-control" id="11" placeholder="영문(대소문자,숫자)">
							  </div>
							  
							  <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							 
							  </div>
						</div>
						
						<div  class="row" style="padding-top: 20px;">
							  <div class="col" style="display: inline-block; width: 500px; ">
							    <label for="12" class="form-label">예비1 (int type)</label>
							    <input type="text" class="form-control" id="12"  placeholder="숫자">
							  </div>
							  
							  <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="13" class="form-label">예비2 (int type)</label>
							    <input type="text" class="form-control" id="13"  placeholder="숫자">
							  </div>
						</div>
						
						<div  class="row" style="padding-top: 20px;">
							  <div class="col" style="display: inline-block; width: 500px; ">
							    <label for="14" class="form-label">예비3 (int type)</label>
							    <input type="text" class="form-control" id="14" placeholder="숫자">
							  </div>
							  
							  <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							 
							  </div>
						</div>
						
						<div  class="row" style="padding-top: 20px;">
							  <div class="col"  style="display: inline-block;  ">
							    <label for="a" class="form-label">최초 등록자</label>
							    <input type="text" class="form-control" id="a" >
							  </div>
							  
							  <div class="col" style="display: inline-block;  ">
							    <label for="b" class="form-label">최초 등록일</label>
							    <input type="text" class="form-control" id="b">
							  </div>
							  
							   <div class="col" style="display: inline-block;  ">
							    <label for="c" class="form-label">최초등록IP</label>
							    <input type="text" class="form-control" id="c"  >
							  </div>
							  
							   <div class="col" style="display: inline-block;  ">
							    <label for="d" class="form-label">최초등록디바이스</label>
							    <input type="text" class="form-control" id="d"  >
							  </div>
						</div>
				
					
				<div style="padding-top: 30px;">
					<form action="">
						<div style="display:table; width: 100%; padding-bottom:150px;">
								<div style="display:table-cell;">
									<button type="button" style="background: #809091; border:1px solid #809091; border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;" onclick="location.href='./codeGroupList'">
										<i class="fa-solid fa-list"></i>
									</button>
									
									
								</div>
								
								<div style="display:table-cell; text-align: right;">
								
									<button style="background: red; border:1px solid yellow; border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-x"></i>
									</button>
									
									<button style="background: green; border:1px solid yellow; border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-trash"></i>
									</button>	
									
									<button type="button" style="background: blue; border:1px solid yellow; border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;" onclick="location.href=''"> 
										<i class="fa-solid fa-bookmark"></i>
									</button>				
								</div>
							</div>
						</form>
					</div>	
				</div>
			</div>
 		</div>	
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>

</body>
</html>
