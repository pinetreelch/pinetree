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
	<input type="hidden" name = "tdbkSeq" id="tdbkSeq" />
	
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
		 					<form action="">
		 						<input type="text" class="form-control inputclass" placeholder="" aria-label="First name" style="width:250px;">
		 					</form>
		 				</li>
		 				<li style="display: inline-block;">
		 					<a href="">
		 						<i class="fa-solid fa-book-open fa-xl" style="width: 50px; color: black;"></i>
		 					</a>
		 				</li>
		 				<li style="display: inline-block;">
		 					<a href="./myPageList.html">
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
						<div id="xxx" class="border-bottom" style="padding-top:17px; padding-bottom:17px; width: 130px;">
							<!-- <a href="" class="menutitle1" style="color: #40474D">
								<span style="display:inline-block; padding-right: 5px;">
									<i class="fa-solid fa-house"></i>
								</span>
								마이리디 홈
							</a> -->
							
							<a href="">
								<i class="fa-solid fa-house"></i>
								<span style="padding-left: 5px;">마이리디 홈</span>
							</a>
						</div>

						<div class="border-bottom" style="width: 135px; padding-top: 17px; padding-bottom: 19px;">
							<div class="menutitle2">
								<i class="fa-solid fa-book-open"></i>
								<span style="margin-left: 5px;">책</span>
							</div>
							
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 선호작품</div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 최근 조회한 작품</div>
							<div class="menutitle34" style="padding-top:14px; padding-left: 22px;"> <a href="" style="color:#1F8CE6">위시 리스트</a></div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 독서노트</div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 신간알림</div>
							<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 이벤트 알림 설정</div>
						</div>
						
						<div class="border-bottom" style="width: 135px; padding-top: 17px; padding-bottom: 19px;">
							<div class="menutitle2">
								<i class="fa-solid fa-id-card"></i>
								<span style="margin-left: 5px;">구매헤택</span>
							</div>
							
							<div class="menutitle34" style="padding-top:14px; padding-left: 22px;"><a href="./purchasehistoryView.html" style="color: black;">결제 내역</a> </div>
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
								 <a href="./myPageView.html" class="menutitle3">정보 변경</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-8" style="width: 721px;">
				<div class="row">
					<div class="col-12">
						<h3 class="wishlisttitle">
							위시리스트
							<span class="wishlistsubtitle"> ${fn:length(wishlist) }</span>
						</h3>
						
						<div class="d-grid"style="padding-top: 10px;">
							<ul class="border-bottom border-2 wishul" style="padding-left:0; ;float:left; display:block; height: 30px; margin-bottom:0;">
								<li id="wishli" style="float:left; border-bottom: 2px solid black; height:30px;"><a href="">등록순</a></li>
								<li id="wishli" style="float:left; padding-left: 15px;">인기순</li>
								<li id="wishli" style="float:left; padding-left: 15px;">낮은 가격순</li>
								<li id="wishli" style="float:left; padding-left: 15px;">할인 도서</li>
							</ul>
						</div>
						
						<div class="border-bottom"style="padding-top:15px; padding-bottom:15px;">
							<div class="form-check" style="display: inline-block;">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="width: 18px; height: 18px;">
							  <label class="form-check-label marketad" for="flexCheckDefault" >
							    전체 선택
							  </label>
							</div>
							
							<button class="movetocart" style="background-color:white;border: 1px solid #d1d5d9; border-radius: 4px; float: right; width: 68px; height: 28px;padding:7px; margin-left: 5px;">선택 삭제</button>
							<button class="movetocart" style="background-color:white;border: 1px solid #d1d5d9; border-radius: 4px; float: right; width: 104px; height: 28px;padding:7px;">선택 카트로 이동</button>
						</div>
						
						<c:forEach items="${wishlist }" var="wishlist" varStatus="status">
						<c:set var = "count" value="0"></c:set>
						<div class="border-bottom" style="height: 124px;">
							<div style="display:inline-block;">
								<div class="form-check" style="float:left; padding-top: 50px; padding-bottom: 30px;">
							  		<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="width: 18px; height: 18px;">
							  	</div>
							  	
							  	<div style="float:left; padding-top: 20px; padding-bottom: 20px; ">
							  		<a href="../book/bookView.html">
							  			<img class="border" src="${wishlist.urllarge }" alt="" style="width: 60px; height: 84px;"/>
							  		</a>
							  	</div>
							  	
							  	<div style="float:left; padding-top: 15px; padding-bottom: 25px; padding-left: 15px; width: 400px;">
							  		<span class="wishlistbktitle">${wishlist.tdbkBookTitle }</span>
							  		<p style="padding-top: 2px;">
							  			<span class="wishlistauthor">
							  				<c:forEach items="${authorlist}" var="authorlist" varStatus="status">							  						
							  					<c:if test="${authorlist.tradBook_tdbkSeq eq wishlist.tradBook_tdbkSeq }">
							  						<c:set var = "count" value = "${count + 1 }"></c:set>
							  						<c:if test="${count <= 2 }">	
							  							<c:if test="${count eq 2 }">,</c:if>							  						
								  						${authorlist.tdauName }
								  						
							  						</c:if>						  						
							  					</c:if>
							  				</c:forEach>
							  				<c:if test="${count > 2 }">외 ${count-2 }명</c:if>
							  			</span>
							  		</p>
							  		
									<button class="movetocart" style="background-color:white;border: 1px solid #d1d5d9; border-radius: 4px;  width: 96px; height: 30px;padding:7px;"> 카트로 이동</button>
							  		<button onclick="deletebtn(${wishlist.tradBook_tdbkSeq}); return false;" class="movetocart" style="background-color:white;border: 1px solid #d1d5d9; border-radius: 4px;  width: 60px; height: 30px;padding:7px; "> 삭제</button>
							  	</div>
							  	
							  	<div style="float:left; padding-top: 15px; padding-bottom: 25px; padding-left: 15px; width: 209px;">
							  		<p style="padding-top: 30px; padding-left: 80px;">							  			
							  			<span class="wishlistauthor3" > 소장</span>
							  			<span class="wishlistauthor2" > <fmt:formatNumber value="${wishlist.tdbkSales }" pattern="#,###"/>  원</span>
							  		</p>	
							  	</div>
							</div>
						</div>
						</c:forEach>
	
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
	
	var tdbkSeq = $("input:hidden[name=tdbkSeq]");
	
	
	

	deletebtn = function (bookSeq){
		tdbkSeq.val(bookSeq);
		alert("d"+tdbkSeq.val());
		return false;
	}

</script>


</body>
</html>
