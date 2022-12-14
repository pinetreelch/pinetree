<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>책 상세보기  </title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/bookListcss.css" />	 
</head>
<body>
	<form name= "form" method ="post">
	<input type="hidden" id = "siteadd" name="siteadd">
	<input type="hidden" name = "tdbkSeq" id ="tdbkSeq" value ="${booklist.tdbkSeq }"/>
	<input type="hidden" name = "ifmmSeq" id="ifmmSeq" value ="${sessSeq }"/>
	<input type="hidden" name = "tdbkathSeq" id ="tdbkathSeq" />
	<input type="hidden" name = "tradAuthor_tdatSeq" id ="tradAuthor_tdatSeq" />
	
	<%@include file="../.././common/xdmin/includeV1/header1.jsp" %>
 
	<div class="container bodyd" >
	 	
	 	<%@include file="../.././common/xdmin/includeV1/header2.jsp" %>
		
		<div class="row">
			<div class="col-md-9 border-end" >
				<div class="row" style="padding-top: 40px;">
					<div class="col-md-3" style="padding-left:29px; padding-right:20px;">
						<img class= "border" src="${booklist.urllarge }" alt="" style="width: 200px; height: 312.5px;" />
						<div style="display: relative;  padding-left:29px; padding-top: 8px;">
							<button type="button" class="btn btn-outline-primary preview" style="width:130px;">미리보기</button>
						</div>
					</div>
					<div class="col-md-9">
						<div class="row" style="padding-left:30px;">
							<div class="col-12"></div>
								<div >
									<span class="genre">${booklist.tdbkGenre } </span>
								</div>
								<div>
									<span class="booktitleView"> ${booklist.tdbkBookTitle } </span>
								</div>
								<div>
									<span class="bookSubtitleView"> ${booklist.tdbkSubtitle }</span>
								</div>
								<div style="font-size: 0px; margin-top:10px;">
									<i class="fa-solid fa-star fa-2xs"  style="color: #FA722E; font-size:14px;"></i>
									<i class="fa-solid fa-star fa-2xs" style="color: #FA722E; font-size:14px;"></i>
									<i class="fa-solid fa-star fa-2xs" style="color: #FA722E; font-size:14px;"></i>
									<i class="fa-solid fa-star fa-2xs" style="color: #FA722E; font-size:14px;"></i>
									<i class="fa-solid fa-star fa-2xs" style="color: #FA722E; font-size:14px;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(</span>		
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">255</span>		
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">)</span>		
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">명</span>		
								</div>
								<div>
										
										<c:set var = "listlength" value="${fn:length(authorlist)}"></c:set>
										<c:set var = "tlistlength" value = "${fn:length(translatorlist)}"></c:set>
									<%-- <c:set var = "tname" value = "${translatorlist.tdauName }"></c:set> --%>
										
										<c:choose>
											<c:when test="${listlength > 2 }">
												<c:forEach items="${authorlist}" var="authorlist" varStatus="status1"  >	
													<c:set var = "count" value= "${count + 1}"></c:set>
														<c:if test="${count <= 2 }">
																<c:if test="${count eq 2 }"><span class="bookauthor1">,</span></c:if>
																<span class="bookauthor1"> ${authorlist.tdauName}	</span>
														</c:if>																
												</c:forEach>	
												
												<span class="bookauthor2 ">외 </span>
												<span class="bookauthor1"> <strong>${listlength - 2}</strong>명</span>			
												<span class="bookauthor2">저  </span>
												
												<c:if test="${tlistlength > 0 }">
													<span class="bookauthor2">|</span>
														<c:forEach items="${translatorlist}" var="translatorlist" varStatus="status1"  >	
															<span class="bookauthor1">${translatorlist.tdauName }</span>
														</c:forEach>
													<span class="bookauthor2">역</span>
												</c:if>
												
											</c:when>
											
											<c:when test="${listlength <=2 }">
												<c:forEach items="${authorlist}" var="authorlist" varStatus="status1"  >	
													<c:set var = "count" value= "${count + 1}"></c:set>
														<c:if test="${count <= 2 }">
																<c:if test="${count eq 2 }"><span class="bookauthor1">,</span></c:if>
																<span class="bookauthor1">${authorlist.tdauName}	</span>
														</c:if>																
												</c:forEach>	
												<span class="bookauthor2">저  </span>
												
												<c:if test="${tlistlength > 0 }">
													<span class="bookauthor2">|</span>
														<c:forEach items="${translatorlist}" var="translatorlist" varStatus="status1"  >	
															<span class="bookauthor1">${translatorlist.tdauName }</span>
														</c:forEach>
													<span class="bookauthor2">역</span>
												</c:if>
											</c:when>
										</c:choose>
									<!-- 
										<a href="./authorView.html"><span class="bookauthor1">에드워드 애슈턴</span></a>
										<span class="bookauthor2">저</span>
										<span class="bookauthor2">|</span>
										<span class="bookauthor1">배지혜</span>
										<span class="bookauthor2">역</span> -->
									
								</div>
								<div>
									<span class="bookauthor1"> ${booklist.tdbkPublisher } </span>
									<span class="bookauthor2">출판</span>
								</div>
								<br />
								<div  style="padding-right: 55px;">
									<hr class="border border-secondary border-1 border-opacity-75" />
								</div>
								
								<div style="padding-top: 20px;">
									<table class="table" style="width: 550px;">
											<tr>
												<th class="border-end border-top" style="text-align: center; vertical-align: middle; background-color: #F7FAFC">
													<span class="sojang ">소장</span> 
												</th>
												<td class="border-top">
													<div>
														<span class=" panmae">종이책 정가</span>
														<span class="float-end orgprice">원</span>
														<span class=" float-end orgprice">  <fmt:formatNumber value="${booklist.tdPaperprice }" pattern="#,###"/>  </span>
														
													</div>
													<div>
														<span class="panmae">전자책 정가</span>
														<span class=" float-end orgprice">원</span>
														<span class=" float-end orgprice">
														
															<c:if test="${booklist.tdbkDiscountprice eq null  }">
														 			${booklist.tdbkSales } 
														 	</c:if>
														 	
														 	<c:if test="${booklist.tdbkDiscountprice ne null  }">
														 			${booklist.tdbkDiscountprice }
														 	</c:if>
														 
														 </span>
													</div>
													<div>
														<span class=" panmae">판매가</span>
														<span class=" float-end saleprice">원</span>
														<span class=" float-end saleprice">  <fmt:formatNumber value="${booklist.tdbkSales }" pattern="#,###"/> </span>
													</div>
												</td>
											</tr>
									</table>
								</div>
								
								<c:forEach var="wishlist" items="${wishlist}" varStatus="status">
									<c:if test="${wishlist.tradBook_tdbkSeq eq booklist.tdbkSeq }">
										<c:set var="wishcount" value="${wishcount+1}"></c:set>
									</c:if>
								</c:forEach>
								
								<div style="padding-right: 55px;">
									<input type="hidden" id = "pagetype" name = "pagetype" value ="1">
									<button onclick="buybutton()"  type="button" id="buybtn" class="btn btn-primary float-end sojangbutton" style="width: 112px; height: 48px;" >소장하기</button>
									<button  id= "cartbtn" class="float-end" style="width:48px; height:48px; border:solid 1px; border-color:rgba(0, 0, 0, 0.2); border-radius:5px; background-color: white; margin-right: 5px;">
											<i class="fa-solid fa-cart-shopping fa-lg" style="color: rgba(0, 0, 0, 0.5);"></i>
									</button>
									
									<button onclick="wishbtnclick(${booklist.tdbkSeq }); return false;"  id="wishbtn"  class="float-end" 
											style="width:48px; height:48px;
													 border:solid 1px; border-color:rgba(0, 0, 0, 0.2); border-radius:5px;
													  background-color:white; margin-right: 5px;">
											<c:if test="${wishcount eq 1 }">
												<i id="heart123" class="fa-solid fa-heart fa-lg" style="color: #cf2b5c;"></i>
											</c:if>
											
											<c:if test="${wishcount ne 1 }">
												<i id="heart" class="fa-solid fa-heart fa-lg" style="color: rgba(0, 0, 0, 0.5);"></i>
											</c:if>
									</button>
								</div>
						</div>
					</div>				
				</div>
				
				<div class="row g-0 gy-0">
					<div class="col border border-3  border-opacity-10" style="margin-left: 20px;margin-top: 60px; margin-right:40px; width: 880px; height: 128px;">
						<div class="row g-0 gy-0">
							<div class="col-5">
								<div class="row g-0 gy-0" style="width: 260px; padding-left:26px;  padding-top:10px; ">
									<div class="col-12 " style="width:60px;">
										<span class="publishinginfo">출간정보</span>
									</div>
									<div class="col-12" style="width:170px;line-height:15px; ">
									
										<c:if test="${booklist.tdbkDopType ne null }">
											<span class="publishinginfo2"> ${booklist.tdbkDop }</span>
											<span class="publishinginfo3"> ${booklist.tdbkDopType }</span>	<br />
										</c:if>
										
										<c:if test="${booklist.tdbkDopPtype ne null }">	
											<span class="publishinginfo2">${booklist.tdbkDopPaper }</span>
											<span class="publishinginfo3">${booklist.tdbkDopPtype }</span>
										</c:if>	
									
									</div>
								</div>
								
								<div class="row g-0 gy-0" style="width: 260px; padding-left:26px; padding-top: 10px;">
									<div class="col-12 " style="width:60px;">
										<span class="publishinginfo">파일정보</span>
									</div>
									<div class="col-12" style="width:170px;">
										<span class="publishinginfo2"> EPUB | 18.2MB | 약 17.4만 자</span>
									</div>
								</div>
								
								<div class="row g-0 gy-0" style="width: 260px; padding-left:26px; margin-top: 5px;">
									<div class="col-12 " style="width:60px;">
										<span class="publishinginfo">ISBN</span>
									</div>
									<div class="col-12" style="width:170px;">
										<span class="publishinginfo2"> 9791170521747</span>
									</div>
								</div>
							</div>
							<div class="col-7">
								<div class="row g-0 gy-0" style="width: 400px; padding-left:26px; padding-top:10px; ">
									<div class="col-12 " style="width:60px;">
										<span class="publishinginfo">듣기 기능</span>
									</div>
									<div class="col-12" style="width:300px;">
										<span class="publishinginfo2">
											<i class="fa-solid fa-headphones-simple"></i>
											듣기기능
										</span>
									</div>
									<div class="col-12 " style="width:60px; margin-top: 10px;" >
										<span class="publishinginfo">지원 기기</span>
									</div>
									<div class="col-12" style="width:230px; margin-top: 10px;">
										<span class="publishinginfo2">
											<i class="fa-solid fa-tablet-screen-button"></i>
											PAPER &nbsp;
											<i class="fa-brands fa-apple"></i>
											IOS&nbsp;
											<i class="fa-brands fa-android"></i>
											ANDROID&nbsp;
											<i class="fa-brands fa-windows"></i>
											PC&nbsp;
											<i class="fa-solid fa-circle-xmark"></i>
											MAC
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-12">
						<div class="title_text border-bottom border-2 border-dark border-opacity-50" style="width: 780px; display:inline-block; margin-left: 20px; margin-right:200px; margin-top: 40px; line-height: 40px;">작품 소개</div>
					</div>
					<div class="col-12 title_content" style="width: 780px;  margin-left: 20px; margin-right:200px; margin-top: 40px;">											   
						    	
						    	<p style="line-height: 30px;">
							    	${booklist.tdbkIntro }
								</p>
								
								<p id="toc-content" style="line-height: 30px;">
									${booklist.tdbkIntro2 }
								</p>
								<button class="float-end" style="border:none; background-color: white;">
									<span>
										<a href="javascript:openCloseToc()" class="title_content" style="color: #4076B5;" id="toc-toggle"> 펼쳐보기 </a>
									</span>
								</button>												
					</div>
					
					<c:if test="${booklist.tdbkPusblisherOpinion ne null }">
						<div class="col-12">
							<div class="title_text border-bottom border-2 border-dark border-opacity-50" style="width: 780px; display:inline-block; margin-left: 20px; margin-right:200px; margin-top: 40px; line-height: 40px;">출판사 서평 </div>
						</div>
						
						<div class="col-12 title_content" style="width: 780px;  margin-left: 20px; margin-right:200px; margin-top: 40px;">											   
							    	
							    	<p>
								    	${booklist.tdbkPusblisherOpinion }
									</p>
									
									<p id="toc-content2">
										${booklist.tdbkPusblisherOpinion2 }
									</p>
									
									<button class="float-end" style="border:none; background-color: white;">
										<span>
											<a href="javascript:openCloseToc2()" class="title_content" style="color: #4076B5;" id="toc-toggle2"> 펼쳐보기 </a>
										</span>
									</button>												
						</div>
					</c:if>
					
					<div class="col-12">
						<div class="title_text border-bottom border-2 border-dark border-opacity-50" style="width: 780px; display:inline-block; margin-left: 20px; margin-right:200px; margin-top: 40px; line-height: 40px;">
							저자 프로필
						</div>
					</div>
					
							
					<c:if test="${fn:length(authorlist) > 1 || fn:length(translatorlist) > 0 }">
					<div class="col-12">
						<div class="col-12 title_content" style="width: 780px;  margin-left: 20px; margin-right:200px; margin-top: 10px;">
							<ul class="border-bottom"style="list-style:none; padding-left:0px; padding-top: 5px; padding-bottom:25px; "> 
							
								<li style="float: left">
									<span class="authorprofile" style="margin-right: 7px;">저자</span>
									
									<c:forEach items="${authorlist}" var="authorlist" varStatus="status1">
										<c:if test="${authorlist.tdbkSeq eq booklist.tdbkSeq }">
											<c:set var = "totauthor" value="${totauthor + 1}"></c:set>
										</c:if>
									</c:forEach>
									
									<c:forEach items="${authorlist}" var="authorlist" varStatus="status1">
										
										<span class="authorprofile2
												  <c:if test="${status1.last}"> border-end</c:if>" 
											  style=" <c:choose>
														<c:when test="${status1.last }">
															padding-right: 17px;
														</c:when>
														
														<c:otherwise>
															padding-right: 3px;
														</c:otherwise>
													</c:choose>">
													
												  <a href="">
												  	<c:if test="${authorlist.tdbkSeq eq booklist.tdbkSeq }">
												  		<c:set var ="checknum" value="${checknum + 1 }"></c:set>
												  		${authorlist.tdauName } 
												  		
												  		<c:if test="${totauthor>1 && checknum ne totauthor}">
													  		<span style="padding-left: 3px;">•</span>
													  	</c:if>												  		
												  	</c:if>
												   </a>											  										 
										</span>
									</c:forEach>
								</li>
								
								<c:if test="${ fn:length(translatorlist) > 0}">
								<li style="float: left">
									<span class="authorprofile" style="padding-left: 17px; margin-right: 7px;">번역</span>
									
									<c:forEach items="${translatorlist}" var = "translatorlist" varStatus="status1">
										<span class="authorprofile2" style=" padding-right: 17px;"> ${translatorlist.tdauName} </span>
									</c:forEach>  
								</li>
								</c:if>
							</ul>
						</div>
					</div> 
					</c:if> 
					
					<div class="col-12" style = "padding-top: 20px;">
						<div class="col-12 title_content" style="width: 780px;  margin-left: 20px; margin-right:200px; margin-top: 10px; padding-bottom: 17px;">
							<c:set var="profilecount" value="0"></c:set>
							<c:forEach items="${authorlist}" var="authorlist" varStatus="status1"  >
								<c:if test="${authorlist.tdbkSeq eq booklist.tdbkSeq }">
									<c:if test="${profilecount < 1 }">
										<span class="authorprofileName">
											 	${authorlist.tdauName }
										</span>
										
										<c:set var="profilecount" value="${profilecount +1 }"></c:set>
										 <c:if test="${authorlist.tdauNameEng ne null }">
											<span class="authorprofileName2">
													${authorlist.tdauNameEng}
											</span>
										</c:if> 
									</c:if>	
								</c:if>
							</c:forEach>
							
						</div>
					</div>
					<div class="col-12">
						<div class="col-12 title_content" style="width: 780px;  margin-left: 20px; margin-right:200px; margin-top: 10px; padding-bottom: 17px;">
							=============
						</div>
					</div>
					<div class="col-12">
						<div class="title_text border-bottom border-2 border-dark border-opacity-50" style="width: 780px; display:inline-block; margin-left: 20px; margin-right:200px; margin-top: 40px; line-height: 40px;">
							저자 소개
						</div>
						
						<div class="col-12 title_content" style="width: 780px;  margin-left: 20px; margin-right:200px; margin-top: 10px; padding-bottom: 17px;">
												    	
							    	<p style="line-height: 30px;">
										<c:forEach items = "${authorlist}" var = "authorlist" varStatus = "status">
											<c:if test="${authorlist.tdbkSeq eq booklist.tdbkSeq }">
												${authorlist.tdauIntro}
											</c:if>
										</c:forEach>
									</p>
								
							<c:if test="${ fn:length(authorlist) > 1 || fn:length(translatorlist) > 0  }">	
									<p id="toc-content1" style="line-height: 30px;">
										
										<c:forEach items = "${authorlist}" var = "authorlist" varStatus = "status" begin= "0" end = "0" step = "1">
											${authorlist.tdauIntro2}
										</c:forEach>
									
										<c:forEach items = "${authorlist}" var = "authorlist" varStatus = "status" begin= "1" end = "10" step = "1">
											${authorlist.tdauIntro}
										</c:forEach>
										
										<c:if test="${ fn:length(translatorlist) > 0}">
											<c:forEach items="${translatorlist }" var="translatorlist" varStatus="status">
												${translatorlist.tdauIntro }
											</c:forEach>
										</c:if>
									</p>
							
								<button class="float-end" style="border:none; background-color: white;">
									<span>
										<a href="javascript:openCloseToc1()" class="title_content" style="color: #4076B5;" id="toc-toggle1">펼쳐보기 </a>
									</span>
								</button> 
							</c:if>	
						</div>
						<div class="title_text border-bottom border-2 border-dark border-opacity-50" style="width: 780px; display:inline-block; margin-left: 20px; margin-right:200px; margin-top: 40px; line-height: 40px;">
							목차
						</div>
						<div class="col-12 title_content" style="width: 780px;  margin-left: 20px; margin-right:200px; margin-top: 10px; padding-bottom: 17px;">
									<p>
										${booklist.tdbkToc }
									</p>
							
							<c:if test="${booklist.tdbkToc2 ne null }">	
									<p id="toc-content3">
										${booklist.tdbkToc2 }
									</p>
								<button class="float-end" style="border:none; background-color: white;">
									<span>
										<a href="javascript:openCloseToc3()" class="title_content" style="color: #4076B5;" id="toc-toggle3"> 펼쳐보기 </a>
									</span>
								</button>
							</c:if>		
						</div>
						<!-- <div class="title_text border-bottom border-2 border-dark border-opacity-50" style="width: 780px; display:inline-block; margin-left: 20px; margin-right:200px; margin-top: 40px; line-height: 40px;">
							리뷰
						</div> -->
					</div>
				</div>
			</div>
			
			
			<div class="col-md-3">
				<div class="row" style="padding-top:40px;">
					<div class="col-12">
						<h2 class="nowbest border-bottom" style="display:inline-block; width: 171px;">지금 베스트셀러</h2>
						<c:forEach items="${selectbooklist }" var="selectlist" varStatus="status" begin="0" end="9" step="1">
							<div onclick= "gotobook(${selectlist.tdbkSeq})"class="border-bottom hideeffect clickbookrank underline1" style="display:inline-block; width: 171px; cursor: pointer;">
								<span class="rank">${status.count}위 </span>
								<span class="title">&nbsp;${selectlist.tdbkBookTitle}</span>
							</div>
						</c:forEach>
						<br />
						<!-- <div class=" d-grid " style="display:inline-block; width: 171px;">
							<button class="border-bottom border-end border-start border-top more" style="background-color: #EEEEEE; color:#666666;">더보기▸</button>
						</div> -->
					</div>
				</div>
			</div>
		</div>
		
		
</div>
</form>	

<!-- footer -->
<%@include file="../.././common/xdmin/includeV1/footer.jsp" %>
<!-- footer -->

 <script>
 	var form = $("form[name=form]");
 	var goUrlAuthorView = "/main/authorView";
 	var goUrlPurchaseView = "/main/purchaseView";
 	var goUrlWishlistAdd = "/member/wishlistinsert"; 
 	var goUrlWishlistCheck = "/member/wishlistcheck"; 
 	
 	var seq = $("input:hidden[name=tdbkSeq]");
 	var ifmmSeq = $("input:hidden[name=ifmmSeq]");
 	
 	var aa = document.getElementById('tdbkSeq').value;

 	
 	buybutton = function(){
 		form.attr("action", goUrlPurchaseView).submit();
 	}
 	
 	wishbtnclick = function( bookSeq){

 		var exit = false;
 		

 		if(ifmmSeq.val() == ""){
 			alert("로그인이 필요합니다.");
 			return false;
 		} 
 		
 		$.ajax({ 
			url : goUrlWishlistCheck,
			
			type : 'post',
			
			async: false,
			
			data : {
				
				ifmmSeq : ifmmSeq.val(),
				tdbkSeq : seq.val()				
			},
			
			
			
			success : function(data) {
	
			 	if(data.rt == "success"){			 		
					alert('위시리스트에 이 책이 없습니다.');
				 } else {
					 alert('이 책이 이미 존재합니다');
					 exit = true;					 
				 }
				
		     },
		          
			error : function(request, status, error){ 							
				  	console.log("code: " + request.status)	
			        console.log("message: " + request.responseText)
			        console.log("error: " + error);
				 }	     
		});
 		
 		if (exit){
 			return false;
 		}
 		
 		$.ajax({ 
			url : goUrlWishlistAdd,
			
			type : 'post',
			
			async: false,
			
			data : {
				
				ifmmSeq : ifmmSeq.val(),
				tdbkSeq : seq.val()
				
			},
			
			
			success : function(data) {
	
			 	if(data.rt == "success"){			 		
					alert('위시리스트에 책이 저장되었습니다.');
					$("#heart").css("color","#cf2b5c");
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
 	}

 </script>
 
 <script>
 	var siteadd = $("input:hidden[name=siteadd]");
 	
	mypageclick = function(address){
		siteadd.val(address);
 		form.attr("action", address).submit();
 	}
 </script>

  <script>
  	 $("#cartbtn").on("click", function(){
 		 var tdbkSeq = $("input:hidden[name=tdbkSeq]");
		 var tdbkSeqVal = tdbkSeq.val();
		 var exit = false;
		 
		 if(ifmmSeq.val() == "" || ifmmSeq.val() == null){
			 	alert("로그인이 필요합니다. ");
			 	return false;
		 }

		 $.ajax({ 
				url : "/member/cartcheck",
				
				type : 'post',
				
				data : {
					
					ifmmSeq : ifmmSeq.val()
					,tdbkSeq : tdbkSeqVal					
				},
				
				async: false,
				
				success : function(data) {
		
				 	if(data.rt == "success"){			 		
				 		// by pass
					 } else {
						 // by pass
						 alert('카트에 존재함 ');
						 exit = true;
						 return false;
					 }
					
			     },
			          
				error : function(request, status, error){ 								
					  	console.log("code: " + request.status)	
				        console.log("message: " + request.responseText)
				        console.log("error: " + error);
					 }	     
			});	
		
		 if(exit){
			 return false;
		 }
		 
		
		 $.ajax({ 
				url : "/member/cartinsert",
				
				type : 'post',
				
				data : {
					
					ifmmSeq : ifmmSeq.val()
					,tdbkSeq : tdbkSeqVal					
				},
				
				async: false,
				
				success : function(data) {
		
				 	if(data.rt == "success"){			 		
				 		alert("카트에 추가되었습니다. ");
				 		return false;
					 } 
					
			     },
			          
				error : function(request, status, error){ 								
					  	console.log("code: " + request.status)	
				        console.log("message: " + request.responseText)
				        console.log("error: " + error);
					 }	     
			});	
			
			const element = document.getElementById("circlediv");
			element.innerHTML = '${fn:length(cartlist) + 1}';
			
			
		return false;
  	 });
  </script> 
  
  <script>
  	$("#cart").on("click", function(){		
  		
  		if( $("#ifmmSeq").val() == null || $("#ifmmSeq").val() == "" ){
  			
  			alert("로그인이 필요합니다.");
  			return false;
  			
  		} 

		form.attr("action", "/member/cart").submit();
  		
  	});
  </script>
  
  <script>
  	$("#bookopen").on("click", function(){
  		alert("dd");		
  	});
  	
  	$("#home").click(function(){
  	  form.attr("action", "/main/").submit(); 
     });
  	
  	gotobook = function(x){
  		$("#tdbkSeq").val(x);
  		form.attr("action", "/main/bookView").submit(); 
  	}
  	
  </script>
</body>
</html>
