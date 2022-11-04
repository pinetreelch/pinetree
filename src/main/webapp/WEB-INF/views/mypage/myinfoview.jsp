<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title> 개인 정보 수정   </title>
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
				<div class="row">
					<div class="col-12 changeinfo">정보 변경</div>
				</div>
				
				<div class="row">
					<div class="col-12">
						<table class="table" style="color: transparent; text-shadow: 0 0 0 black;">
							<tr class="border-top" >
								<th class="table-light tableth" style="width:158px; padding-top: 10px; padding-bottom:10px; padding-left: 14px; padding-right: 14px; text-align:right; vertical-align: center;">
									<div style="margin-top: 4px;">이름</div>
								</th>
								<td  style=" padding-top: 10px; padding-bottom:10px; padding-left: 14px; padding-right: 14px;">
									<span class="tabletd">  ${memberinfo.ifmmName }
									<button class="expireinfo" style="background-color:white; border: solid; border-color: #808991; border-radius: 3px; border-width: 1px; float: right;">회원 탈퇴</button>
									</span>
								</td>
							</tr>
							
							<tr class="border-top" style="vertical-align: center;">
								<th class="table-light tableth" style="width:158px; padding-top: 10px; padding-bottom:10px; padding-left: 14px; padding-right: 14px; text-align:right; ">아이디</th>
								<td class="tabletdid" style=" padding-top: 10px; padding-bottom:10px; padding-left: 14px; padding-right: 14px;"> ${memberinfo.ifmmId }</td>
							</tr>
							
							<tr class="border-top">
								<th class="table-light tableth" style="width:158px; padding-top: 10px; padding-bottom:10px; padding-left: 14px; padding-right: 14px; text-align:right;">이메일</th>
								<td >
									<p class="tabletdemail">${memberinfo.ifmmEmail }</p>
									<p class="emailverification"style="display:inline-block; background-color:#EFFAE6; padding-left:6px; padding-top: 3px; padding-bottom:3px;padding-right: 70px; margin-top:10px; margin-bottom:0px;">
										<i class="fa-solid fa-check" style="color: #71D427 "></i>	<span class="emailverification">인증된 이메일 주소입니다.</span>
									</p>
									<p style="margin-bottom: 0px; margin-top:10px;">
										<button class="emailchange" style="background-color:#7D8E9E; width: 76.23px; height:30px;">이메일 변경</button>
									</p>
								</td>
							</tr>
							
							<tr class="border-top">
								<th class="table-light tableth" style="width:158px; padding-top: 10px; padding-bottom:10px; padding-left: 14px; padding-right: 14px; text-align:right;">비밀번호 변경</th>
								<td>
										  <div class="col-12" id="test">
										    <input type="password" class="form-control" id="pwdnow" style=" width: 220px; height: 33.59px;" placeholder="현재 비밀번호">
										    <input type="password" class="form-control" id="pwdnew" style=" width: 220px; height: 33.59px; margin-top:10px;" placeholder="새 비밀번호">
										    <input type="password" class="form-control" id="pwdnewcheck" style=" width: 220px; height: 33.59px; margin-top:10px;" placeholder="새 비밀번호 확인"> 
										  </div>
										  
										  <div style="padding-top:18px; padding-bottom: 3px;">
										  	<p class="pwdchange" style="padding: 0px; margin:0px;">비밀번호 변경 시 유의사항</p>
										  		<ul style="padding: 0px;" >
										  			<li style="padding-top: 8px;">
										  				<div style="display:inline-block; font-size: 0.3px;"><i class="fa-solid fa-square" style="color: #9EA7AD"></i></div>
										  				<span class="lispan">8자 이상, 영문/숫자/특수문자 중 2가지 이상 입력해주세요.</span>
										  			</li>
										  			<li>
										  				<div style="display:inline-block; font-size: 0.3px;"><i class="fa-solid fa-square" style="color: #9EA7AD"></i></div>
										  				<span class="lispan">연속된 3자 이상의 같은 문자는 제한합니다.</span>
										  			</li>
										  			<li >
										  				<div style="display:inline-block; font-size: 0.3px;"><i class="fa-solid fa-square" style="color: #9EA7AD"></i></div>
										  				<span class="lispan">ID와 같은 비밀번호는 사용할 수 없습니다.</span>
										  			</li>
										  		</ul>
										  		<button id="send" class="emailchange" style="background-color:#7D8E9E; width: 106.16px; height:30px;">비밀번호 변경</button>
										  </div>
								</td>
							</tr>
							
							<tr class="border-top">
								<th class="table-light tableth" style="width:158px; padding-top: 10px; padding-bottom:10px; padding-left: 14px; padding-right: 14px; text-align:right;">마케팅 정보 수신 관리</th>
								<td style="vertical-align: center;">	
									<ul style="padding: 0px;">
										<li >
											<div class="form-check" style="display: inline-block;">
											  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="width: 18px; height: 18px;">
											  <label class="form-check-label marketad" for="flexCheckDefault" >
											    이메일 구독
											  </label>
											</div>
											<div id="text1" style="display: inline-block;">
												<input type="text" class="form-control" id="exampleInputPassword3" style=" width: 220px; height: 33.59px; display: inline-block; margin-left: 5px;" value="chanho.lee0215@gmail.com">
											</div>
											<span class="rejectdate">(거부일:</span>
											<span class="rejectdate">2022.07.21.</span>
											<span class="rejectdate">)</span>
											
										</li>
										<li style="margin-top: 13px;">
											<div class="form-check" style="display: inline-block;">
											  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="width: 18px; height: 18px;">
											  <label class="form-check-label marketad" for="flexCheckDefault" >
											  	앱 푸시 수신
											  </label>
											</div>	
											<span class="rejectdate">(동의일:</span>
											<span class="rejectdate">2022.08.01.</span>
											<span class="rejectdate">)</span>
										</li>
										<li style="margin-top: 13px;">
											<div class="form-check" style="display: inline-block;">
											  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="width: 18px; height: 18px;">
											  <label class="form-check-label marketad" for="flexCheckDefault" >
											    야간 앱 푸시 수신
											  </label>
											</div>
											<span class="rejectdate">(야간: 오후 9시~오전 8시,</span>
											<span class="rejectdate">( 거부일:</span>
											<span class="rejectdate">2021.04.21.</span>
											<span class="rejectdate">)</span>	
										</li>
									</ul>
									<p class="marketinginfo" style="padding-left:5px; margin-top: -10px;">
										마케팅 정보 수신에 동의하시면 추천책, 신간, 베스트셀러 등 다양한 책 소식과 이벤트 정보, 할인 쿠폰 등의 혜택을 받으실 수 있습니다.
									</p>
									<button class="emailchange" style="background-color:#7D8E9E; width: 84.31px; height:30px;">수신 변경</button>
								</td>
							</tr>
						</table>
					</div>
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
	

	
	var pwdnow = $("input:password[id=pwdnow]");
	var pwdnew = $("input:password[id=pwdnew]");
	var pwdnewcheck = $("input:password[id=pwdnewcheck]");
	
	var pwdnowval = pwdnew.val();
	var ifmmId = $("#ifmmId").val();
 
	
	$("#send").on("click", function(){
		const pwdcheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$. %^&*-]).{8,20}$/;
		
		var pwdnowjs = document.getElementById("pwdnow");
		var pwdnowval = pwdnow.val();
		
		var  pwdnewjs = document.getElementById("pwdnew");
		var pwdnewval = pwdnew.val();
		
		var pwdnewcheckjs = document.getElementById("pwdnewcheck");
		var pwdnewcheckval = pwdnewcheck.val();
		
		var exit = false;
		
		$.ajax({ 
			url : "/member/passwordcheck",

			type : 'post',
			
			async: false,
			
			data : {
				ifmmId : ifmmId,
				ifmmPwd : pwdnowval
			},

			success : function(data) {
	
			 	if(data.rt == "success"){
			 		pwdnowjs.classList.remove('is-invalid'); 
				 } else if(data.rt == "fail") {
					 pwdnowjs.classList.add('is-invalid');
					 pwdnowjs.value='';
					 
					 exit = true;
					 return false;
				 }
			 	
		     },
		          
			error : function(request, status, error){ 
					alert('error');	
				  	console.log("code: " + request.status)	
			        console.log("message: " + request.responseText)
			        console.log("error: " + error);
				 }	    
		    
		});
	
		if(exit){
			return false;
		}
		
		if( pwdcheck.test(pwdnewval)){
			//bypass
			
		} else{
			alert('비밀번호 변경 시 유의사항을 다시 확인해주세요. ');
			pwdnewjs.value='';
			return false;
		}
		
		if(pwdnewval == pwdnewcheckval){
			//bypass
		} else{
			alert('비밀번호가 일치하는지 확인해주세요 ');
			return false;
		}
		
		$.ajax({ 
			url : "/member/passwordupdate",

			type : 'post',
			
			async: false,
			
			data : {
				ifmmId : ifmmId,
				ifmmPwd : pwdnewval
			},

			success : function(data) {
	
			 	if(data.rt == "success"){
			 		alert('비밀번호가 변경되었습니다.');
				 } else {
					alert('error');					 
				 }
	 	
		     },
		          
			error : function(request, status, error){ 
					alert('error');	
				  	console.log("code: " + request.status)	
			        console.log("message: " + request.responseText)
			        console.log("error: " + error);
				 }	    
		    
		});
		
		
		return false;
	}); 
	
</script>

</body>
</html>
