<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>마이 페이지  </title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/mypage.css" />	 
</head>
<body>
	<form name="form" method = "post">
	<input type="hidden" name = "mainkey" id="mainkey"/>
	<input type="hidden" name = "ifmmSeq" id="ifmmSeq" value="${sessSeq}"/>
	<input type="hidden" name = "ifmmId" id="ifmmId" value="${memberinfo.ifmmId}"/>
	
	<!-- 최상단 헤더 -->
	<%@include file=".././common/xdmin/includeV1/header1.jsp" %>
 	<!-- 최상단 헤더 -->
 
	<div class="container bodyd" >
	 	
	 	<!-- 헤더 2 -->	 	
	 	<%@include file = ".././common/xdmin/includeV1/header2.jsp" %>
	 	<!-- 헤더 2 -->
	 	
		<!-- padding-left:29px; padding-right:20px; -->
		<div class="row" style="padding-top: 40px; padding-left:29px; padding-right:20px;">
			
			
			<!--  마이페이지 네비게이션  --> 
			<%@include file=".././common/xdmin/includeV1/mypageAdd.jsp"%>
			<!--  마이페이지 네비게이션  --> 
			
			<div class="col-8" style="width: 721px;">
				<div class="changeinfo">정보 변경</div>
				<p class="changeinfoptag" style="padding-top: 25px; padding-bottom:10px;">보안을 위해 비밀번호를 한번 더 입력해 주세요.</p>
				<div>
					<ul style="float:left; padding:0;">
						<li style="float:left">
								  <div class="col-12">
								    <input id= "pwd" name = "pwd" type="password" class="form-control" style=" width: 220px; height: 31.59px;">
								    
								    
								  </div>
						</li>
						<li style="float:left">
							<button id="send" name="send" class="check" style="background-color: #1F8CE6; width:59.84px; height: 30px; border-color: blue; border-radius: 3px; border-width:1px;">
								확인
							</button>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div> <!--  container boyd end -->
	</form>
	
<!-- footer -->
<%@include file = ".././common/xdmin/includeV1/footer.jsp" %>
<!-- footer -->
	
<%@include file = ".././common/xdmin/includeV1/myPageBarScript.jsp" %>
<script>
	var goUrlInfo2 = "/member/myinfoview";
	
	var pwd = $("input:password[name=pwd]");
	var pwdval = pwd.val();
	var ifmmId = $("#ifmmId").val();
	
	$("#send").on("click", function(){
		var pwdval = pwd.val();
		var ifmmId = $("#ifmmId").val();
		
		$.ajax({ 
			url : "/member/passwordcheck",
			
			type : 'post',
			
			data : {
				ifmmId : ifmmId,
				ifmmPwd : pwdval
			},
			
			success : function(data) {
	
			 	if(data.rt == "success"){
			 			form.attr("action", goUrlInfo2).submit();
				 } else if(data.rt == "fail") {
					 alert('비밀번호가 틀렸습니다. 다시 입력하세요.  ');
				 }
				
		     },
		          
			error : function(request, status, error){ 
					alert('error');	
				  	console.log("code: " + request.status)	
			        console.log("message: " + request.responseText)
			        console.log("error: " + error);
				 }	     
		});

	}); 
	
</script>

</body>
</html>
