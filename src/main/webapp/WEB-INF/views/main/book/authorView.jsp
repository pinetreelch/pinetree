<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title> 저자  상세보기  </title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/bookListcss.css" />	 
</head>
<body>
<form method="post" name="form">
	<input type="hidden" id="tdbkSeq" name="tdbkSeq" value="${authorname.tdbkSeq }"/>
	<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="${sessSeq}"/>
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
		 			<div style="padding-top: 30px; display: inline-block;">
					 	<a  href="/main/" style="display: inline-block">	
						 	<img src="https://active.ridibooks.com/navbar/icons/web/ridi.f50c563403f615565a7328888ba19f87.svg"  style="width:61px; height:23px; padding: 0px;">
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
				 						<i class="fa-solid fa-book-open fa-xl" style="width: 50px;"></i>
				 					</a>
				 				</li>
				 				
				 				<li style="display: inline-block;">
				 					<i class="fa-solid fa-cart-shopping fa-xl" id="cart" name= "cart" style="padding-top:30px; width: 50px; cursor: pointer;" onclick="clickcart(${sessSeq})"></i>				 				
				 				</li>	
				 				
				 				<li style="display: inline-block;">
				 					
				 						<i class="fa-regular fa-user fa-xl" style="padding-top:30px;" "></i>
				 				
				 				</li>
						 	</ul>
					 	</nav>
					 	
					 	<c:if test="${fn:length(cartlist) > 0}">
							<div id="circlediv">
								${fn:length(cartlist)}
							</div>	
						</c:if>
				</div>
		</div>
	</div>
	
	<div class=" conatiner bodydpurchase">
		<div class="row border border-5" style="margin-top:30px;">
			<div class="col-12">
				<div style="padding-left:20px; padding-top: 20px; padding-right:20px;">
					<div class="border-bottom border-1" >	
							<span class="authorprofileName">${authorname.tdauName }</span>
							<c:if test="${authorname.tdauNameEng ne null }"> ${authorname.tdauNameEng }</c:if> <br>
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
							<c:forEach items="${authorlist }" var = "authorlist" varStatus="status">
								<c:if test="${authorlist.tdbkSeq eq authorname.tdbkSeq }">
									${authorlist.tdauIntro }
									
									<c:if test="${authorlist.tdauIntro2 ne null}">
										${authorlist.tdauIntro2 }
									</c:if>
									
								</c:if>
								<%-- <c:if test="${authorlist.tdauIntro2 ne null}">
									${authorlist.tdauIntro2 }
								</c:if> --%>
							</c:forEach> 		
						</p>
						
						<p class="authorcontent" style="margin:0;">
							
							<c:if test= "${fn:length(translatorlist)>0}">
								<c:forEach items="${translatorlist }" var="translatorlist" varStatus= "status">
									${translatorlist.tdauIntro }
									
									
								</c:forEach>
							</c:if>
							
	         	         </p>
	         	         
	         	         <p class="authorbr">
	         	         	&lt; 
	         	         		${authorname.tdbkBookTitle }
	         	         	 &gt; 
	         	         	 
	         	         	 저자소개
	         	         </p>
         	         </div>
				</div>
			</div>
		</div>
	
		
		<div class="row" style="padding-bottom:50px; padding-top:30px;">
			<div class="col-12">
				<div style="display: table; width: 100%;">
					<h4 class="authorbooktot" style="padding-left: 16px">총 <span>1</span>종</h4>
					<!-- <ul class="authortablealign">
						<li>
							<a href=""><span>인기순</span></a>
						</li>
						<li>
							<a href=""><span id = "rrreec" >최신순</span></a>
						</li>
						<li>
							<a href="" ><span id = "rrreec" >평점순</span></a>
						</li>
					</ul> -->
				</div>
				
				<div class="border-bottom">
					<div style="display: table; width: 100%;">
					
					<c:forEach items="${booklist}" var="booklist" varStatus="status">
						<div class = "gotobook" style="display: table-cell; padding: 20px 15px; padding-right:0; vertical-align: top; width:125px; cursor: pointer;">
							<img class="border" src="${booklist.urllarge }" alt="" style="width:110px; height: 167px;"/>
						</div>
						
						<div style="display: table-cell; padding: 20px 15px; vertical-align: top;">
						
						
							<p class="authordetailbook"> <span class="gotobook" style="cursor:pointer;">${booklist.tdbkBookTitle }</span> </p>
							
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
										<c:forEach items="${authorlist }" var = "authorlist" varStatus = "status">
											
											<span class= "authorviewul2" <c:if test="${!status.last }"> style="margin-right: -10px;" </c:if> <c:if test="${status.last }"> style="margin-right: -5px;" </c:if>>
												
												<c:if test="${authorname.tdbkSeq eq authorlist.tdbkSeq }">
													<c:set var = "count" value= "${count + 1}"></c:set>
														&nbsp; ${authorlist.tdauName } &nbsp; 
												</c:if>
											</span>									
										</c:forEach>
										
										<c:if test="${count > 2}">
											<span class= "authorviewul2">
												외 ${count - 2}명 												
											</span>
										</c:if>
									</li>
									
									<c:if test="${fn:length(translatorlist) > 0 }">
										<li style="margin-right: -5px;">
											<span class= "authorviewul2">
											<c:forEach items="${translatorlist}" var = "translatorlist" varStatus="status">
												${translatorlist.tdauName }
											</c:forEach>
												<span>역</span>
											</span>
										</li>
									</c:if>
									
									<li style="margin-right: -5px;">
										<span class= "authorviewul2">
											${booklist.tdbkPublisher }
										</span>
									</li>
									
									<li style="margin-right: -5px;">
										<span class= "authorviewul2">
											${booklist.tdbkGenre}
										</span>
									</li>
								</ul>
							</div>
							
							<p class="authorviewbookcontent gotobook underline1" style="cursor: pointer;">
								${booklist.tdbkIntro3 }
							</p>
							
							<p>
								<span class="authorviewsojang">판매가 </span>
								<span class="authorviewsojang2">
										<fmt:formatNumber value="${booklist.tdbkSales }" pattern="#,###"/>
									<span>원</span>
								</span>
								
							</p>
						</div>
						</c:forEach>		
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
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
 <script>
 	var form = $("form[name=form]");
 	
 	$(".gotobook").click(function(){
 		form.attr("action", "/main/bookView").submit();
 	})
 </script>
 </form>
</body>
</html>
