<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>카트   </title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/mypage.css" />	 
</head>
<body>
	<form name="form" method = "post">
	<input type="hidden" name = "mainkey" id="mainkey"/>
	<input type="hidden" name = "ifmmSeq" id="ifmmSeq" value="${sessSeq}"/>
	<input type="hidden" name = "ifmmId" id="ifmmId" value="${memberinfo.ifmmId}"/>
	<input type="hidden" name = "tdbkSeq" id="tdbkSeq" />
	<div class="container-fluid">
		 <div style="border-bottom: solid; height: 35px; border-width: 3px; border-color:#F5F5F5;">
		 	<div class="container bodyd">
				<div class="row align-items-center">
					<div class="col" style="padding-top:6px;">
						<a class="heading" href="" >도서</a >
						<a class="heading float-end" href="../member/loginForm.html">&nbsp;<b>로그인</b> </a>
						<span class="heading float-end" href=""> ⦁&nbsp;</span>
						<a class="heading float-end" href="../member/1_signupForm.html"> <b>회원가입</b>&nbsp;&nbsp;</a>
					</div>		 	
			 	</div>
		 	</div>
		 </div>
	 </div>
 
	<div class="container bodyd" >
		<div class="row" >
	 		<div class="col-4">
	 			<div style="padding-top: 30px; display: inline-block;">
				 	<a  href="../book/bookList.html" style="display: inline-block">	
					 	<img src="https://active.ridibooks.com/navbar/icons/web/ridi.f50c563403f615565a7328888ba19f87.svg"  style="width:61px; height:23px; padding: 0px;">
					 	<img src="https://active.ridibooks.com/navbar/icons/web/genre_books.24933faed881f7e79f1f8d5f0c529370.svg" style="width:122px; height: 40px; padding: 4px;">
				 	</a>
				 </div>
			</div>
		
			<div class="col-8 justify-content-end d-flex" style="padding-top: 20px;">
		 		<nav  style="display: inline-block;">
		 			<ul >
		 				<li style="display: inline-block; padding-right: 40px;">
		 					<form action="">
		 						<input type="text" class="form-control inputclass" placeholder="" aria-label="First name" style="width:250px;">
		 					</form>
		 				</li>
		 				<li style="display: inline-block;">
		 					<a href="">
		 						<i class="fa-solid fa-book-open fa-xl" style="width: 50px;"></i>
		 					</a>
		 				</li>
		 				<li style="display: inline-block;">
		 					<a href="../myPage/myPageList.html">
		 						<i class="fa-regular fa-user fa-xl" style="padding-top:30px;" "></i>
		 					</a>
		 				</li>
				 	</ul>
			 	</nav>
			</div>
		</div>
	</div>  <!-- container bodyd end -->
	
	<div class="container bodydpurchase" >
		<div class="row" style="padding-top: 40px;">
			<div class="col-12" >
				<div class="row">
					<div class="col-12" style="width:594px;">
						<h3 class="purchasedetail" style="padding-bottom: 14px; margin:0px;">
							카트 
							<span class="nmbbooks"> 1 </span>
						</h3>
						
						<div class="border">
							
							<ul style=" height: 44px; display:table; width: 100%; vertical-align: middle; list-style: none; list-style-type:none; margin-bottom:0; padding: 0; text-align: center;">
								<li class="buyavailable" style="display:table-cell; vertical-align: middle; width: 50%; background-color: #f2f4f5;">소장가능 <span class="sojangnum">2</span></li>
								<li class="buyavailable" style="display:table-cell;vertical-align: middle; width: 50%;">대여가능 </li>								
							</ul>
							
							<div class="border-bottom" style="display: table; width: 94%; margin-left: 3%; vertical-align: middle; margin-right:3%; height: 60px; ">					
								<div style="display: table-row;">								
									<div style="display: table-cell; width: 50%; vertical-align: middle;" >
										 <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
										<span class="selectall">전체 선택</span> 
									</div>
										
									<div style="display: table-cell; width: 50%; text-align:right; vertical-align: middle;"> 
										<button class="btnStyle"> 선택 위시리스트로 이동 </button> 
										<button class="btnStyle"> 선택 삭제 </button> 
									</div>									
								</div>
							</div>
							
							
							<div class="border-bottom" style="display: table; width: 94%; margin-left: 3%; margin-right:3%; height: 127px; vertical-align: middle; ">					
								<div style="display: table-row;">	
															
									<div style="display: table-cell; width: 20%; vertical-align: middle; ">
										<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="vertical-align: middle">
										<img src="" alt="" style="width: 60px; height: 87px;"/>
									</div>
									
									<div style="display: table-cell; width: 60%; padding-top: 20px; padding-bottom: 20px;">
										<p class="ctbooktitle">미키7</p>
										<p class="ctbookauthor">에드워드 에슈턴 </p>
										<div style= "vertical-align:bottom"> 
											<button class="btnStyle"> 위시리스트로 이동 </button> 
											<button class="btnStyle"> 삭제 </button> 					
										 </div>
									</div>	
																	
									<div style="display: table-cell; width: 20%; vertical-align: middle; text-align: right;">
										
											<span class="purchaseprice" >12,000</span>
											<span class="purchaseprice" >원</span>
									</div>									
								</div>
							</div>
							
							
							
						</div>
						
						
						
					</div>  <!-- col-12 끝  -->
					
					<div class="col-12" style="width:358px; padding-left:50px;">
						<h3 class="purchasedetail" style="padding-bottom: 14px; margin:0; visibility: hidden">
							결제 목록
						</h3>
						<div style="border:solid; border-width: 1px;border-color: #87B4E9;">
							<div style="display: table; padding-top: 12px; padding-bottom: 12px; padding-right: 15px; padding-left:15px; width: 100%">
							
								<div style="display: table-row;">
									<div style="display: table-cell;">
										<i class="fa-solid fa-circle-check" style="color: #87b4e9"></i>
										 <span class="ctchoose"> <span> 1 </span> 권을 선택하셨습니다. </span>
									</div>
								</div>
								
								<div style="display: table-row; vertical-align: middle; line-height: 35px;">
									<div style="display: table-cell; vertical-align: middle;">
										<span class="totpurchase">총 주문 금액</span>
										
									</div>
									
									<div style="display: table-cell; vertical-align: middle; text-align: right;">
										<span class="totpurchase1" style="vertical-align: middle; "> <strong>12,000</strong></span>
										<span class="totpurchase1" style="vertical-align: middle; ">원 </span>
									</div>	
								</div>
								
								<div style="display: table-row; vertical-align: middle; line-height: 35px;">
									<div style="display: table-cell; vertical-align: middle;">
										<span class="totpurchase">할인 금액 </span>
										
									</div>
									
									<div style="display: table-cell; vertical-align: middle; text-align: right;">
										<span class="totpurchase1" style="vertical-align: middle; "> <strong>12,000</strong></span>
										<span class="totpurchase1" style="vertical-align: middle; ">원 </span>
									</div>	
								</div>
							</div>	
							
							<div style="background-color: #ebf6ff">
								<div style="display: table; padding-top: 12px; padding-bottom: 12px; padding-right: 15px; padding-left:15px; width: 100%">
									<div style="display: table-cell; vertical-align: middle;">
										<span class="totpurchase">합계  </span>
										
									</div>
									
									<div style="display: table-cell; vertical-align: middle; text-align: right;">
										<span class="cttotal" style="vertical-align: middle; "> <strong>12,000</strong></span>
										<span class="cttotal" style="vertical-align: middle; ">원 </span>
									</div>	
								</div>
							</div>															
						</div>	
						
						<div class="d-grid">
							<button type="button" class="btn signupbutton" style="margin-top:15px;height: 50px; border-radius: 4px; border: 1px solid #0077d9; background: #1F8CE6;" >소장으로 구매하기 </button>
						</div>
		
					</div>
				</div>
			</div>
		</div>
	</div>
		
		
	
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
	</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
<script src = "/resources/jscript/bookview/openclose.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>
