<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>구매하기  </title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/bookListcss.css" />	 
</head>
<body>
	<form name ="form" id = "form" method ="post">
	<input type="hidden" name = "ifmmSeq" id= "ifmmSeq" value="${sessSeq}"/>
	<input type="hidden" name="checkboxSeqArray" id="checkboxSeqArray">
	<input type="hidden" name="tdbkSeq" id="tdbkSeq"/>
	<input type="hidden" name="buyinfoSeq" id="buyinfoSeq" />
	
	
	<!-- 최상단 헤더 -->
	<%@include file="../.././common/xdmin/includeV1/header1.jsp" %>
 	<!-- 최상단 헤더 -->
 
	<div class="container bodyd" >
		<!-- 헤더 2 -->	 	
	 	<%@include file = "../.././common/xdmin/includeV1/header2.jsp" %>
	 	<!-- 헤더 2 -->
	</div>  <!-- container bodyd end -->
	
	<div class="container bodydpurchase" >
		<div class="row" style="padding-top: 40px;">
			<div class="col-12" >
				<div class="row">
					<div class="col-12" style="width:594px;">
						<h3 class="purchasedetail" style="padding-bottom: 14px; margin:0px;">
							주문 목록 
							<span class="nmbbooks"> ${fn:length(bookinfo)} </span>
						</h3>
						
						<table class="table border-top">
							<c:if test="${fn:length(bookinfo) < 1}">
								주문목록에 담겨있는 상품이 없습니다.
							</c:if>
							<c:forEach items="${bookinfo }" var ="bookinfo" varStatus="status">
								<input type="hidden" id="checkboxSeq" name ="checkboxSeq" value= "${bookinfo.tdbkSeq }"/>
								<tr class="border-bottom">
									<c:set var = "count" value="${0}"></c:set>
																		
									<td style="width: 68px; padding: 0px;padding-top: 15px; padding-bottom: 15px;">
											<img onclick="goBook(${bookinfo.tdbkSeq})"src="${bookinfo.urllarge }" class="border" alt="" style="width: 60px; height:87px; margin-left: 8px; cursor: pointer;"/>
									</td>
									<td style="width: 525px; padding: 0;">
										<div style="padding-top:10px; padding-bottom: 15px;">
											<div style="display:inline-block; width: 220px; padding-left: 15px; padding-bottom: 15px; padding-top:15px;">
												<p onclick="goBook(${bookinfo.tdbkSeq})" class="purchaseauthorname" style="margin:0; cursor: pointer;">${bookinfo.tdbkBookTitle }</p>
												<p class="purchasebookname" style="margin-top: 10px;">
													
													<c:forEach items="${authorlist }" var="authorlist" varStatus="status">																																										
														<c:if test="${bookinfo.tdbkSeq eq authorlist.tdbkSeq}">
															<c:set var = "count" value="${count + 1}"></c:set>
																<c:if test="${count eq 2 }">,</c:if>
																<c:if test="${count < 3 }"> ${authorlist.tdauName }</c:if>
														</c:if>
													</c:forEach>
													<c:if test="${count > 2 }">
														외 ${count -2 }명
													</c:if>													 
												</p>
											</div>
											<div style="display:inline-block; width: 250px;">
												<span class="purchaseprice" style="float: right;">원</span>
												<span class="purchaseprice" style="float: right;"> <fmt:formatNumber value="${bookinfo.tdbkSales }" pattern="#,###"/> </span>
												<c:set var = "totalprice" value="${totalprice + bookinfo.tdbkSales}"></c:set>
											</div>
										</div>
									</td>
								</tr>
							</c:forEach>	
						</table>
						
					</div>
					<div class="col-12" style="width:358px; padding-left:50px;">
						<h3 class="purchasedetail" style="padding-bottom: 14px; margin:0;">
							결제 목록
						</h3>
						<div style="border:solid; border-width: 1px;border-color: #87B4E9;">
							<div class="border-bottom" style="padding-top: 12px; padding-bottom: 12px; padding-right: 15px; padding-left:15px">
								<span class="totpurchase">총 주문 금액</span>
								<span class="totpurchase12"> <fmt:formatNumber value="${totalprice }" pattern="#,###"/> </span>
							</div>
							
							<div class="border-bottom" style="padding-top: 15px; padding-bottom: 15px; padding-right: 15px; padding-left:15px">
								<p class="totpurchase" style="margin:0;">
									할인 쿠폰
									<span class="totpurchase2">0개</span>
								</p>
							</div>
							
							<div class="border-bottom" style="padding-top: 15px; padding-bottom: 15px; padding-right: 15px; padding-left:15px">
								<p class="totpurchase" style="margin:0;">
									포인트 상품권
									<span class="totpurchase2">0개</span>
								</p>
							</div>
							
							<div class="border-bottom" style="padding-top: 15px; padding-bottom: 15px; padding-right: 15px; padding-left:15px">
								<p class="totpurchase" style="margin:0;">
									리디 포인트
									<span class="totpurchase2">0원</span>
								</p>
							</div>
							
							<div  style="padding-top: 15px; padding-bottom: 15px; padding-right: 15px; padding-left:15px">
								<p class="totpurchase" style="margin:0;">
									<span class="totpurchase">리디 캐쉬</span>
									<button id="question" href="" style="margin-left: 5px;cursor:default;border:solid; border-width: 1px; background-color: white; border-color: #ABB3BA; color: #818A92; border-radius: 3px; width: 17px; height: 20px; padding:0">
										<span class="totpurchase5">?</span>
									</button>
									<span class="totpurchase2">0원</span>
								</p>
							</div>
							
							<div  style="background-color: #EBF6FF;padding-top: 22px; padding-bottom: 22px; text-align: center; border-bottom:solid; border-color: #87B4E9; border-width: 1px;">
								<p style="margin:0;">
									<input type="hidden" value="${totalprice}" id="totalprice" name="totalprice" />
									<span class="totalpage">총 결제 금액</span>
									<span class="totalpage1" style="margin-right: -5px;"> <fmt:formatNumber value="${totalprice }" pattern="#,###"/></span>
									<span class="totalpage">원</span>
								</p>
							</div>
							
							<div  style="padding-top: 15px; padding-right: 15px; padding-left:15px">
								<p class="totpurchase" style="margin:0;">
									<span class="totpurchase">결제 수단</span>
								</p>
							</div>
							
							<div  style="padding-top: 4px; padding-bottom: 10px; padding-right: 15px; padding-left:15px">
								<ul style="padding:0;">
									<li style="margin-top: 4px;">
										<div class="form-check" style="margin-bottom:0px;">
										  <input style="width: 18px; height: 18px;"class="form-check-input" type="radio" name="means" id="means" value = "34">
										  <label class="form-check-label" for="flexRadioDefault1">
										  	<img class="kakopay" src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20156%2048%22%20id%3D%22Layer_1%22%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20fill%3D%22%231e1e1e%22%3E%3Cstyle%3E.st0%7Bfill%3A%231e1e1e%7D%3C/style%3E%3Cpath%20d%3D%22M51.64%2020.205c0%2011.039-11.433%2020.008-25.429%2020.008-1.577%200-3.154-.099-4.534-.296l-10.251%206.899c-.197.197-.296.197-.493.197s-.296%200-.493-.197-.394-.493-.197-.789l2.366-8.969C5.512%2033.413.781%2027.105.781%2020.008.781%208.969%2012.215%200%2026.211%200s25.33%208.969%2025.429%2020.205zM155.219%205.109l-9.852%2026.912c-1.322%203.604-2.763%206.848-4.565%209.612-1.802%202.763-3.845%204.806-6.368%206.368l-4.806-4.445c1.322-1.322%202.643-2.523%203.604-3.845.961-1.322%201.922-2.883%202.883-4.445L124.942%205.109l8.65-.601%206.488%2023.068%206.728-23.068%208.411.601zM109.684%204.147c-1.922%200-3.845.36-6.007.961-2.163.601-3.845%201.322-5.166%202.523l2.283%205.407c1.322-.601%202.643-1.201%204.205-1.562%201.562-.36%202.883-.601%204.085-.601%201.562%200%202.883.36%203.845%201.201.961.721%201.322%201.922%201.322%203.604v.961h-4.565c-4.085%200-7.089.721-9.371%202.523-2.163%201.682-3.244%204.085-3.244%207.329%200%203.124.721%205.407%202.523%206.968%201.562%201.682%203.845%202.523%206.728%202.523%201.322%200%202.643-.24%204.205-.721%201.562-.601%203.124-1.322%204.566-2.523l.721%202.523h5.527V16.042c0-3.845-.961-6.968-3.124-8.891-1.805-2.042-4.688-3.004-8.533-3.004zm4.445%2023.308c-.36.36-.721.601-1.322.961-.601.36-.961.601-1.562.721-.601.24-1.201.36-1.682.601-.601.24-1.201.24-1.682.24-2.283%200-3.484-1.201-3.484-3.484%200-2.883%202.163-4.445%206.127-4.445h3.604v5.406zM89.916%208.923C88.417%206%2085.627%203.693%2082.319%203.252a16.257%2016.257%200%200%200-2.092-.134c-3.912-.012-6.695%201.983-8.29%203.563-.613-1.366-1.364-2.636-2.046-2.636-1.478%200-4.846.062-4.846.062v43.039h8.131V36.087c1.026.102%202.276.169%202.4.174%204.608.183%209.295-.544%2012.432-3.981%203.479-3.812%204.513-10.463%204.086-15.468-.233-2.728-.927-5.446-2.178-7.889zm-4.728%2010.708c-.155%203.271-1.183%207.284-3.953%209.314-.236.173-.482.33-.738.471-2.177%201.201-4.798%201.05-7.321.838V10.957c.422-.65.966-1.185%201.687-1.48%202.277-.932%205.158-.371%207.107%201.056%202.758%202.021%203.374%205.81%203.218%209.098z%22/%3E%3C/svg%3E" alt=""  />
										  	<button class="taxdeduction">소득공제</button>
										  </label>
										</div>
									</li>
									
									<li style="margin-top: 4px;">
										<div class="form-check" style="margin-bottom:0px;">
										  <input style="width: 18px; height: 18px;"class="form-check-input" type="radio" name="means" id="means" value = "35">
										  <label class="form-check-label" for="flexRadioDefault1">
										  	<span class="creditcard" >신용카드</span>
										  	<button class="taxdeduction">소득공제</button>
										  </label>
										</div>
									</li>
								</ul>
							</div>
						</div>
						
						<p class="warning">						
							<span>
								<button class="taxdeduction">소득공제</button>
								<span>표시된 결제 수단으로 결제 시 문화비 소득공제를 받을 수 있습니다.</span>
							</span>
						</p>
						
						<h3 class="purchasedetail" style="padding-bottom: 14px; margin-top:30px;">
							구매 동의
						</h3>
						
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="buycheck" style="width: 18px; height: 18px;">
						  <label class="form-check-label" for="flexCheckDefault">
						    <span class="agreepurchase">상품, 사격, 할인 정보, 유의 사항 등을 확인하였으며 구매에 동의합니다.</span>
						  </label>
						</div>
						
						<div class="d-grid">
							<button id="buybtn" type="button" class="btn signupbutton" style="margin-top:15px;height: 50px; border-radius: 4px; border: 1px solid #0077d9; background: #1F8CE6;" >결제하기</button>
							<button id="kakaoTest" type="button" class="btn signupbutton" style="margin-top:15px;height: 50px; border-radius: 4px; border: 1px solid #0077d9; background: #1F8CE6;" >카카오페이 테스트 </button>
						</div>
						
						<ul style="padding:0; margin-top: 15px;">
							<li class="warning1">
								<span>결제 취소는 결제일로부터 7일 이내에만 할 수 있습니다</span>
							</li>
							<li class="warning1">
								<span>다운로드하거나(다운로드 시작 포함) 스트리밍으로 이용한 책은 구매 취소하거나 환불받을 수 없습니다.</span>
							</li>
							<li class="warning1">
								<span>문화비 소득공제는 주문 도서와 결제 수단에 따라 적용됩니다. <span class="seedetail">자세히 알아보기 ></span></span>
							</li>
						</ul>
						
						<div class="boxpur">
							<h4 class="coinhead">
								<i class="fa-solid fa-coins" style="color: #9eaebd;"></i>
								<span>리디캐쉬란?</span>
							</h4>
							
							<p class="coinp">
								결제할 때마다 개인 정보를 입력할 필요 없는 <strong> 가장 편리한 결제 수단입니다.</strong>
								충전 금액에 따라 최대 5% 보너스 적립까지!
							</p>
							
							<table class="table border-top border-end border-start" style="text-align:center; margin-bottom: 8px;">
								<tr style="height:31px; background: #F5FAFE;">
									<th class="border-end tablehead">리디캐시 충전 금액</th>
									<th class="tablehead1">보너스 리디 포인트</th>
								</tr>
								
								<tr>
									<td class="border-end tablehead2">2,000원 ~ 20,000원</td>
									<td class="tablehead1">3%</td>
								</tr>
								
								<tr>
									<td class="border-end tablehead2">30,000원 ~ 70,000원</td>
									<td class="tablehead1">4%</td>
								</tr>
								
								<tr>
									<td class="border-end tablehead2" style="    letter-spacing: -.03em;">100,000원 ~ 500,000원</td>
									<td class="tablehead1">5%</td>
								</tr>
							</table>
							
							<div class="d-grid">
								<button type="button" class="btn buttoncash" style="margin-top:10px;height: 39px; border-radius: 4px; border: 1px solid #d1d5d9;; background: white;" >리디캐시 충전</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
<!-- footer -->
<%@include file = "../.././common/xdmin/includeV1/footer.jsp" %>
<!-- footer -->
<script>
	var form = $("form[name=form]");
	var goUrlCart = "/member/cart";
	var goUrlSuccess = "/main/purchasesuccess";
	var checkboxSeqArray = [];
	var orderSeq;

	
	$("#buybtn").on("click", function(){
		
		var buych = $("input:checkbox[id='buycheck']").is(':checked');
		var meancheck = $('input:radio[name=means]').is(':checked');
		var meanval = $("input[name=means]:checked").val();
		
		$("input:hidden[name=checkboxSeq]").each(function(){
			checkboxSeqArray.push($(this).val());
		});
		
		$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
		
		
		if (!buych){
			alert("구매 동의 체크해주세요.");
			alert( meanval);
			return false;
		}
		
		if(!meancheck){
			alert('결제 수단을 선택해주세요 ');
			return false;
		}
		
		
		$.ajax({
			
			url: "/member/buyInsert",
			
			type: 'post',
			
			async: false,
			
			data : {
				ifmmSeq : $("#ifmmSeq").val(),
				means: $("input[id=means]:checked").val(),
				totalprice: $("#totalprice").val()
			},
			
			success : function(data){
				
				alert("성공" + data.orderSeq);
				alert("주문 상세 추가하는 AJAX 실행");
				orderSeq = data.orderSeq;
				
				$.ajax({
					
					url: "/member/buydetailInsert",
					
					type: 'post',
					
					async: false,
					
					data : {
						checkboxSeqArray: $("#checkboxSeqArray").val(),
						buy_buyinfoSeq: data.orderSeq
					},
					
					success : function(response){
						alert("주문 상세 추가 성공");
						
						$.ajax({
							
							url: "/member/cartdelteAll",
							
							type: 'post',
							
							async: false,
							
							data : {
								ifmmSeq: $("#ifmmSeq").val()
							},
							
							success : function(response){
								alert("카트도 삭제 성공");
								alert("주문 시퀀스 = " + orderSeq);
								$("#buyinfoSeq").val(orderSeq);
								alert($("#buyinfoSeq").val());
								
								
								form.attr("action", "/main/purchasesuccess").submit();
								
								return false;
							},
							
							error : function(request, status, error){
								console.log("code: " + request.status)	
						        console.log("message: " + request.responseText)
						        console.log("error: " + error);
							}
						});	
						

						return false;
					},
					
					error : function(request, status, error){
						console.log("code: " + request.status)	
				        console.log("message: " + request.responseText)
				        console.log("error: " + error);
					}
				});	
			 
				return false;
			},
			
			error : function(request, status, error){
				console.log("code: " + request.status)	
		        console.log("message: " + request.responseText)
		        console.log("error: " + error);
			}
		});	
		
		return false;
	});	
</script>
<script>
	goBook = function(seqbook){
		$("#tdbkSeq").val(seqbook);
		form.attr("action", "/main/bookView").submit();
	}
	
	$('.taxdeduction').click(function(){
		return false;
	});
	
	$('#question').click(function(){
		return false;
	});
</script>

<script>
	$("#kakaoTest").click(function(){
		alert('sdf');
	});
</script>
</body>
</html>
