<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>책 상세보기</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/bookListcss.css" />	 
</head>


<body>
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
					 	<a  href="../../" style="display: inline-block">	
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
	</div>
	
	<div class=" conatiner bodydpurchase">
		<div class="row border border-5" style="margin-top:30px;">
			<div class="col-12">
				<div style="padding-left:20px; padding-top: 20px; padding-right:20px;">
					<div class="border-bottom border-1" >	
							<span class="authorprofileName">에드워드 애슈턴</span>
							<span class="authorprofileName2">Edward Ashton</span><br />
							<button class="alarmnew">+ 작가 신간알림 ⦁ 소식</button>
							
							<p style="padding-top:14px; padding-bottom:20px; margin: 0; text-align:right;">
								
									<span class="authorupdate">
										2022.07.21
									</span>
									
									<span class="authorupdate" style="padding-right: 10px;">
										업데이트
									</span>
									<button class="editrequest">
										<i class="fa-solid fa-pencil"></i>
										작가 프로필 수정 요청
									</button>
							</p>
					</div>
					
					<div style="padding: 20px 0;">
						 <p class="authorcontent">
	                      	에드워드 애슈턴 Edward Ashton<br />
							어느 이탈리아 소시지 회사의 뉴스레터에서부터 《이스케이프 팟(Escape Pod)》, 《아날로그(Analog)》, 《파이어사이드 픽션(Fireside Fiction)》 매거진에 이르기까지 다양한 매체를 통해 여러 단편을 선보였으며 소설 『4월의 사흘(Three Days in April)》』 과 『평범의 종말(The End of Ordinary)』의 작가이기도 하다. <br />
							그는 아내, 여러 명의 딸, 시무룩한 모습이 사랑스러운 개 맥스와 함께 뉴욕 북부의 숲속 오두막(cabin in the woods)에서 살고 있다. (영화 「캐빈 인 더 우즈」 아님.)<br />
							여가 시간에는 암 연구를 하고 침울한 대학원생들에게 양자 물리학을 가르치거나 목공예를 즐긴다.<br />
							<br />
						</p>
						
						<p class="authorcontent" style="margin:0;">
							역자 소개 _배지혜<br />
							뉴욕 시립대 버룩칼리지 경제학과를 졸업했다. 유학 시절 재미있게 읽던 작품을 한국어로 옮기고 싶다는 욕심이 생겼고, 현재 글밥아카데미를 수료한 뒤 바른번역 소속으로 활동중이다. 대표 역서로는 『시체와 폐허의 땅』, 『지속가능한 여행을 하고 있습니다』 등이 있다.
	         	         </p>
	         	         
	         	         <p class="authorbr">
	         	         	&lt; 미키7 &gt; 저자소개
	         	         </p>
         	         </div>
				</div>
			</div>
		</div>
		
		<div class="row" style="padding-bottom:50px; padding-top:30px;">
			<div class="col-12">
				<div style="display: table; width: 100%;">
					<h4 class="authorbooktot" style="padding-left: 16px">총 <span>1</span>종</h4>
					<ul class="authortablealign">
						<li>
							<a href=""><span>인기순</span></a>
						</li>
						<li>
							<a href=""><span id = "rrreec" >최신순</span></a>
						</li>
						<li>
							<a href="" ><span id = "rrreec" >평점순</span></a>
						</li>
					</ul>
				</div>
				
				<div class="border-bottom">
					<div style="display: table; width: 100%;">
					
						<div style="display: table-cell; padding: 20px 15px; padding-right:0; vertical-align: top; width:125px;">
							<a href="./bookView.html">
								<img class="border" src="http://image.kyobobook.co.kr/images/book/large/730/l9791170521730.jpg" alt="" style="width:110px; height: 167px;"/>
							</a>
							
						</div>
						
						<div style="display: table-cell; padding: 20px 15px; vertical-align: top;">
							<p class="authordetailbook"><a href="./bookView.html">미키7</a></p>
							
							<div style="display:table;">
								<ul class="authorviewul"style="padding:0; ">
									<li style="margin-right:-3px;">
										<span style="font-size: 5px; vertical-align: top;">
											<i class="fa-solid fa-star fa-2xs"  style="color: #FA722E; margin-right: -5px;"></i>
											<i class="fa-solid fa-star fa-2xs"  style="color: #FA722E; margin-right: -5px;"></i>
											<i class="fa-solid fa-star fa-2xs"  style="color: #FA722E; margin-right: -5px;"></i>
											<i class="fa-solid fa-star fa-2xs"  style="color: #FA722E; margin-right: -5px;"></i>
											<i class="fa-solid fa-star fa-2xs"  style="color: #FA722E; margin-right: -5px;"></i>
											
										</span>
										
										<span class="authorviewulspan"> 
											<span>35</span>
											명
										</span>
									</li>
										
									<li style="margin-right: -5px;">
										<a href="">
											에드워드 애슈턴
										</a>
									</li>
									
									<li style="margin-right: -5px;">
										<a href="">
											배지혜
											<span>역</span>
										</a>
									</li>
									
									<li style="margin-right: -5px;">
										<a href="">
											황금가지
										</a>
									</li>
									
									<li style="margin-right: -5px;">
										<a href="">
											영미소설
										</a>
									</li>
								</ul>
							</div>
							
							<p class="authorviewbookcontent">
								          &lt;책소개&gt;
							<a href="./bookView.html" style="color:#666666;">
							「기생충」으로 아카데미상을 수상한 봉준호 감독의 차기 SF 영화의 원작!
							복제인간으로 끊임없이 되살아나는 한 사내를 주인공으로, 
							정체성에 대한 철학적 질문과 계급간의 모순을 파고든 SF 장편소설.
							
							"『미키7』은 모험 소설을 가장한 세련된 철학적 풍자다....
							</a>
							</p>
							
							<p>
								<span class="authorviewsojang">소장</span>
								<span class="authorviewsojang2">
									10,500
									<span>원</span>
								</span>
								
							</p>
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
	
			
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
</body>
</html>
