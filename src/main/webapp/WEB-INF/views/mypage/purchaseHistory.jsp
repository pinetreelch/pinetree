<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title> 결제 내역  </title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/mypage.css" />	 
</head>
<body>
	<form name="form" method = "post">
	<input type="hidden" name = "mainkey" id="mainkey"/>
	<input type="hidden" name = "ifmmSeq" id="ifmmSeq" value="${sessSeq}"/>
	<input type="hidden" name = "ifmmId" id="ifmmId" value="${memberinfo.ifmmId}"/>
	<input type="hidden" name = "tdbkSeq" id="tdbkSeq" />
	<input type="hidden" name = "buyinfoSeq" id="buyinfoSeq">
	
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
							결제 내역  
						</h3>
						
						
						
						<table class="table border-top tablestyle" style="margin-top: 30px;">
							<tr style="text-align: center; background-color: #f2f4f5; color: #808991;">
								<td> <strong> 구매일 </strong> </td>
								<td> <strong> 결제 내역 </strong> </td>
								<td> <strong> 주문금액 </strong> </td>
								<td> <strong> 결제 수단 </strong> </td>
								<td> </td>
							</tr>
							
							<c:choose>
								<c:when test="${fn:length(buyResult) eq 0}">
									<tr>
										<td colspan="5" style="text-align: center;">
											결제 내역이 없습니다.
										</td>
									</tr>
								</c:when>
								
								<c:otherwise>
									<c:forEach var="buyResult" items="${buyResult }" varStatus="status">
									<c:set var="count" value="0"></c:set>
									<tr style="color: #808991; text-align: center;" class="trhover" onclick="goDetail(${buyResult.buyinfoSeq})">
										<td >
											${buyResult.date}
										</td>
										
										<td>
											<c:forEach var="detailList" items="${buydetailList}" varStatus="status">
												<c:if test="${buyResult.buyinfoSeq eq detailList.buyinfoSeq }">
													<c:set var="count" value="${count+1}"></c:set>
														<c:if test="${count eq 1 }">
															${detailList.tdbkBookTitle}
														</c:if>
												</c:if>
											</c:forEach>
											
											<c:if test="${count > 1 }">
												외 ${count -1}권 
											</c:if>
										</td>
										
										<td>
											${buyResult.totalprice }
										</td>
										
										<td>
											<c:if test="${buyResult.means eq 34 }">카카오페이 </c:if>
											<c:if test="${buyResult.means eq 35 }">신용카드  </c:if>
										</td>
										<td> > </td>
									</tr>	
									</c:forEach>		
								</c:otherwise>
							</c:choose>
							
							
						</table>
	
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

<script>
	goDetail = function(seq){
		$("#buyinfoSeq").val(seq);
		form.attr("action", "/member/purchaseDetail").submit();
	}
</script>


</body>
</html>
