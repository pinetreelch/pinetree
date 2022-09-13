<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>회원가입 페이지 1</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/bookListcss.css" />	 
</head>


<body style="background-color: #EBF6FF">
	<div class="container-fluid">
 		<div class="row border-bottom" style="height: 40px;" >
			<div class="col-12" style="text-align: center;">
				<a href="../book/bookList.html"><img src="https://active.ridibooks.com/navbar/icons/web/ridi.f50c563403f615565a7328888ba19f87.svg" alt="" style="width: 40px; height: 35px;"/></a>
			</div>
 		</div>
 		
 		<div class="row">
			<div class="col-12" style="text-align: center; padding-top: 20px;">
				<svg width="252" height="252" viewBox="0 0 252 252" fill="none" xmlns="http://www.w3.org/2000/svg" class="fig-1rdj9xc"><path d="M145.823 140.995c13.716-4.07 25.338-16.523 25.338-36.627 0-24.563-17.349-42.016-42.287-40.203l-45.218 3.233v108.815l25.156 4.298V142.57h9.875l21.19 43.461 32.136 5.582-26.19-50.618zm-4.402-36.788c-.229 9.356-6.757 15.452-17.781 15.437l-14.838-.208V89.347l15.181-.727c11.378-.556 17.682 5.504 17.438 15.587z" fill="#1E9EFF"></path></svg>
			</div>
 		</div>
 	</div>
 	
 	<div class="container">
 	 	<div class="row" style="padding-top: 40px;">
 			<div class="col-4"></div>
 			<div class="col-4 d-grid justify-content-center">
 				<button type="button" class="btn btn-primary signupbutton" style="width:338px; height: 48px; border-radius: 10px; background-color: #1F8CE6; border-color: #1F8CE6" onclick="location.href='/login/signup2/'">회원가입</button>
 				<a href="./loginForm.html"><div class="alreadymember" style="text-align:center; padding-top: 14px;">이미 회원이신가요?</div></a>
 			</div>
 			<div class="col-4"></div>
 		</div> 	
 	</div>	
	
	 
	 
	  
 
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
</body>
</html>
