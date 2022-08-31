<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>codeAdd</title>
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
						<a class="heading" href="./codeGroupAdd" style="padding-right: 20px;"  >코드그룹 추가</a >
						<a class="heading" href="./code" style="padding-right: 20px;" >코드관리</a >
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
				<h3>코드관리 추가</h3>
					<form action="">
						<div >
							<div style="padding-top: 20px;">
							  <div  style="display: inline-block; width: 500px; ">
							    <label for="11" class="form-label">사용여부</label>
							    <select class="form-select" id="11">
								  <option selected>Y</option>
								  <option value="1">N</option>
								</select>
							  </div>
							  
							  <div style="display: inline-block;  width: 500px; margin-left:20px;">
							 
							  </div>
							</div>
						
							  <div  style="display: inline-block; width: 500px; padding-top: 20px;">
							    <label for="exampleInputEmail1" class="form-label">코드</label>
							    <input type="text" class="form-control" id="exampleInputEmail1" >
							  </div>
							  
							  <div style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="exampleInputEmail1" class="form-label">코드(Another)</label>
							    <input type="text" class="form-control" id="exampleInputEmail1" >
							  </div>
						</div>
						
						<div style="padding-top: 20px;">
							  <div  style="display: inline-block; width: 500px;">
							    <label for="exampleInputEmail1" class="form-label">코드 이름(한글)</label>
							    <input type="text" class="form-control" id="exampleInputEmail1">
							  </div>
							  
							  <div style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="exampleInputEmail1" class="form-label">코드 이름 (영문)</label>
							    <input type="text" class="form-control" id="exampleInputEmail1">
							  </div>
						</div>
						
						<div style="padding-top: 20px;">
							  <div  style="display: inline-block; width: 500px;">
							    <label for="11" class="form-label">사용여부</label>
							    <select class="form-select" id="11" aria-label="Default select example">
								  <option selected>Y</option>
								  <option value="1">N</option>
								</select>
							  </div>
							  
							  <div style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="exampleInputEmail1" class="form-label">순서</label>
							    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="숫자">
							  </div>
						</div>
						
						<div style="padding-top: 20px;">
							  <div  style="float: left; width: 500px;">
							    <label for="floatingTextarea" class="form-label">설명</label>
							    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
							  </div>
							  
							 <div style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="11" class="form-label">삭제여부</label>
							    <select class="form-select" id="11" >
								  <option selected>Y</option>
								  <option value="1">N</option>
								</select>
							  </div>
						</div>
						
						<div style="display:inline-block"></div>
						
						<div style=" padding-top: 100px;">
							  <div  style=" display: inline-block;width: 500px; ">
							    <label for="exampleInputEmail1" class="form-label">예비1 (varchar type)</label>
							    <input type="text" class="form-control" id="exampleInputEmail1"  placeholder="영문(대소문자,숫자)">
							  </div>
							  
							  <div style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="exampleInputEmail1" class="form-label">예비2 (varchar type)</label>
							    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="영문(대소문자,숫자)">
							  </div>
						</div>
						<div style="display:inline-block;"><div>
						
						<div style="padding-top: 20px;">
							  <div  style="display: inline-block; width: 500px; ">
							    <label for="exampleInputEmail1" class="form-label">예비3 (varchar type)</label>
							    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="영문(대소문자,숫자)">
							  </div>
							  
							  <div style="display: inline-block;  width: 500px; margin-left:20px;">
							 
							  </div>
						</div>
						
						<div style="padding-top: 20px;">
							  <div  style="display: inline-block; width: 500px; ">
							    <label for="exampleInputEmail1" class="form-label">예비1 (int type)</label>
							    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="숫자">
							  </div>
							  
							  <div style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="exampleInputEmail1" class="form-label">예비2 (int type)</label>
							    <input type="text" class="form-control" id="exampleInputEmail1"  placeholder="숫자">
							  </div>
						</div>
						
						<div style="padding-top: 20px;">
							  <div  style="display: inline-block; width: 500px; ">
							    <label for="exampleInputEmail1" class="form-label">예비3 (int type)</label>
							    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="숫자">
							  </div>
							  
							  <div style="display: inline-block;  width: 500px; margin-left:20px;">
							 
							  </div>
						</div>
				
					</form>
				<div style="padding-top: 30px;">
					<form action="">
						<div style="display:table; width: 100%; padding-bottom:150px;">
								<div style="display:table-cell;">
									<button type="button" style="background: #809091; border:1px solid #809091; border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;" onclick="location.href='./code'"> 
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
									
									<button type="button" style="background: blue; border:1px solid yellow; border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;" onclick="location.href='./codegroup2.html'"> 
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