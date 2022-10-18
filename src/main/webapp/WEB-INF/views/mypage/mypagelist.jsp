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
	  <link rel="stylesheet" href="/resources/css/bookListcss.css" />	 
</head>
<body>
	<form name="form" method = "post">
	<input type="hidden" name = "mainkey" id="mainkey"/>
	<input type="hidden" name = "sessSeq" id="sessSeq" value="${sessSeq}"/>
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
				 					<i class="fa-solid fa-cart-shopping fa-xl" style="padding-top:30px; width: 50px;"></i>
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
							<a href="" class="menutitle1" style="color: #1F8CE6">
							<div style="display:inline-block; padding-right: 5px;"><i class="fa-solid fa-house"></i></div>
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
							<div class="menutitle34" style="padding-top:14px; padding-left: 22px;"> <a href="/member/wishlist">위시 리스트</a></div>
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
								 <span style="cursor: pointer;" class="menutitle3" id="myinfo" onclick="myinfo()">정보 변경</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-8" style="width: 721px;">
				<div class="row border border-dark border-3 border-opacity-75" style="width:721px; height: 336px;">
					<div class="col-12" style="background-color: #EBF6FF; width:189.35px; height: 330px;">
						<div class="row" style="padding-top:24px; padding-bottom: 20px; padding-right: 20px; padding-left: 20px">
							<div class="col-12">
								<div style="height: 105px;">
									<div class="idshow">${memberinfo.ifmmId }</div>
									<div class="emailshow">${memberinfo.ifmmEmail}</div>
								</div>
								<div style="height: 145px;">
								</div>
								<div>
									<button class="logoutbutton border border-2" style="background-color:#EBF6FF; border:none; padding-top: 6px; padding-bottom: 6px;">로그아웃</button>
								</div>
							</div>
						</div>
					</div> 
					<div class="col-12" style="width:522px; height: 336px; padding-top: 24px; padding-bottom:20px;">
						<div class="row" style="" >
							<div class="col-12">
								<ul  class="border-bottom border-1" style="padding-left:0; float:left; text-align: center; height: 146px; margin: 0;"> 
									<li style="float:left; width: 160px;">
										<div class="border border-dark border-2" style="border-radius: 50%; width: 30px; height: 30px; display:inline-block; text-align: center;">
											<i class="fa-solid fa-won-sign fa-xs" style="margin-top: 13px;"></i>
										</div>
										
										<h3 class="litem" style="padding-top:10px;">
											 리디 캐쉬
										</h3>
										
										<h3 class="cashleft" style="padding-top:3px;">
											 <span>0</span>
											 <span>원</span>
										</h3>
										
										<h3 class="cashhistory" style="padding-top:10px;">
											 충전 내역 >>
										</h3>
									</li>
									<li style="float:left;  width: 160px;">
										<div class="border border-dark border-2" style="border-radius: 50%; width: 30px; height: 30px; display:inline-block; text-align: center;">
											<i class="fa-solid fa-p  fa-xs" style="margin-top: 13px; margin-left: 2px;"></i>																						
										</div>
										
										<h3 class="litem" style="padding-top:10px;">
											 리디 포인트
										</h3>
										
										<h3 class="cashleft" style="padding-top:3px;">
											 <span>0</span>
											 <span>원</span>
										</h3>
										
										<h3 class="cashhistory" style="padding-top:10px;">
											 충전 내역 >>
										</h3>
									</li>
									<li style="float:left;  width: 160px;">
										<div style=" display:inline-block; text-align: center; height: 30px;">
											<i class="fa-solid fa-ticket fa-xl" style="margin-top: 13px; margin-left: 2px;"></i>
										</div>
										
										<h3 class="litem" style="padding-top:10px;">
											 쿠폰
										</h3>
										
										<h3 class="cashleft" style="padding-top:3px;">
											 <span>0</span>
											 <span>개</span>
										</h3>
										
										<h3 class="cashhistory" style="padding-top:10px;">
											 쿠폰 등록 >>
										</h3>
									</li>
								</ul>
								
								<ul  style="padding-left:0; float:left; text-align: center; height: 146px; margin: 0; padding-top: 24px;">
									<li style="float:left; width: 160px;">
										<div style=" width: 30px; height: 30px; display:inline-block; text-align: center;">
											<svg width="2em" height="2em" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M3.207 4.083c0-.483.392-.875.875-.875h5.833c.484 0 .875.392.875.875v19.834a.875.875 0 01-.875.875H4.082a.875.875 0 01-.875-.875V4.083zm1.75.875v18.084H9.04V4.958H4.957z" fill="currentColor"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M9.04 4.083c0-.483.39-.875.874-.875h5.833c.484 0 .875.392.875.875v19.834a.875.875 0 01-.875.875H9.914a.875.875 0 01-.875-.875V4.083zm1.75.875v18.084h4.082V4.958H10.79z" fill="currentColor"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M15.195 7.343a.875.875 0 01.619-1.071l5.634-1.51a.875.875 0 011.072.619l4.53 16.903a.875.875 0 01-.62 1.072l-5.634 1.51a.875.875 0 01-1.072-.62L15.195 7.344zm1.917.392L21.19 22.95l3.944-1.057-4.077-15.213-3.944 1.056z" fill="currentColor"></path></svg>
										</div>
										
										<h3 class="litem" style="padding-top:10px;">
											 내 서재
										</h3>
										
										<h3 class="cashleft" style="padding-top:3px;">
											 <span>59</span>
											 <span>권</span>
										</h3>
										
									</li>
									<li style="float:left;  width: 160px;">
										<div style=" width: 30px; height: 30px; display:inline-block; text-align: center;">
											<svg width="2em" height="2em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M.25 3A.75.75 0 011 2.25h2.838c.34 0 .639.23.725.56l.751 2.866a.75.75 0 01.227-.035H22a.75.75 0 01.707 1l-3.405 9.61a.75.75 0 01-.707.499H7.243a.75.75 0 01-.725-.56L3.259 3.75H1A.75.75 0 01.25 3zm5.448 4.141l2.124 8.109h10.243l2.873-8.109H5.699zM9 20.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zm9.5 1.5a1.5 1.5 0 100-3 1.5 1.5 0 000 3z" fill="currentColor"></path></svg>
										</div>
										
										<h3 class="litem" style="padding-top:10px;">
											 카트
										</h3>
										
										<h3 class="cashleft" style="padding-top:3px;">
											 <span>2</span>
											 <span>권</span>
										</h3>
										
									</li>
									<li id="wishl" style="float:left;  width: 160px;">
										<a href="./wishlistView.html">
											<div style=" display:inline-block; text-align: center; height: 30px;">
											<i class="fa-regular fa-heart fa-xl" style="margin-top: 15px; margin-left: 2px;"></i>
										</div>
										
										<h3 class="litem" style="padding-top:10px;">
											 위시리스트
										</h3>
										
										<h3 class="cashleft" style="padding-top:3px;">
											 <span>0</span>
											 <span>개</span>
											</h3>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row" style="padding-top: 50px">
					<div class="col-12">
							<ul style="float:left; padding:0;">
								<li class="recentbook" style="float:left; padding-right: 14px;">최근 조회한 작품</li>
								<li style="float:left; width:450px;"><hr class="border border-dark border-2 border-opacity-75"/></li>
								
							</ul>											
					</div>
				</div>
				
				<div class="row">
					<div class="col-12">	
						<div class="row"  style="padding-top:20px;">
							<div class="col-12" style="width:144px;">
								<div style="text-align: center;">
									<a href="../book/bookView.html"><img src="http://image.kyobobook.co.kr/images/book/large/730/l9791170521730.jpg" class="border" alt="" style="width:110px; height: 167px;" /></a>
								</div>
								<a href="../book/bookView.html"><span class="d-block mypagebooktitle">미키7</span></a>
								<span class="mypagebookauthor" >에드워드 에슈턴</span>
							</div>

							<div class="col-12" style="width:144px;">
								<div style="text-align: center;">
										<img src="http://image.kyobobook.co.kr/images/book/large/870/l9788997396870.jpg" alt="" style="width:110px; height: 167px;" />
								</div>
								<span class="d-block mypagebooktitle">오은영의 화해</span>
								<span class="mypagebookauthor" >오은영</span>
							</div>

							<div class="col-12" style="width:144px;">
								<div style="text-align: center;">
										<img src="http://image.kyobobook.co.kr/images/book/large/362/l9788932922362.jpg" alt="" style="width:110px; height: 167px;" />
								</div>
								<span class="d-block mypagebooktitle">행성</span>
								<span class="mypagebookauthor" >베르나르 베르베르</span>
							</div>

							<div class="col-12" style="width:144px;">
								<div style="text-align: center;">
										<img src="http://image.kyobobook.co.kr/images/book/large/729/l9791165343729.jpg" alt="" style="width:110px; height: 167px;" />
								</div>
								<span class="d-block mypagebooktitle">달라구트 꿈 백화점 2</span>
								<span class="mypagebookauthor" >이미예</span>
							</div>

							<div class="col-12" style="width:144px;">
								<div style="text-align: center;">
										<img src="http://image.kyobobook.co.kr/images/book/large/208/l9788950996208.jpg" alt="" style="width:110px; height: 167px;" />
								</div>
								<span class="d-block mypagebooktitle">돈의 흐름</span>
								<span class="mypagebookauthor" >전인구</span>
							</div>
							
											
						</div>
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
	
	myinfo = function(){
		mainkey.val(sessSeqVal);
		
		
		form.attr("action",goUrlInfo).submit();
	}
	
	
</script>
</body>
</html>
