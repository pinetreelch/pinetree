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
	<div class="container-fluid">
		 <div style="border-bottom: solid; height: 35px; border-width: 3px; border-color:#F5F5F5;">
		 	<div class="container bodyd">
				<div class="row align-items-center">
					<div class="col" style="padding-top:6px;">
						<a class="heading" href="" >도서</a >
						
						<c:choose>
							<c:when test ="${sessSeq eq null}">
								<a class="heading float-end" href="/login/">&nbsp;<b>로그인</b> </a>
									<span class="heading float-end"> ⦁&nbsp;</span>
								<a class="heading float-end" href="/login/signup1/"> <b>회원가입</b>&nbsp;&nbsp;</a>
								<!-- 	<span class="heading float-end"> ⦁&nbsp;</span>
								<a class="heading float-end" href="/codeGroup/codeGroupList/"> <b>관리자 페이지 </b>&nbsp;&nbsp;</a> -->
							</c:when>
							
							<c:otherwise>
								 <span class="heading float-end" style = "cursor: pointer;" id = "logoutBtn"><b>로그아웃</b></span> 
								 	<!-- <span class="heading float-end"> ⦁ &nbsp;</span>
								 <a class="heading float-end" href="/codeGroup/codeGroupList/"> <b>관리자 페이지 </b>&nbsp;&nbsp;</a> -->
							</c:otherwise>
						</c:choose>
						
					</div>		 	
			 	</div>
		 	</div>
		 </div>
	 </div>
 
	<div class="container bodyd" >
	 	<div class="row" >
	 		<div class="col-4">
	 			<div class="aa" style="padding-top: 30px; display: inline-block;">
				 	<a  href="/main/" style="display: inline-block; color:black;">	
					 	<img src="https://active.ridibooks.com/navbar/icons/web/ridi.f50c563403f615565a7328888ba19f87.svg"  style="width:61px; height:23px; padding: 0px; color:black;">
					 	<img src="https://active.ridibooks.com/navbar/icons/web/genre_books.24933faed881f7e79f1f8d5f0c529370.svg" style="width:122px; height: 40px; padding: 4px;">
				 	</a>
				 </div>
			</div>
		
			<div class="col-8 justify-content-end d-flex" style="padding-top: 20px;">
		 		<nav  style="display: inline-block;">
		 			<ul >
		 				<li style="display: inline-block; padding-right: 40px;">
		 						<input type="text" class="form-control inputclass" placeholder="" aria-label="First name" style="width:250px;">
		 				</li>
		 				<li style="display: inline-block;">
		 					<a href="">
		 						<i class="fa-solid fa-book-open fa-xl" style="width: 50px; color: black;"></i>
		 					</a>
		 				</li>
		 				<li style="display: inline-block;">
		 					<a href="">
		 						<i class="fa-regular fa-user fa-xl" style="padding-top:30px; color: black;"></i>
		 					</a>
		 				</li>
				 	</ul>
			 	</nav>
			</div>
		</div>
		<!-- padding-left:29px; padding-right:20px; -->
		<div class="row" style="padding-top: 40px; padding-left:29px; padding-right:20px;">
			<div class="col-4" style="width: 235px;">
				<div class="row">
					<div class="col-12">
						<div class="menutitle">마이리디</div>
						<div class="border-bottom" style="padding-top:17px; padding-bottom:17px; color: #1F8CE6; width: 130px;">
							<a href="/member/mypage" class="menutitle1" style="color: #40474D">
							<div style="display:inline-block; padding-right: 5px;">
								<i class="fa-solid fa-house"></i>
							</div>
								마이리디 홈
							</a>
						</div>
						
						<div class="border-bottom" style="width: 135px; padding-top: 17px; padding-bottom: 19px;">
							<div class="menutitle2">
								<i class="fa-solid fa-book-open"></i>
								<span style="margin-left: 5px;">책</span>
							</div>
							
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 선호작품</div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 최근 조회한 작품</div>
							<div class="menutitle34" style="padding-top:14px; padding-left: 22px;"> <a href="./wishlistView.html">위시 리스트</a></div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 독서노트</div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 신간알림</div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 이벤트 알림 설정</div>
						</div>
						
						<div class="border-bottom" style="width: 135px; padding-top: 17px; padding-bottom: 19px;">
							<div class="menutitle2">
								<i class="fa-solid fa-id-card"></i>
								<span style="margin-left: 5px;">구매헤택</span>
							</div>
							
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 결제 내역</div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 리디 캐시</div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 리디포인트</div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 쿠폰</div>
						</div>
						
						<div class="border-bottom" style="width: 135px; padding-top: 17px; padding-bottom: 19px;">
							<div class="menutitle2">
								<i class="fa-solid fa-user"></i>
								<span style="margin-left: 5px;">개인</span>
							</div>
							
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 1:1 문의</div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 내 기기 관리</div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 내 리뷰 관리</div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;">
								 <a href="./myPageView.html" class="menutitle3" style="color:#1F8CE6; ">정보 변경</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			
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
	
	
	<footer>
				<div class="container-fluid" style="padding-top: 30px;">
						<hr  style="background-color: #F0F0F0;">
				</div>
				
				<div class="container bodyd">
					<div class="row" style="padding-top: 41px; padding-right: 20px;">
						<div class="col-md-2" style="width: 184px; height: 164px;">
							<div style="height: 24px;">
								<i class="fa-solid fa-headphones-simple fa-xl" style="color: #787878;"></i>
								<span class="footer1">고객센터</span>
							</div> <br />
							<div style="height: 24px;">
								<i class="fa-solid fa-volume-low fa-xl" style="color: #787878;"></i>
								<span class="footer1">공지사항</span>
							</div>
						</div>
						<div class="col-md-2">
							<div style = "height: 24px">
								<span class="footer1">서비스</span>
							</div>
							<div style= "height: 22px">
								<span class="footer2">리디페이퍼</span>
							</div>
							<div style= "height: 22px">
								<span class="footer2">제휴카드</span>
							</div>
							<div style= "height: 22px">
								<span class="footer2">뷰어 다운로드</span>
							</div>
							<div style= "height: 22px">
								<span class="footer2">CP사이트</span>
							</div>
							<div style= "height: 22px">
								<span class="footer2">리디셀렉트 B2B</span>
							</div>
						</div>
						<div class="col-md-2">
							<div style="height: 24px;">
								<span class="footer1">기타 문의</span>
							</div>
							<div style="height: 22px;">
								<span class="footer2">콘텐츠 제공 문의</span>
							</div>
							<div style="height: 22px;">
								<span class="footer2">사업 제휴 문의</span>
							</div>
						</div>
						<div class="col-md-2">
							<div style="height: 24px;">
								<span class="footer1">회사</span>
							</div>
							<div style="height: 22px;">
								<span class="footer2">회사 소개</span>
							</div>
							<div style="height: 22px;">
								<span class="footer2">인재 채용</span>
							</div>
						</div>
						<div class="col-md-2">
						
						</div>
						<div class="col-md-2">
							<i class="fa-brands fa-facebook fa-xl" style="padding-right:20px;"></i>
							<i class="fa-brands fa-instagram fa-xl" style="padding-right:20px;"></i>
							<i class="fa-solid fa-circle-play fa-xl"></i>
						</div>
					</div>
					
					<div class="row" style="padding-top: 60px; padding-bottom:20px;">
						<div class="col" style="padding-bottom:20px;">
							<span class="footer1">리디(주) 사업자 정보▿</span> <br />
							<span class="footer3">이용약관</span>
								<span class="divide">ㅣ</span>
							<span class="footer3">개인정보 처리방침</span>
								<span class="divide">ㅣ</span>
							<span class="footer3">청소년보호정책</span>
								<span class="divide">ㅣ</span>
							<span class="footer3">사업자정보확인</span> <br />
							<span class="footer3" style="padding-top: 16px; padding-bottom: 20px;">©RIDI Corp.</span> 
						</div>
					</div>
				</div>
			</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
<script src = "/resources/jscript/bookview/openclose.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	var form = $("form[name=form]");
	var sessSeq = $("input:hidden[name=sessSeq]");
	var sessSeqVal = sessSeq.val();
	var mainkey = $("input:hidden[name=mainkey]");
	var goUrlInfo = "/member/infochangecheck";
	var goUrlInfo2 = "/member/infochangecheck";
	
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
