<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>홈페이지 </title>
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
						
						<c:choose>
							<c:when test ="${sessSeq eq null}">
								<a class="heading float-end" href="/login/">&nbsp;<b>로그인</b> </a>
									<span class="heading float-end"> ⦁&nbsp;</span>
								<a class="heading float-end" href="/login/signup1/"> <b>회원가입</b>&nbsp;&nbsp;</a>
									<span class="heading float-end"> ⦁&nbsp;</span>
								<a class="heading float-end" href="/codeGroup/codeGroupList/"> <b>관리자 페이지 </b>&nbsp;&nbsp;</a>
							</c:when>
							
							<c:otherwise>
								 <span class="heading float-end" style = "cursor: pointer;" id = "logoutBtn"><b>로그아웃</b></span> 
								 	<span class="heading float-end"> ⦁ &nbsp;</span>
								 <a class="heading float-end" href="/codeGroup/codeGroupList/"> <b>관리자 페이지 </b>&nbsp;&nbsp;</a>
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
					 	<a  href="" style="display: inline-block">	
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
		
		<div class="row" style="padding-top: 30px;">
			<div class="col">
					<span class="bookhead">도서</span>
					<a class="heading float-end" href="" style="padding-top: 15px; color: black;">
						<i class="fa-solid fa-list"></i> 
						<span class="category">&nbsp;카테고리&nbsp;</span>
					</a>
				<hr  style="background-color: #F5F5F5;">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<ul style="list-style: none; padding-left:0px;">
					<li style="display: inline-block;">
						<button class="recommend"><b>추천</b></button>
					</li>
					<li style="display: inline-block;">
						<button class="best"><b>베스트</b></button>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="row">
			<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
				  <div class="carousel-indicators">
				    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
				    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
				  </div>
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <a href=""><img src="/resources/images/cat2.png" class="d-block" alt="..." style="width:1150px; height: 400px;"></a>
				      <div class="carousel-caption d-none d-md-block">
				      	<span class="caroubox">ONLY</span> <br></br>
				        
				        	<span class="contentfill" style="position: relative; right:360px;">우리가 상상하는</span><br />
				        	<span class="contentfill" style="position: relative; right:374px;" >이야기의 미래</span> <br />
				        	<span class="caroup" style="position: relative; right: 353px;">우주라이크 소설 7월 신작 OPEN!</span>
				      </div>
				    </div>
				    <div class="carousel-item">
				      <img src="https://active.ridibooks.com/ridibooks_banner/1657785873881_MjIwNzA3.jpg" class="d-block" alt="..." style="width:1150px; height: 400px;">
				      <div class="carousel-caption d-none d-md-block">
				        <span class="caroubox">ONLY</span> <br></br>
				        
				        	<span class="contentfill" style="position: relative; right:400px;">리디 북스</span><br />
				        	<span class="contentfill" style="position: relative; right:334px;" >8월 업데이트 공개!</span> <br />
				        	<p class="caroup1" style="position: relative; right: 321px; padding-top: 10px;">새로운 도서들의 업데이트를 확인하세요!</p>
				      </div>
				    </div>
				    <div class="carousel-item">
				      <img src="/resources/images/ipji.png" class="d-block" alt="..." style="width:1150px; height: 400px;">
				      <div class="carousel-caption d-none d-md-block">
				       <span class="caroubox">마감임박</span> <br></br>
				        
				        	<span class="contentfill" style="position: relative; right:345px;">부의 계급을 높여줄</span><br />
				        	<span class="contentfill" style="position: relative; right:394px;" >투자 가이드!</span> <br />
				   
				        	<p class="caroup1" style="position: relative; right: 377px; padding-top: 10px;">한정 부록 <입지 족보>포함</p>
				      </div>
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
			</div>
		</div>
		
		<div class="row">
			<div class="d-flex col justify-content-center" style="width:1150px; height: 94px; padding-top:30px;">
				<a href="">
					<img src="/resources/images/n1.png" alt="" style="width: 70px; height: 70px; margin-right: 20px; margin-left: 20px;"/><br />
					<span class="d-flex justify-content-center menuicon">신간</span>
				</a>

				<a href="">
					<img src="/resources/images/best.jpg" alt="" style="width: 70px; height: 70px; margin-right: 20px; margin-left: 20px;" />
					<span class="d-flex justify-content-center menuicon">베스트셀러</span>
				</a>
				<a href="">
					<img src="/resources/images/weeklybest.png" alt="" style="width: 70px; height: 70px; margin-right: 20px; margin-left: 20px;"/>
					<span class="d-flex justify-content-center menuicon">위클리베스트</span>
				</a>
			</div>
		</div>
		<br />
		<br />
		
		<section> 오늘 리디의 발견  </section>
			<div class="row">
				<div class="col-4" style="padding-top: 30px;">
					<div id = "climate" style= "cursor:pointer;">	
						<div style="text-align:center; background: linear-gradient(#ffffff 50%, #880506  50%); border-radius: 10px; ">
											<img src="https://img.ridicdn.net/cover/3120000561/large#1" alt="" class="imgslide" style="width: 104px; height: 150px; border-radius:5px; "/>
						</div>
						<br />
						<div style="text-align:center;">
							<span class="booklistspan">우리에게 남은 시간은 얼마일까?</span><br />
							<span class="booksublistspan">기후위기? 인류위기!!!</span>
						</div>
					</div>
				</div>
				<div class="col-4" style="padding-top: 30px;">
					<a href="">
						<div style="text-align:center; background: linear-gradient(#ffffff 50%, #590916  50%); border-radius: 10px; ">
											<img src="https://img.ridicdn.net/cover/4409000010/large#1" alt="" class="imgslide" style="width: 104px; height: 150px; border-radius:5px; "/>
						</div>
						<br />
						<div style="text-align:center;">
							<span class="booklistspan">  &lt; 고구려 &rt; 김진명의 첫 에세이 <br /> 삶에 대한 작가의 고찰</span> <br />
							<span class="booksublistspan">때로는 행복대신 불행을 택하기도 한다</span>
						</div>
					</a>
				</div>
				<div class="col-4" style="padding-top: 30px;">
					<a href="">
						<div style="text-align:center; background: linear-gradient(#ffffff 50%, #04285C  50%); border-radius: 10px; ">
											<img src="https://img.ridicdn.net/cover/111038339/large#1" alt="" class="imgslide" style="width: 104px; height: 150px; "/>
						</div>
						<br />
						<div style="text-align:center;">
							<span class="booklistspan"> 기획, 출간까지 10여년, 한국사 통사의 정수를 담다</span><br />
							<span class="booksublistspan">시민의 한국사 세트</span>
						</div>
					</a>
				</div>
			</div>
			
		<section style="padding-top: 50px; padding-bottom: 6px;">지금 많이 읽고 있는 책</section>
			<div class="row" style="padding-top: 20px;">
				<div class="col-4 d-flex " style="width:383px; height: 116px; ">
						<div style="width:83px; height: 116px;   text-align: center; padding-right: 2px;">
							<a href=""><img src="https://img.ridicdn.net/cover/606002388/small#1" alt="" style="width:80px; height: 109.33px; border-radius:7px;"/></a>
						</div>
						<div style="width:83px; height: 116px;  text-align: center;padding-right: 50px; padding-right: 2px;">
								<span style="display: inline-block; margin-top: 50px;">1</span>
						</div>
						<div  class="d-flex" style="width:174px; height: 116px; ">
							<div  class=" align-self-center">
								<a href=""><span class="booklistspan">역행자</span></a><br />
								<a href=""><span class="booksublistspan1">자청</span></a><br />
								<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
							</div>
						</div>
				</div>
				<div class="col-4 d-flex " style="width:383px; height: 116px; ">
						<div style="width:83px; height: 116px;   text-align: center; padding-right: 2px;">
							<a href=""><img src="https://img.ridicdn.net/cover/1648000401/small#1" alt="" style="width:80px; height: 109.33px; border-radius:7px;"/></a>
						</div>
						<div style="width:83px; height: 116px;  text-align: center;padding-right: 50px; padding-right: 2px;">
								<span style="display: inline-block; margin-top: 50px;">4</span>
						</div>
						<div  class="d-flex" style="width:174px; height: 116px; ">
							<div  class=" align-self-center">
								<a href=""><span class="booklistspan">달라구트 꿈 백화점 2</span></a> <br />
								<a  href=""><span class="booksublistspan1">이미예</span></a> <br />
								<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
							</div>
						</div>
				</div>
				<div class="col-4 d-flex " style="width:383px; height: 116px; ">
						<div style="width:83px; height: 116px;   text-align: center; padding-right: 2px;">
							<img src="https://img.ridicdn.net/cover/682001565/small#1" alt="" style="width:80px; height: 109.33px; border-radius:7px; border-color: #787878; border: solid; border-width:1px;"/>
						</div>
						<div style="width:83px; height: 116px;  text-align: center;padding-right: 50px; padding-right: 2px;">
								<span style="display: inline-block; margin-top: 50px;">7</span>
						</div>
						<div  class="d-flex" style="width:174px; height: 116px; ">
							<div id="ll" class=" align-self-center">
								<a href="book/bookdetail"><span class="booklistspan">미키7</span></a><br />
								<a  href="./authorView.html"><span class="booksublistspan1">에드워드 애슈턴</span></a><br />
								<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
							</div>
						</div>
				</div>
			</div>
			
			<div class="row" style="padding-top: 20px;">
				<div class="col-4 d-flex " style="width:383px; height: 116px; ">
						<div style="width:83px; height: 116px;   text-align: center; padding-right: 2px;">
							<img src="https://img.ridicdn.net/cover/1176000033/small#1" alt="" style="width:80px; height: 109.33px; border-radius:7px;"/>
						</div>
						<div style="width:83px; height: 116px;  text-align: center;padding-right: 50px; padding-right: 2px;">
								<span style="display: inline-block; margin-top: 50px;">2</span>
						</div>
						<div  class="d-flex" style="width:174px; height: 116px; ">
							<div  class=" align-self-center">
								<a href=""><span class="booklistspan">개정판 ㅣ 하얀 늑대들</span></a> <br />
								<a href=""><span class="booksublistspan1">윤현승</span></a> <br />
								<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
							</div>
						</div>
				</div>
				<div class="col-4 d-flex " style="width:383px; height: 116px; ">
						<div style="width:83px; height: 116px;   text-align: center; padding-right: 2px;">
							<img src="https://img.ridicdn.net/cover/3306000090/small#1" alt="" style="width:80px; height: 109.33px; border-radius:7px;"/>
						</div>
						<div style="width:83px; height: 116px;  text-align: center;padding-right: 50px; padding-right: 2px;">
								<span style="display: inline-block; margin-top: 50px;">5</span>
						</div>
						<div  class="d-flex" style="width:174px; height: 116px; ">
							<div  class=" align-self-center">
								<a href=""><span class="booklistspan">개정 번역판 ㅣ 해리 포터와...</span></a><br />
								<a href=""><span class="booksublistspan1">조앤.K.롤링</span></a><br />
								<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
							</div>
						</div>
				</div>
				<div class="col-4 d-flex " style="width:383px; height: 116px; ">
						<div style="width:83px; height: 116px;   text-align: center; padding-right: 2px;">
							<a href=""><img src="https://img.ridicdn.net/cover/222002609/small#1" alt="" style="width:80px; height: 109.33px; border-radius:7px;"/></a>
						</div>
						<div style="width:83px; height: 116px;  text-align: center;padding-right: 50px; padding-right: 2px;">
								<span style="display: inline-block; margin-top: 50px;">8</span>
						</div>
						<div  class="d-flex" style="width:174px; height: 116px; ">
							<div  class=" align-self-center">
								<a href=""><span class="booklistspan">돈의 흐름</span></a><br />
								<a href=""><span class="booksublistspan1">전인구</span></a><br />
								<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
							</div>
						</div>
				</div>
			</div>
			
			<div class="row" style="padding-top: 20px; padding-bottom:30px;">
				<div class="col-4 d-flex " style="width:383px; height: 116px; ">
						<div style="width:83px; height: 116px;   text-align: center; padding-right: 2px;">
							<a href=""><img src="https://img.ridicdn.net/cover/510001099/small#1" alt="" style="width:80px; height: 109.33px; border-radius:7px;"/></a>
						</div>
						<div style="width:83px; height: 116px;  text-align: center;padding-right: 50px; padding-right: 2px;">
								<span style="display: inline-block; margin-top: 50px;">3</span>
						</div>
						<div  class="d-flex" style="width:174px; height: 116px; ">
							<div  class=" align-self-center">
								<a href=""><span class="booklistspan">프로젝트 헤일메리</span></a> <br />
								<a href=""><span class="booksublistspan1">앤디 위어</span></a> <br />
								<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
							</div>
						</div>
				</div>
				<div class="col-4 d-flex " style="width:383px; height: 116px; ">
						<div style="width:83px; height: 116px;   text-align: center; padding-right: 2px;">
							<a href=""><img src="https://img.ridicdn.net/cover/1242001110/small#1" alt="" style="width:80px; height: 109.33px; border-radius:7px;"/></a>
						</div>
						<div style="width:83px; height: 116px;  text-align: center;padding-right: 50px; padding-right: 2px;">
								<span style="display: inline-block; margin-top: 50px;">6</span>
						</div>
						<div  class="d-flex" style="width:174px; height: 116px; ">
							<div  class=" align-self-center">
								<a href=""><span class="booklistspan">행성</span></a><br />
								<a href=""><span class="booksublistspan1">베르나르 베르베르</span></a><br />
								<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
							</div>
						</div>
				</div>
				<div class="col-4 d-flex " style="width:383px; height: 116px;">
						<div style="width:83px; height: 116px;   text-align: center; padding-right: 2px;">
							<a href=""><img src="https://img.ridicdn.net/cover/754031890/small#1" alt="" style="width:80px; height: 109.33px; border-radius:7px; border-color: #787878; border: solid; border-width:1px;"/></a>
						</div>
						<div style="width:83px; height: 116px;  text-align: center;padding-right: 50px; padding-right: 2px;">
								<span style="display: inline-block; margin-top: 50px;">9</span>
						</div>
						<div  class="d-flex" style="width:174px; height: 116px; ">
							<div  class=" align-self-center">
								<a href=""><span class="booklistspan">오은영의 화해</span></a> <br />
								<a href=""><span class="booksublistspan1">오은영</span></a> <br />
								<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
							</div>
						</div>
				</div>
			</div>
			<section style="padding-bottom:16px; ">리디북스 추천도서 ></section>
				<div class="row">
					<div class="col-2">
						<a href=""><img src="https://img.ridicdn.net/cover/3120000561/small?dpi=xxhdpi#1" alt="" style="width:180px; height: 261px; border-radius:5px;" /></a> <br />
						<a href=""><span class="booklistspan"  style="display:inline-block; padding-top:10px;">기후위기?인류위기!!</span></a> <br />
						<a href=""><span class="booksublistspan1">오지은,유혜민,이소연,정은..</span></a> <br />
						<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
						
						</span>
						
					</div>
					<div class="col-2">
						<a href=""><img src="http://image.kyobobook.co.kr/images/book/large/729/l9791165343729.jpg" alt="" style="width:180px; height: 261px; border-radius:5px;" /></a> <br />
						<a href=""><span class="booklistspan"  style="display:inline-block; padding-top:10px;">달러구트 꿈 백화점 2</span></a> <br />
						<a href=""><span class="booksublistspan1">이미예</span></a> <br />
						<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
						
						</span>
						
					</div>
					<div class="col-2">
						<a href=""><img src="http://image.kyobobook.co.kr/images/book/large/730/l9791170521730.jpg" alt="" style="width:180px; height: 261px; border-radius:5px; border-color: #787878; border: solid; border-width:1px;" /></a> <br />
						<a href="./bookView.html"><span class="booklistspan"  style="display:inline-block; padding-top:10px;">미키7</span></a> <br />
						<a href=""><span class="booksublistspan1">에드워드 애슈턴</span></a> <br />
						<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
						
						</span>
						
					</div>
					<div class="col-2">
						<a href=""><img src="http://image.kyobobook.co.kr/images/book/large/362/l9788932922362.jpg" alt="" style="width:180px; height: 261px; border-radius:5px;" /></a> <br />
						<a href=""><span class="booklistspan"  style="display:inline-block; padding-top:10px;">행성 1</span></a> <br />
						<a href=""><span class="booksublistspan1">베르나르 베르베르</span></a> <br />
						<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
						
						</span>
						
					</div>
					<div class="col-2">
						<a href=""><img src="http://image.kyobobook.co.kr/images/book/large/735/l9788925588735.jpg" alt="" style="width:180px; height: 261px; border-radius:5px;" /></a> <br />
						<a href=""><span class="booklistspan"  style="display:inline-block; padding-top:10px;">프로젝트 헤일메리</span></a> <br />
						<a href=""><span class="booksublistspan1">앤디 위어</span></a> <br />
						<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
						
						</span>
						
					</div>
					<div class="col-2">
						<a href=""><img src="http://image.kyobobook.co.kr/images/book/large/208/l9788950996208.jpg" alt="" style="width:180px; height: 261px; border-radius:5px;" /></a> <br />
						<a href=""><span class="booklistspan"  style="display:inline-block; padding-top:10px;">돈의 흐름</span></a> <br />
						<a href=""><span class="booksublistspan1">전인구</span></a> <br />
						<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
						</span>
					</div>
				</div>
		<section style="padding-top: 30px; padding-bottom: 16px;">MD's PICK ></section>
			<div class="row">
				<div class="col-2">
						<a href=""><img src="http://image.kyobobook.co.kr/images/book/large/204/l9791167763204.jpg" alt="" style="width:180px; height: 261px; border-radius:5px;" /></a> <br />
						<a href=""><span class="booklistspan" style="display:inline-block; padding-top:10px;">때로는 행복 대신 불행을 택하기도 한다</span></a> <br />
						<a href=""><span class="booksublistspan1">김진명</span></a> <br />
						<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								
						</span>
					</div>
				<div class="col-2">
						<a href=""><img src="http://image.kyobobook.co.kr/images/book/large/116/l9788959526116.jpg" alt="" style="width:180px; height: 261px; border-radius:5px;" /></a> <br />
						<a href=""><span class="booklistspan"  style="display:inline-block; padding-top:10px;">하얀 늑대들</span></a> <br />
						<a href=""><span class="booksublistspan1">윤현승</span></a> <br />
						<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
						</span>
					</div>
				<div class="col-2">
						<a href=""><img src="http://image.kyobobook.co.kr/images/book/large/716/l9788901260716.jpg" alt="" style="width:180px; height: 261px; border-radius:5px;" /></a> <br />
						<a href=""><span class="booklistspan"  style="display:inline-block; padding-top:10px;">역행자</span></a> <br />
						<a href=""><span class="booksublistspan1">자청</span></a> <br />
						<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
						</span>
					</div>
				<div class="col-2">
						<a href=""><img src="http://image.kyobobook.co.kr/images/book/large/730/l9791170521730.jpg" alt="" style="width:180px; height: 261px; border-radius:5px; border-color: #787878; border: solid; border-width:1px;" /></a> <br />
						<a href=""><span class="booklistspan"  style="display:inline-block; padding-top:10px;">미키7</span></a> <br />
						<a href=""><span class="booksublistspan1">에드워드 애슈턴</span></a> <br />
						<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
						</span>
					</div>
				<div class="col-2">
						<a href=""><img src="http://image.kyobobook.co.kr/images/book/large/870/l9788997396870.jpg" alt="" style="width:180px; height: 261px; border-radius:5px;" /></a> <br />
						<a href=""><span class="booklistspan"  style="display:inline-block; padding-top:10px;">오은영의 화해</span></a> <br />
						<a href=""><span class="booksublistspan1">오은영</span></a> <br />
						<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
						</span>
					</div>
				<div class="col-2">
						<a href=""><img src="http://image.kyobobook.co.kr/images/book/large/697/l2090000115697.jpg" alt="" style="width:180px; height: 261px; border-radius:5px;" /></a> <br />
						<a href=""><span class="booklistspan"  style="display:inline-block; padding-top:10px;">시민의 한국사</span></a> <br />
						<a href=""><span class="booksublistspan1">한국역사연구회</span></a> <br />
						<span>
									<i class="fa-solid fa-star fa-2xs" style="color: #DC3232;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(255)</span>		
								</span>
						</span>
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
  $("#logoutBtn").on("click", function(){
		alert('logout');

		
		$.ajax({ 
			url : "/member/logoutProc",
			
			type : 'post',
			
			data : {
				
			},
			
			success : function(data) {
	
			 	if(data.rt == "success"){			 		
					location.href = "/main/"
				 } else {
					 // by pass
				 }
				
		     },
		          
			error : function(request, status, error){ 
							
				  	console.log("code: " + request.status)	
			        console.log("message: " + request.responseText)
			        console.log("error: " + error);
				 }	     
		});	
	});
  
  $("#climate").on("click", function(){
		location.href = "/book/bookview";
	});
  
  </script>
</body>
</html>
