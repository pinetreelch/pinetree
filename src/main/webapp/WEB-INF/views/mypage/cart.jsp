<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>카트   </title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/bookListcss.css" />	 
</head>
<body>
	<form name="form" method = "post">
	<input type="hidden" name = "mainkey" id="mainkey"/>
	<input type="hidden" name = "ifmmSeq" id="ifmmSeq" value="${sessSeq}"/>
	<input type="hidden" name = "ifmmId" id="ifmmId" value="${memberinfo.ifmmId}"/>
	<input type="hidden" name = "tdbkSeq" id="tdbkSeq" />
	<input type="hidden" name = "pagetype" id = "pagetype" value="2"/>
	<input type="hidden" name="checkboxSeqArray">
	
	<!-- 최상단 헤더 -->
	<%@include file=".././common/xdmin/includeV1/header1.jsp" %>
 	<!-- 최상단 헤더 -->
 
	<div class="container bodyd" >
		<!-- 헤더 2 -->	 	
	 	<%@include file = ".././common/xdmin/includeV1/header2.jsp" %>
	 	<!-- 헤더 2 -->
	</div>  <!-- container bodyd end -->
	
	<div class="container bodydpurchase" >
		<div class="row" style="padding-top: 40px;">
			<div class="col-12" >
				<div class="row">
					<div class="col-12" style="width:594px;">
						<h3 class="purchasedetail" style="padding-bottom: 14px; margin:0px;">
							카트 
							<span class="nmbbooks"> ${fn:length(cartlist)} </span>
						</h3>
						
						<div class="border">
							
							<ul style=" height: 44px; display:table; width: 100%; vertical-align: middle; list-style: none; list-style-type:none; margin-bottom:0; padding: 0; text-align: center;">
								<li class="buyavailable" style="display:table-cell; vertical-align: middle; width: 50%; background-color: #f2f4f5;">소장가능 <span class="sojangnum"> ${fn:length(cartlist)}</span></li>
								<li class="buyavailable" style="display:table-cell;vertical-align: middle; width: 50%;">대여가능 </li>								
							</ul>
							
							<div class="border-bottom" style="display: table; width: 94%; margin-left: 3%; vertical-align: middle; margin-right:3%; height: 60px; ">					
								<div style="display: table-row;">								
									<div style="display: table-cell; width: 50%; vertical-align: middle;" >
										 <input class="form-check-input" type="checkbox" id="checkall" >
										<span class="selectall" >전체 선택</span> 
									</div>
										
									<div style="display: table-cell; width: 50%; text-align:right; vertical-align: middle;"> 
										<button class="btnStyle" id="savewishlist"> 선택 위시리스트로 이동 </button> 
										<button class="btnStyle"> 선택 삭제 </button> 
									</div>									
								</div>
							</div>
							 
							<c:set var="totalprice"></c:set>
							<c:forEach items="${cartlist }" var =  "cartlist" varStatus="status" >
								<div id="div${cartlist.tdbkSeq }" <c:if test="${!status.last }">class="border-bottom"</c:if>  style="display: table; width: 94%; margin-left: 3%; margin-right:3%; height: 127px; vertical-align: middle; ">					
									<div style="display: table-row;">	
																
										<div style="display: table-cell; width: 20%; vertical-align: middle; ">
											<input  value = "${cartlist.tdbkSeq }" class="form-check-input" type="checkbox"  name="checkboxitem" id="checkbox${status.count }" style="vertical-align: middle" >
											<img onclick="goBook(${cartlist.tdbkSeq})" class="border" src="${cartlist.urllarge }" alt="" style="width: 60px; height: 87px; margin-left: 5px; cursor: pointer;"/>
										</div>
										
										<div style="display: table-cell; width: 60%; padding-top: 20px; padding-bottom: 20px;">
											<p onclick="goBook(${cartlist.tdbkSeq})" class="ctbooktitle" style="cursor: pointer;">${cartlist.tdbkBookTitle }</p>
											<p class="ctbookauthor">에드워드 에슈턴 v</p>
											<div style= "vertical-align:bottom"> 
												<button class="btnStyle"> 위시리스트로 이동 </button> 
												<button class="btnStyle" onclick="deleteOne(${cartlist.tdbkSeq}, ${cartlist.tdbkSales }); return false;"> 삭제 </button> 					
											 </div>
										</div>	
																		
										<div style="display: table-cell; width: 20%; vertical-align: middle; text-align: right;">
											
												<span class="purchaseprice" ><fmt:formatNumber value="${cartlist.tdbkSales }" pattern="#,###"/></span>
												<span class="purchaseprice" >원</span>
												<c:set var="totalprice" value="${totalprice+ cartlist.tdbkSales}"></c:set>
										</div>									
									</div>
								</div>
							</c:forEach>							
						</div>
						
						
						
					</div>  <!-- col-12 끝  -->
					
					<div class="col-12" style="width:358px; padding-left:50px;">
						<h3 class="purchasedetail" style="padding-bottom: 14px; margin:0; visibility: hidden">
							결제 목록
						</h3>
						<div style="border:solid; border-width: 1px;border-color: #87B4E9;">
							<div style="display: table; padding-top: 12px; padding-bottom: 12px; padding-right: 15px; padding-left:15px; width: 100%">
							
								<div style="display: table-row;">
									<div style="display: table-cell;">
										<i class="fa-solid fa-circle-check" style="color: #87b4e9"></i>
										 <span class="ctchoose"> <span> 1 </span> 권을 선택하셨습니다. </span>
									</div>
								</div>
								
								<div style="display: table-row; vertical-align: middle; line-height: 35px;">
									<div style="display: table-cell; vertical-align: middle;">
										<span class="totpurchase">총 주문 금액</span>
										
									</div>
									
									<div style="display: table-cell; vertical-align: middle; text-align: right;">
										<input type = "hidden" id="totalprice" name="totalprice" value="${totalprice }"/>
										<input type="hidden" id="tempprice" name="tempprice" value = "0"/>
										<span class="totpurchase1" style="vertical-align: middle;" id = "test1"> <strong id="str"> <fmt:formatNumber value="${totalprice }" pattern="#,###" /> </strong></span>
										<span class="totpurchase1" style="vertical-align: middle; ">원 </span>
									</div>	
								</div>	
								
								<div style="display: table-row; vertical-align: middle; line-height: 35px;">
									<div style="display: table-cell; vertical-align: middle;">
										<span class="totpurchase">할인 금액 </span>
										
									</div>
									
									<div style="display: table-cell; vertical-align: middle; text-align: right;">
										<span class="totpurchase1" style="vertical-align: middle; "> <strong> 0 </strong></span>
										<span class="totpurchase1" style="vertical-align: middle; ">원 </span>
									</div>	
								</div>
							</div>	
							
							<div style="background-color: #ebf6ff">
								<div style="display: table; padding-top: 12px; padding-bottom: 12px; padding-right: 15px; padding-left:15px; width: 100%">
									<div style="display: table-cell; vertical-align: middle;">
										<span class="totpurchase">합계  </span>
										
									</div>
									
									<div style="display: table-cell; vertical-align: middle; text-align: right;">
										<span class="cttotal" style="vertical-align: middle; " id = "test2"> <strong> <fmt:formatNumber value="${totalprice }" pattern="#,###"/> </strong></span>
										<span class="cttotal" style="vertical-align: middle; ">원 </span>
									</div>	
								</div>
							</div>															
						</div>	
						
						<div class="d-grid">
							<button id="sojangbtn" type="button" class="btn signupbutton" style="margin-top:15px;height: 50px; border-radius: 4px; border: 1px solid #0077d9; background: #1F8CE6;" >소장으로 구매하기 </button>
						</div>
		
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>	
		
	
<!-- footer -->
<%@include file = ".././common/xdmin/includeV1/footer.jsp" %>
<!-- footer -->

<script>
	goBook = function(seqbook){
		$("#tdbkSeq").val(seqbook);
		form.attr("action", "/main/bookView").submit();
	}
</script>
<script>	
	var form = $("form[name=form]");
	var goUrlPurchase = "/main/purchaseView";
	var checkboxSeqArray = [];
	
	$("#sojangbtn").on("click", function(){
		form.attr("action", goUrlPurchase).submit();
	});	
	
	$("#savewishlist").click(function(){
		alert("wish");
		checkboxSeqArray = [];
		$("input[name=checkboxitem]:checked").each(function(){
			checkboxSeqArray.push($(this).val());
		});	
		$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
							
		return false;
	});
	
	deleteOne = function(bseq, price){
		
		$('#tdbkSeq').val(bseq);
		var bkseq = $('#tdbkSeq').val();
		var imseq = $('#ifmmSeq').val();
		
	
		$.ajax({
			
			url: "/member/cartdelete",
			
			type: 'post',
			
			async: false,
			
			data : {
				ifmmSeq : imseq,
				tdbkSeq : bkseq
			},
			
			success : function(data){
				//bypass
			},
			
			error : function(request, status, error){
				console.log("code: " + request.status)	
		        console.log("message: " + request.responseText)
		        console.log("error: " + error);
			}
		});		
		$("#div"+bseq).remove();	
		
		var totprice = $("#totalprice").val();				
		var temp = $("#tempprice").val();
		
		var totpriceInt = parseInt(totprice);
		var tempint = parseInt(temp);
		
		var totnumbook = ${fn:length(cartlist)};
		
		$("#tempprice").val(tempint + price);
		
		temp = $("#tempprice").val();
		tempint = parseInt(temp);
		
		var temptest = totpriceInt - tempint;
		
		var cn = temptest.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		
		totnumbook = totnumbook - 1;
		
		$("#circlediv").html(totnumbook);
		$("#test1 strong").html(cn);
		$("#test2 strong").html(cn);
		
		                                                                                                                                                                                                                                     
		return false;		
	}
	
	$("#bookopen").click(function(){
		var str = $("#test1 strong").text();
		
		var temp = $("#tempprice").val();		
		var tempint = parseInt(temp);
		$("#tempprice").val(9000 + tempint);
		
		temp = $("#tempprice").val();
		
		var temptest = ${totalprice} - temp ;
		
		var cn = temptest.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");

		$("#test1 strong").html(cn);
		return false;
	})

</script>

<script>	
	$(document).ready(function(){
		$("#checkall").click(function(){
			if( $('#checkall').is(':checked')) {
				$("input[name=checkboxitem]").prop("checked", true);
			} else{
				$("input[name=checkboxitem]").prop("checked", false);
			}	
		});
		
		$("input[name=checkboxitem]").click(function() {
			var total = $("input[name=checkboxitem]").length;
			var checked = $("input[name=checkboxitem]:checked").length;
			
			if(total != checked){
				$("#checkall").prop("checked", false);
			} else {
				$("#checkall").prop("checked", true);
			}			
		})
	});
</script>

</body>
</html>
