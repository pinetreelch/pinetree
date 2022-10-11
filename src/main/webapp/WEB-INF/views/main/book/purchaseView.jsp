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
		<div class="container-fluid">
		 <div style="border-bottom: solid; height: 35px; border-width: 3px; border-color:#F5F5F5;">
		 	<div class="container bodyd">
				<div class="row align-items-center">
					<div class="col" style="padding-top:6px;">
						<a class="heading" href="" >도서</a >
						<a class="heading float-end" href="../member/loginForm.html">&nbsp;<b>로그인</b> </a>
						<span class="heading float-end" href=""> ⦁&nbsp;</span>
						<a class="heading float-end" href="../member/1_signupForm.html"> <b>회원가입</b>&nbsp;&nbsp;</a>
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
		 						<i class="fa-regular fa-user fa-xl" style="padding-top:30px;"></i>
		 				</li>
				 	</ul>
			 	</nav>
			</div>
		</div>
	</div>  <!-- container bodyd end -->
	
	<div class="container bodydpurchase" >
		<div class="row" style="padding-top: 40px;">
			<div class="col-12" >
				<div class="row">
					<div class="col-12" style="width:594px;">
						<h3 class="purchasedetail" style="padding-bottom: 14px; margin:0px;">
							주문 목록
							<span class="nmbbooks"> 1 </span>
						</h3>
						
						<table class="table border-top">
							<tr>
								<td style="width: 68px; padding: 0px;padding-top: 15px; padding-bottom: 15px;">
									<a href="../book/bookView.html">
										<img src="${bookinfo.urllarge }" class="border" alt="" style="width: 60px; height:87px; margin-left: 8px;"/>
									</a>
								</td>
								<td style="width: 525px; padding: 0;">
									<div style="padding-top:10px; padding-bottom: 15px;">
										<div style="display:inline-block; width: 220px; padding-left: 15px; padding-bottom: 15px; padding-top:15px;">
											<p class="purchaseauthorname" style="margin:0">${bookinfo.tdbkBookTitle }</p>
											<p class="purchasebookname" style="margin-top: 10px;">에드워드 애슈턴</p>
										</div>
										<div style="display:inline-block; width: 250px;">
											<span class="purchaseprice" style="float: right;">원</span>
											<span class="purchaseprice" style="float: right;"> <fmt:formatNumber value="${bookinfo.tdbkSales }" pattern="#,###"/> </span>
										</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
					<div class="col-12" style="width:358px; padding-left:50px;">
						<h3 class="purchasedetail" style="padding-bottom: 14px; margin:0;">
							결제 목록
						</h3>
						<div style="border:solid; border-width: 1px;border-color: #87B4E9;">
							<div class="border-bottom" style="padding-top: 12px; padding-bottom: 12px; padding-right: 15px; padding-left:15px">
								<span class="totpurchase">총 주문 금액</span>
								<span class="totpurchase1"> <fmt:formatNumber value="${bookinfo.tdbkSales }" pattern="#,###"/> </span>
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
									<button href="" style="margin-left: 5px;cursor:default;border:solid; border-width: 1px; background-color: white; border-color: #ABB3BA; color: #818A92; border-radius: 3px; width: 17px; height: 20px; padding:0">
										<span class="totpurchase5">?</span>
									</button>
									<span class="totpurchase2">0원</span>
								</p>
							</div>
							
							<div  style="background-color: #EBF6FF;padding-top: 22px; padding-bottom: 22px; text-align: center; border-bottom:solid; border-color: #87B4E9; border-width: 1px;">
								<p style="margin:0;">
									<span class="totalpage">총 결제 금액</span>
									<span class="totalpage1" style="margin-right: -5px;">12,000</span>
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
										  <input style="width: 18px; height: 18px;"class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										  <label class="form-check-label" for="flexRadioDefault1">
										  	<img src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20190%2048%22%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20fill%3D%22%232db400%22%3E%3Cg%3E%3Cpath%20d%3D%22M142.9%2015h-4.3v7.7h4c3%20.1%204.4-1.2%204.4-3.7v-.5c0-2.3-1.4-3.5-4.1-3.5zm10.7%2013.5v.4c0%201.5%201.2%202.2%202.7%202.2%201.4%200%202.3-.3%203.1-1%20.7-.6%201-1.3%201-2.5v-1.4h-3.9c-2%200-2.9.8-2.9%202.3z%22/%3E%3Cpath%20d%3D%22M.2%200v48h189.6V0H.2zM125%2043.2H5V4.8h120v38.4zm24.9-24.1c0%203.4-2.3%206.1-6.8%206.1h-4.5v8.1h-2.8V12.6h7.3c4.6%200%206.8%202.5%206.8%205.9v.6zm13.3%2014.2h-2.6v-1.9c-.3.6-.9%201.1-1.4%201.4-.8.5-1.7.7-3.1.7-3.1%200-5.1-1.7-5.1-4.4v-.8c0-2.7%201.7-4.5%205.6-4.5h3.9v-.9c0-2.1-.9-3.1-3.2-3.1-1.8%200-3%20.6-4.4%201.6l-1.4-2.1c1.5-1.1%203.3-2%205.8-2%203.5%200%205.9%201.8%205.9%205v11zm7.8%206.5l-2.5-.9%202-5.4-5.6-16h3l4.1%2012.6%204.1-12.6h2.9l-8%2022.3z%22/%3E%3Cpath%20d%3D%22M21.6%2023.9l6.5%209.4h7V14.6h-7V24l-6.5-9.4h-7v18.7h7zM103.2%2027.5l4.2%205.8h8l-5.6-7c2.5-.7%204.1-2.5%204.1-5.3%200-4.8-3.8-6.4-8.9-6.4h-8.7v18.7h7v-5.8h-.1zm-.2-8.2h1.5c.7%200%201.5.2%201.9.5.4.3.6.8.6%201.4%200%20.6-.2%201-.6%201.3-.5.4-1.2.5-1.9.5H103v-3.7zM93.6%2028.5h-7.4v-2.2h6.7v-4.6h-6.7v-2.2h7.2v-4.9H79.3v18.7h14.3zM44.9%2030.9h5.8l.7%202.4h7.7l-7.3-18.7h-7.9l-7.3%2018.7h7.8l.5-2.4zm2.8-10.5h.2l1.6%206.2H46l1.7-6.2zM70%2033.4l7.8-18.8h-7.6l-3.4%2011.3h-.2l-3.4-11.3h-7.6l7.8%2018.7H70z%22/%3E%3C/g%3E%3C/svg%3E" alt="" style="width:79px; height: 20px; margin-bottom: 3px;" />
										  	<button class="taxdeduction">소득공제</button>
										  </label>
										</div>
									</li>
									
									<li style="margin-top: 4px;">
										<div class="form-check" style="margin-bottom:0px;">
										  <input style="width: 18px; height: 18px;"class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										  <label class="form-check-label" for="flexRadioDefault1">
										  	<img class="kakopay" src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20156%2048%22%20id%3D%22Layer_1%22%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20fill%3D%22%231e1e1e%22%3E%3Cstyle%3E.st0%7Bfill%3A%231e1e1e%7D%3C/style%3E%3Cpath%20d%3D%22M51.64%2020.205c0%2011.039-11.433%2020.008-25.429%2020.008-1.577%200-3.154-.099-4.534-.296l-10.251%206.899c-.197.197-.296.197-.493.197s-.296%200-.493-.197-.394-.493-.197-.789l2.366-8.969C5.512%2033.413.781%2027.105.781%2020.008.781%208.969%2012.215%200%2026.211%200s25.33%208.969%2025.429%2020.205zM155.219%205.109l-9.852%2026.912c-1.322%203.604-2.763%206.848-4.565%209.612-1.802%202.763-3.845%204.806-6.368%206.368l-4.806-4.445c1.322-1.322%202.643-2.523%203.604-3.845.961-1.322%201.922-2.883%202.883-4.445L124.942%205.109l8.65-.601%206.488%2023.068%206.728-23.068%208.411.601zM109.684%204.147c-1.922%200-3.845.36-6.007.961-2.163.601-3.845%201.322-5.166%202.523l2.283%205.407c1.322-.601%202.643-1.201%204.205-1.562%201.562-.36%202.883-.601%204.085-.601%201.562%200%202.883.36%203.845%201.201.961.721%201.322%201.922%201.322%203.604v.961h-4.565c-4.085%200-7.089.721-9.371%202.523-2.163%201.682-3.244%204.085-3.244%207.329%200%203.124.721%205.407%202.523%206.968%201.562%201.682%203.845%202.523%206.728%202.523%201.322%200%202.643-.24%204.205-.721%201.562-.601%203.124-1.322%204.566-2.523l.721%202.523h5.527V16.042c0-3.845-.961-6.968-3.124-8.891-1.805-2.042-4.688-3.004-8.533-3.004zm4.445%2023.308c-.36.36-.721.601-1.322.961-.601.36-.961.601-1.562.721-.601.24-1.201.36-1.682.601-.601.24-1.201.24-1.682.24-2.283%200-3.484-1.201-3.484-3.484%200-2.883%202.163-4.445%206.127-4.445h3.604v5.406zM89.916%208.923C88.417%206%2085.627%203.693%2082.319%203.252a16.257%2016.257%200%200%200-2.092-.134c-3.912-.012-6.695%201.983-8.29%203.563-.613-1.366-1.364-2.636-2.046-2.636-1.478%200-4.846.062-4.846.062v43.039h8.131V36.087c1.026.102%202.276.169%202.4.174%204.608.183%209.295-.544%2012.432-3.981%203.479-3.812%204.513-10.463%204.086-15.468-.233-2.728-.927-5.446-2.178-7.889zm-4.728%2010.708c-.155%203.271-1.183%207.284-3.953%209.314-.236.173-.482.33-.738.471-2.177%201.201-4.798%201.05-7.321.838V10.957c.422-.65.966-1.185%201.687-1.48%202.277-.932%205.158-.371%207.107%201.056%202.758%202.021%203.374%205.81%203.218%209.098z%22/%3E%3C/svg%3E" alt=""  />
										  	<button class="taxdeduction">소득공제</button>
										  </label>
										</div>
									</li>
									
									<li style="margin-top: 4px;">
										<div class="form-check" style="margin-bottom:0px;">
										  <input style="width: 18px; height: 18px;"class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										  <label class="form-check-label" for="flexRadioDefault1">
										  	<img class="samsungpay" src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20333%2048%22%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20fill%3D%22%231428a0%22%3E%3Cpath%20d%3D%22M235.192%200c-1.689%200-3.362.272-4.97.808-1.608.537-3.654%201.744-4.705%203.43V.768h-7.601V48h7.486V31.634c.835%201.45%203.166%202.783%204.821%203.325%201.69.575%203.482.867%205.324.867%202.54%200%204.478-.448%206.554-1.33%202.071-.883%203.962-2.207%205.621-3.942%201.573-1.611%202.799-3.539%203.648-5.739a18.046%2018.046%200%200%200%201.333-6.784c0-5.042-1.783-9.309-5.156-12.816C243.899%201.422%20239.402%200%20235.192%200zm6.859%2026.079c-1.784%201.81-4.14%202.991-7.037%202.991-2.86%200-5.315-.745-7.305-2.87-1.983-2.117-2.746-5.238-2.746-8.451%200-3.009.785-6.026%202.814-8.148%201.987-2.04%204.401-2.907%207.176-2.907%202.976%200%205.446%201.173%207.158%202.989%201.994%202.115%202.972%205.077%202.972%208.415%200%203.052-.974%205.896-3.032%207.981zM324.697.767l-9.653%2024.272L304.573.767h-8.019l14.73%2032.333L304.86%2048h7.878L332.756.767zM284.367%204.238c-1.051-1.686-3.097-2.893-4.705-3.43a15.688%2015.688%200%200%200-4.97-.808c-4.209%200-8.707%201.422-12.356%205.214-3.374%203.508-5.156%207.774-5.156%2012.816%200%202.31.448%204.592%201.333%206.784.849%202.199%202.075%204.128%203.648%205.739%201.659%201.735%203.549%203.06%205.621%203.942%202.076.883%204.014%201.33%206.554%201.33%201.842%200%203.634-.292%205.324-.867%201.656-.541%203.986-1.875%204.821-3.325v3.562h7.486V.767h-7.601l.001%203.471zM282.175%2026.2c-1.99%202.125-4.445%202.87-7.305%202.87-2.897%200-5.253-1.181-7.037-2.991-2.058-2.086-3.032-4.929-3.032-7.981%200-3.338.978-6.299%202.972-8.415%201.713-1.816%204.182-2.989%207.158-2.989%202.775%200%205.189.868%207.176%202.907%202.029%202.122%202.814%205.14%202.814%208.148%200%203.214-.763%206.334-2.746%208.451zM168.802%2028.439h-.153l-6.713-22.878h-10.809v28.857h7.161l-.408-23.687h.183l7.186%2023.687h10.383V5.561h-7.224zM31.193%205.561l-5.391%2029.134h7.864l3.992-26.451h.17l3.886%2026.451h7.849L44.177%205.561zM75.243%205.561l-3.606%2022.282h-.154L67.91%205.561H56.02l-.656%2029.134h7.285l.18-26.207h.163l4.889%2026.207h7.385l4.863-26.207h.149l.196%2026.207h7.301l-.653-29.134zM135.625%2027.111c0%20.376-.008.798-.064%201.112-.146.713-.769%202.094-2.806%202.094-2.026%200-2.653-1.381-2.793-2.094a6.172%206.172%200%200%201-.056-1.112V5.558h-7.378v20.885c-.006.546.036%201.638.071%201.93.498%205.435%204.79%207.184%2010.156%207.184%205.359%200%209.678-1.749%2010.173-7.184.03-.292.091-1.384.091-1.93V5.558h-7.393v21.553h-.001zM7.745%2013.063c-.143-.605-.11-1.2-.033-1.526.21-.95.847-1.972%202.664-1.972%201.72%200%202.716%201.072%202.716%202.634v1.819h7.27v-2.047c0-6.352-5.706-7.346-9.841-7.346-5.172%200-9.401%201.726-10.185%206.483-.197%201.281-.224%202.443.067%203.91%201.261%205.972%2011.636%207.688%2013.125%2011.446.282.714.192%201.616.064%202.163-.241.965-.892%201.965-2.847%201.965-1.817%200-2.916-1.059-2.916-2.646l-.023-2.828H0v2.246c0%206.509%205.106%208.461%2010.575%208.461%205.293%200%209.623-1.785%2010.311-6.646.365-2.526.1-4.174-.013-4.789-1.235-6.116-12.304-7.909-13.128-11.327zM102.576%2013.12a3.697%203.697%200%200%201-.044-1.499c.204-.922.834-1.939%202.633-1.939%201.711%200%202.691%201.041%202.691%202.595v1.794h7.187v-2.014c0-6.284-5.643-7.27-9.714-7.27-5.13%200-9.336%201.678-10.088%206.407-.227%201.265-.257%202.415.067%203.886%201.246%205.91%2011.497%207.601%2012.98%2011.348.297.692.177%201.584.064%202.13-.23.959-.9%201.921-2.814%201.921-1.808%200-2.899-1.025-2.899-2.605v-2.806h-7.748v2.236c0%206.448%205.065%208.372%2010.495%208.372%205.204%200%209.501-1.773%2010.195-6.593.348-2.485.09-4.124-.042-4.748-1.215-6.028-12.165-7.819-12.963-11.215zM193.604%2022.594h2.982v4.21c.003.375-.019.786-.072%201.104-.13.802-.87%202.116-2.97%202.116-2.113%200-2.846-1.314-2.997-2.116-.032-.318-.05-.729-.05-1.104V13.473c0-.467.018-.995.112-1.373.169-.711.8-2.111%202.895-2.111%202.227%200%202.788%201.479%202.92%202.111.09.413.09%201.109.09%201.109v1.631h7.347l-.009-.953s.043-1.01-.062-1.914c-.517-5.491-5.062-7.197-10.235-7.197-5.155%200-9.563%201.722-10.197%207.197a16.812%2016.812%200%200%200-.128%201.914v12.26c0%20.545.003.947.106%201.917.483%205.286%205.063%207.194%2010.219%207.194%205.174%200%209.78-1.909%2010.271-7.194.069-.97.09-1.372.09-1.917v-7.832h-10.312v4.279z%22/%3E%3C/svg%3E" alt=""  />
										  	<button class="taxdeduction">소득공제</button>
										  </label>
										</div>
									</li>
									
									<li style="margin-top: 4px;">
										<div class="form-check" style="margin-bottom:0px;">
										  <input style="width: 18px; height: 18px;"class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										  <label class="form-check-label" for="flexRadioDefault1">
										  	<img class="payco" src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20213%2048%22%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20fill%3D%22%23fa1414%22%3E%3Cpath%20d%3D%22M0%205.502A5.065%205.065%200%200%201%205.105.397h13.856c11.072%200%2017.768%206.563%2017.768%2016.044v.133c0%2010.74-8.353%2016.309-18.762%2016.309H10.21v9.613a5.065%205.065%200%200%201-5.105%205.105A5.064%205.064%200%200%201%200%2042.497V5.502zm18.298%2018.299c5.105%200%208.089-3.05%208.089-7.028v-.133c0-4.575-3.183-7.028-8.287-7.028h-7.89V23.8h8.088v.001zM35.102%2040.641L51.278%204.11C52.405%201.59%2054.461.066%2057.245.066h.597c2.784%200%204.773%201.525%205.9%204.044L79.92%2040.641c.331.729.53%201.392.53%202.055%200%202.718-2.122%204.906-4.839%204.906-2.387%200-3.978-1.392-4.907-3.513l-3.116-7.293h-20.42l-3.249%207.625c-.862%201.989-2.586%203.182-4.707%203.182-2.652%200-4.707-2.122-4.707-4.773%200-.73.265-1.46.597-2.189zm28.707-12.862l-6.431-15.315-6.431%2015.315h12.862zM91.248%2029.304L76.265%208.95c-.73-.994-1.26-2.188-1.26-3.647%200-2.718%202.254-4.906%205.105-4.906%202.32%200%203.779%201.26%205.039%203.116L96.42%2019.756%20107.889%203.38c1.26-1.856%202.785-3.049%204.906-3.049%203.117%200%204.973%202.188%204.973%204.972%200%201.393-.663%202.652-1.326%203.58l-14.984%2020.221v13.392a5.065%205.065%200%200%201-5.105%205.105%205.065%205.065%200%200%201-5.105-5.105V29.304zM118.078%2024.133V24c0-13.193%209.944-24%2024.199-24%206.961%200%2011.668%201.856%2015.514%204.707%201.06.795%201.989%202.254%201.989%204.044%200%202.784-2.254%204.973-5.039%204.973-1.392%200-2.32-.53-3.05-.994-2.851-2.122-5.834-3.315-9.481-3.315-7.823%200-13.458%206.497-13.458%2014.453V24c0%207.956%205.503%2014.585%2013.458%2014.585%204.31%200%207.16-1.326%2010.078-3.646.796-.663%201.857-1.127%203.05-1.127%202.586%200%204.773%202.122%204.773%204.707%200%201.591-.796%202.851-1.723%203.646C154.21%2045.812%20149.304%2048%20141.879%2048c-13.658%200-23.801-10.542-23.801-23.867zM162.773%2024.133V24c0-13.193%2010.408-24%2024.729-24s24.597%2010.674%2024.597%2023.867V24c0%2013.193-10.409%2024-24.73%2024-14.32%200-24.596-10.674-24.596-23.867zm38.651%200V24c0-7.956-5.834-14.586-14.055-14.586s-13.922%206.497-13.922%2014.453V24c0%207.956%205.834%2014.585%2014.055%2014.585s13.922-6.497%2013.922-14.452z%22/%3E%3C/svg%3E" alt=""  />
										  	<button class="taxdeduction">소득공제</button>
										  </label>
										</div>
									</li>
									
									<li style="margin-top: 4px;">
										<div class="form-check" style="margin-bottom:0px;">
										  <input style="width: 18px; height: 18px;"class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										  <label class="form-check-label" for="flexRadioDefault1">
										  	<span class="creditcard" >신용카드</span>
										  	<button class="taxdeduction">소득공제</button>
										  </label>
										</div>
									</li>
									
									<li style="margin-top: 4px;">
										<div class="form-check" style="margin-bottom:0px;">
										  <input style="width: 18px; height: 18px;"class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										  <label class="form-check-label" for="flexRadioDefault1">
										  	<span class="creditcard" >휴대폰</span>
										  	<button class="taxdeduction">소득공제</button>
										  </label>
										</div>
									</li>
									
									<li style="margin-top: 4px;">
										<div class="form-check" style="margin-bottom:0px;">
										  <input style="width: 18px; height: 18px;"class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										  <label class="form-check-label" for="flexRadioDefault1">
										  	<span class="creditcard" >계좌 이체</span>
										  	<button class="taxdeduction">소득공제</button>
										  </label>
										</div>
									</li>
									
									<li style="margin-top: 4px;">
										<div class="form-check" style="margin-bottom:0px;">
										  <input style="width: 18px; height: 18px;"class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										  <label class="form-check-label" for="flexRadioDefault1">
										  	<span class="creditcard" >컬처랜드문화상품권</span>
										  </label>
										</div>
									</li>
									
									<li style="margin-top: 4px;">
										<div class="form-check" style="margin-bottom:0px;">
										  <input style="width: 18px; height: 18px;"class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										  <label class="form-check-label" for="flexRadioDefault1">
										  	<span class="creditcard" >도서문화상품권</span>
										  </label>
										</div>
									</li>
									
									<li style="margin-top: 4px;">
										<div class="form-check" style="margin-bottom:0px;">
										  <input style="width: 18px; height: 18px;"class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										  <label class="form-check-label" for="flexRadioDefault1">
										  	<span class="creditcard" >해피머니(모바일팝)</span>
										  </label>
										</div>
									</li>
									
									<li style="margin-top: 4px;">
										<div class="form-check" style="margin-bottom:0px;">
										  <input style="width: 18px; height: 18px;"class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										  <label class="form-check-label" for="flexRadioDefault1">
										  	<span class="creditcard" >해외 발행 신용 카드</span>
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
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="width: 18px; height: 18px;">
						  <label class="form-check-label" for="flexCheckDefault">
						    <span class="agreepurchase">상품, 사격, 할인 정보, 유의 사항 등을 확인하였으며 구매에 동의합니다.</span>
						  </label>
						</div>
						
						<div class="d-grid">
							<button type="button" class="btn signupbutton" style="margin-top:15px;height: 50px; border-radius: 4px; border: 1px solid #0077d9; background: #1F8CE6;" >결제하기</button>
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
</body>
</html>
