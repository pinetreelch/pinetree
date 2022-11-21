<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>위시 리스트   </title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/mypage.css" />	 
</head>
<body>
	<form name="form" method = "post">
	<input type="hidden" name = "mainkey" id="mainkey"/>
	<input type="hidden" name = "ifmmSeq" id="ifmmSeq" value="${sessSeq}"/>
	<input type="hidden" name = "ifmmId" id="ifmmId" value="${memberinfo.ifmmId}"/>
	<input type="hidden" name = "tdbkSeq" id="tdbkSeq" />
	
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
					<div class="col-12">
						<h3 class="wishlisttitle">
							위시리스트
							<span class="wishlistsubtitle"> ${fn:length(wishlist) }</span>
						</h3>
						
						<div class="d-grid"style="padding-top: 10px;">
							<ul class="border-bottom border-2 wishul" style="padding-left:0; ;float:left; display:block; height: 30px; margin-bottom:0;">
								<li id="wishli" style="float:left; border-bottom: 2px solid black; height:30px;"><a href="">등록순</a></li>
								<!-- <li id="wishli" style="float:left; padding-left: 15px;">인기순</li>
								<li id="wishli" style="float:left; padding-left: 15px;">낮은 가격순</li>
								<li id="wishli" style="float:left; padding-left: 15px;">할인 도서</li> -->
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
						<div class="border-bottom" style="height: 124px;" id="div${wishlist.tradBook_tdbkSeq}">
							<div style="display:inline-block;">
								<div class="form-check" style="float:left; padding-top: 50px; padding-bottom: 30px;">
							  		<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="width: 18px; height: 18px;">
							  	</div>
							  	
							  	<div style="float:left; padding-top: 20px; padding-bottom: 20px; ">
							  			<img onclick="goBook(${wishlist.tradBook_tdbkSeq})" id="imgbook" class="border" src="${wishlist.urllarge }" alt="" style="width: 60px; height: 84px; cursor:pointer;"/>
							  	</div>
							  	
							  	<div style="float:left; padding-top: 15px; padding-bottom: 25px; padding-left: 15px; width: 400px;">
							  		<span onclick="goBook(${wishlist.tradBook_tdbkSeq})" class="wishlistbktitle" style="cursor: pointer;">${wishlist.tdbkBookTitle}</span>
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
	
	
<!-- footer -->
<%@include file = ".././common/xdmin/includeV1/footer.jsp" %>
<!-- footer -->

<%@include file = ".././common/xdmin/includeV1/myPageBarScript.jsp" %>

<script>
	
	goBook = function(seqbook){
		$("#tdbkSeq").val(seqbook);
		form.attr("action", "/main/bookView").submit();
	}
</script>
<script>
	
	var ifmmSeq = $("input:hidden[name=ifmmSeq]");
	var tdbkSeq = $("input:hidden[name=tdbkSeq]");
	var goUrlWishDelete = "/member/wishlistdelete";

	deletebtn = function (bookSeq){
		tdbkSeq.val(bookSeq);
		
		var getdivId = "div"+bookSeq;
		var divId = document.getElementById(getdivId);
		
		$.ajax({ 
			url : goUrlWishDelete,
			
			type : 'post',
			
			async: false,
			
			data : {
				
				tdbkSeq : tdbkSeq.val()
				,ifmmSeq : ifmmSeq.val()
			},
			
			
			success : function(data) {
	
			 	if(data.rt == "success"){			 		
					divId.remove();
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

		return false;
	}

</script>


</body>
</html>
