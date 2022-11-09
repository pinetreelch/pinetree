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
	<input type="hidden" name = "ifmmSeq" value="${sessSeq}"/>		
	
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
										
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row" style="padding-top: 50px">
					<div class="col-12">
							<ul style="float:left; padding:0;">
								<li class="recentbook" style="float:left; padding-right: 14px;"> 내 서재 </li> 
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

<!-- footer -->
<%@include file = ".././common/xdmin/includeV1/footer.jsp" %>
<!-- footer -->
	
<%@include file = ".././common/xdmin/includeV1/myPageBarScript.jsp" %>
</body>
</html>
