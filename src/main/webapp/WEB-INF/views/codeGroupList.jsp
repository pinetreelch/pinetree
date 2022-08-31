<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>codeGroupList</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/admin.css" />	  	
</head>
<body>
	<div id="aaaaa"  class="container-fluid">
		 <div style="border-bottom: solid; height: 35px; border-width: 3px; border-color:#F5F5F5;">
		 	<div class="container bodyd">
				<div id="aaaaa" class="row align-items-center">
					<div  class="col-12" style="padding-top:6px;">
						<a class="heading"  href="./codeGroupList" style="padding-right: 20px;" >코드그룹 관리</a >
						<a class="heading"  href="./codeGroupAdd" style="padding-right: 20px;" >코드그룹 추가</a >
						<a class="heading"  href="./code" style="padding-right: 20px;" >코드관리</a >
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
					<form action="">
						<select class="form-select" aria-label="Default select example" style="width: 200px; margin:0; display:inline-block;">
						  <option selected >N</option>
						  <option value="1">One</option>
						  <option value="2">Two</option>
						  <option value="3">Three</option>
						</select>
									
						<select class="form-select" aria-label="Default select example" style="width: 200px; margin:0; display:inline-block;">
						  <option selected >수정일</option>
						  <option value="1">One</option>
						  <option value="2">Two</option>
						  <option value="3">Three</option>
						</select>
									
						<select class="form-select" aria-label="Default select example" style="width: 200px; margin:0; display:inline-block;">
						  <option selected >Open this select menu</option>
						  <option value="1">One</option>
						  <option value="2">Two</option>
						  <option value="3">Three</option>
						</select>			

						<select class="form-select" aria-label="Default select example" style="width: 200px; margin:0; display:inline-block;">
						  <option selected >Open this select menu</option>
						  <option value="1">One</option>
						  <option value="2">Two</option>
						  <option value="3">Three</option>
						</select>
						<br />
						
						<select class="form-select" aria-label="Default select example" style="width: 200px; margin:0; display:inline-block; margin-top: 20px;">
						  <option selected >검색구분</option>
						  <option value="1">One</option>
						  <option value="2">Two</option>
						  <option value="3">Three</option>
						</select>
						
						<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="width: 200px; margin:0; display:inline-block; margin-top: 20px;" placeholder="검색어">
						
						<button style="background: yellow; border:1px solid yellow; border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;"> 
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
					
					<form action="">
					<table class="table table-bordered" style="text-align: center;">
						<tr style="background: #B8BFC4;">
							<th style="text-align: center;">  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></th>
							<th style="text-align: center;">#</th>
							<th>코드그룹 코드</th>
							<th>코드그룹 이름(한글)</th>
							<th>코드그룹 이름(영문)</th>
							<th>코드갯수</th>
							<th>등록일</th>
							<th>수정일</th>
						</tr>
						
						<tr>
							<td style="text-align: center;"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
							<td style="text-align: center;">1</td>
							<td>성별</td>
							<td></td>
							<td></td>
							<td>0</td>
							<td></td>
							<td></td>
						</tr>
						
						<tr>
							<td style="text-align: center;"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
							<td style="text-align: center;">2</td>
							<td>통신사</td>
							<td></td>
							<td></td>
							<td>0</td>
							<td></td>
							<td></td>
						</tr>
						
						<tr>
							<td style="text-align: center;"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
							<td style="text-align: center;">3</td>
							<td>이메일</td>
							<td></td>
							<td></td>
							<td>0</td>
							<td></td>
							<td></td>
						</tr>
						
						<tr>
							<td style="text-align: center;"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
							<td style="text-align: center;">4</td>
							<td>이메일</td>
							<td></td>
							<td></td>
							<td>0</td>
							<td></td>
							<td></td>
						</tr>
						
						<tr>
							<td style="text-align: center;"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
							<td style="text-align: center;">5</td>
							<td>국가</td>
							<td></td>
							<td></td>
							<td>0</td>
							<td></td>
							<td></td>
						</tr>
						
						<tr>
							<td style="text-align: center;"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
							<td style="text-align: center;">6</td>
							<td>마케팅</td>
							<td></td>
							<td></td>
							<td>0</td>
							<td></td>
							<td></td>
						</tr>
						
						<tr>
							<td style="text-align: center;"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
							<td style="text-align: center;">7</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						
						<tr>
							<td style="text-align: center;"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
							<td style="text-align: center;">8</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						
						<tr>
							<td style="text-align: center;"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
							<td style="text-align: center;">9</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						
						<tr>
							<td style="text-align: center;"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
							<td style="text-align: center;">10</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
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
							
							<button type="button" style="background: blue; border:1px solid yellow; border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;" onclick="location.href='./codeGroupAdd'"> 
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