<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>결제 완료   </title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/bookListcss.css" />	 
</head>
<body>
	<form name ="form" id = "form" method ="post">
	<input type="hidden" name = "ifmmSeq" id= "ifmmSeq" value="${sessSeq}"/>
	
	<!-- 최상단 헤더 -->
	<%@include file="../.././common/xdmin/includeV1/header1.jsp" %>
 	<!-- 최상단 헤더 -->
 
	<div class="container bodyd" >
		<!-- 헤더 2 -->	 	
	 	<%@include file = "../.././common/xdmin/includeV1/header2.jsp" %>
	 	<!-- 헤더 2 -->
	</div>  <!-- container bodyd end -->
	
	<div class="container bodydpurchase" >
		<div class="row" style="padding-top: 60px;">
			<div class="col-2" ></div>
			<div class="col-8" >
				<div class="row">
					<div class="col-12">
						<h3 class="purchasedetail" style="padding-bottom: 30px; margin:0px; text-align: center;">
							<span style="font-size: 30px;"> <span style="color:#1F8CE6;	">결제</span>가 완료되었습니다!</span>
						</h3>
						
						<table class="border table-bordered tablestyle" style="width: 100%">
							<tr>
								<td style="width: 25%; background-color: #f2f4f5; padding-left: 10px;">주문번호 </td>
								<td style="padding-left: 10px;">SDVNVKLSLVN213098GLKM</td>
							</tr>
							
							<tr>
								<td style="width: 25%; background-color: #f2f4f5; padding-left: 10px;">결제일시 </td>
								<td style="padding-left: 10px;"> 2022/10/09/08/21</td>
							</tr>
							
							<tr>
								<td style="width: 25%; background-color: #f2f4f5; padding-left: 10px;">결제수단  </td>
								<td style="padding-left: 10px;"> 신용카드 </td>
							</tr>
							
							<tr>
								<td style="width: 25%; background-color: #f2f4f5; padding-left: 10px;">총 결제 비용  </td>
								<td style="padding-left: 10px;"> 25,200 </td>
							</tr>
						</table>
					
					
						<p style="text-align: center;">
							<button type="button" class="btn signupbutton" style="margin-top:15px;height: 50px; border-radius: 4px; border: 1px solid #0077d9; background: #1F8CE6;" > 결제상세   </button>
							<button id="goHome" type="button" class="btn signupbutton border" style="margin-top:15px;height: 50px; border-radius: 4px; background: white; color: rgba(0, 0, 0, 0.49);" > 메인으로  </button>
						</p>		
					</div>  <!-- col-12 끝  -->			
				</div>
			</div>
			<div class="col-2" ></div>
		</div>
	</div>
</form>
		
	
<!-- footer -->
<%@include file = "../.././common/xdmin/includeV1/footer.jsp" %>
<!-- footer -->
<script>
	var form = $("form[name=form]");
	var goUrlCart = "/member/cart";
	
	$("#goHome").click(function(){
		form.attr("action", "/main/").submit();
	});
	
</script>
</body>
</html>
