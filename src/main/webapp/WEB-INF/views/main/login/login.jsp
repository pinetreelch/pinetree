<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head >
	
	  <meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=0">
	 <meta name="format-detection" content="telephone=no">

<meta name="msapplication-TileImage" content="https://static.ridicdn.net/books/dist/favicon/mstile-144x144.png">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<link rel="stylesheet" href="https://static.ridicdn.net/books/dist/css/page_base.c.css?20220725120835">
<link rel="stylesheet" href="https://static.ridicdn.net/store/dist/base.css?20220725120819">
 <link rel="stylesheet" href="https://static.ridicdn.net/books/dist/css/rui.css?20220725120448">
<link rel="stylesheet" href="https://static.ridicdn.net/store/dist/account.css?20220725120822">

	<title>로그인</title>
	
	 <link rel="stylesheet" href="/resources/css/bookListcss.css" />	 
</head>
<body id="ridi_books" class="">
 
 	 <header id="header_wrapper" class="books">
    <h1 class="header_logo">
      <a class="logo_wrapper js_home_link" href="../book/bookView.html">
                  <img src="https://static.ridicdn.net/books/dist/images/ridi.svg" alt="리디">
              </a>
    </h1>
      </header>
  <div id="contents_wrapper">
      <div id="app">
      	<div class="is-pc">
      		<header class="page-header">
      			<h1 class="page-title">
      				<a href="/" class="page-title-link">
      					<svg width="2.69565em" height="1em" viewBox="0 0 62 23" fill="none" xmlns="http://www.w3.org/2000/svg">
      						<title>RIDI</title>
      							<path d="M19.4128 7.95198V7.89236C19.4128 3.30513 16.1702 0.455688 10.9496 0.455688H0V22.557H5.53674V15.7507
							            H9.3518L13.923 22.5527H20.4296L15.0637 14.737C17.8705 13.5103 19.4128 11.1209 19.4128 7.95198Z
							            M13.8162 8.19476C13.8162 9.81328 12.6286 11.2018 10.642 11.2018H5.53674V5.09828H10.5523
							            C12.0433 5.09828 13.8162 5.97143 13.8162 8.13513V8.19476Z" fill="#1E9EFF">
					            </path>
					            <path d="M28.8543 0.455688H23.3176V22.557H28.8543V0.455688Z" fill="#1E9EFF">
					            </path>
					            <path d="M43.0934 0.455688H32.9043V22.557H43.0934C49.9033 22.557 53.3595 17.9101 53.3595 11.5085V11.4488
							            C53.3595 5.07698 49.9033 0.455688 43.0934 0.455688ZM47.6134 11.5638
							            C47.6134 15.1075 46.0541 17.744 42.4612 17.744H38.441V5.26439H42.4612
							            C46.0541 5.26439 47.6134 7.92217 47.6134 11.5042V11.5638Z" fill="#1E9EFF">
					            </path>
            					<path d="M61.9295 0.455688H56.3928V22.557H61.9295V0.455688Z" fill="#1E9EFF"></path>
            			</svg>
          			</a>
       			</h1>
   			</header>
   							<section class="page-body">
   								<section id="login" class="account-container account-login">
   								
   								
   									<form name = "form" id = "form" class="account-form" method = "post">
   										 <input type="hidden" id="email" name="email"/>
   										 <input type="hidden" id="nickname" name="nickname"/>
   										 <input type="hidden" id="snsId" name="snsId"/>
   											
   										 <input type="hidden" id="ifmmName" name="ifmmName"/>
   										 <input type="hidden" id="ifmmEmail" name="ifmmEmail"/>
   										 <input type="hidden" id="ifmmSeq" name="ifmmSeq" value="${sessSeq }"/>
   										 
   										<legend class="invisible">
      															로그인
										</legend>
											<div class="input-group">
												<label class="account-label">
													<span class="invisible">아이디 입력</span>
														<input type="text"  id="ifmmId" name= "ifmmId" title="아이디 입력" placeholder="아이디" autocapitalize="off" autocomplete="off" class="account-input">
												</label>
												<label class="account-label">
													<span class="invisible">비밀번호 입력</span>
													<input  onkeypress="if(event.keyCode==13){keypress();}" type="password"  id="ifmmPwd" id = "ifmmPwd" title="비밀번호 입력" placeholder="비밀번호" autocapitalize="off" autocomplete="off" class="account-input">
												</label>
												
													<div class="remember-wrapper">
														<label class="account-checkbox">
														<input type="checkbox" name="auto_login">
														<span class="link">로그인 상태 유지</span>
														</label>
														
													<div class="external-links">
														<a href="./findId.html" class="link">
            															아이디 찾기
          												</a>
          												<a href="./findPwd.html" class="link">
            															비밀번호 재설정
          												</a>
          												
													</div>
													</div>
											</div>
											<button id="btnLogin" name= "btnLogin"type="button" class="full-button login-button main rui_button_blue_50" >로그인</button>
											
											<button id="kakaologin" name= "kakaologin" type="button" class="full-button login-button main rui_button_blue_50" style="background-color: #f4f44d; border-color: #f4f44d; color: #463336; height: 52px;" >
												<img src="../../../../resources/images/kakaoicon.png" style="width: 25px;" /> &nbsp;카카오톡 로그인 
											</button>
											
											<button id="naverlogin" name= "kakaologin" type="button" class="full-button login-button main rui_button_blue_50" style="background-color: #19ce60; border-color: #19ce60; color: white; height: 52px;" >
												<img src="../../../../resources/images/naverlogo.png" style="width: 25px;" /> &nbsp;네이버 로그인 
											</button>
											
											
											
											<div class="btn_login_wrap" style="text-align: center; padding-top: 10px ">
												<div id="naverIdLogin"></div>
	                                        </div>
											
											<input id="ifmmSeq" name = "ifmmSeq" type = "hidden" />
											<a class="full-button login-button signup-button sub rui_button_white_50" type="button" href="/login/signup1">
				     						 회원가입
				    						</a>
    						
    						</form>
   						</section>
					</section>
				</div>
			</div>
  </div>
  
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script type="text/javascript">
	var goUrlcheck = "/member/logincheck";
	var goHome = "/main/"; 
		
 	var form = $("form[name=form]");
 	
 	$("#btnLogin").on("click", function(){
 		
 		
 		var idcheck = document.getElementById('ifmmId').value;
		var pwd =	document.getElementById('ifmmPwd').value;
		
		$.ajax({ 
			url : "/member/logincheck",
			
			type : 'post',
			
			data : {
				ifmmId : idcheck,
				ifmmPwd : pwd
			},
			
			success : function(data) {
	
			 	if(data.rt == "success"){
			 		var ifm = data.ifmmSeq;
					document.getElementById('ifmmSeq').value = ifm;	
					form.attr("action", "/").submit();
					
				 } else if(data.rt == "fail") {
					 alert('회원정보가 없음 - > 다시 입력하세요 ');
				 }
				
		     },
		          
			error : function(request, status, error){ 
							
				  	console.log("code: " + request.status)	
			        console.log("message: " + request.responseText)
			        console.log("error: " + error);
				 }	     
		});	
		/* form.attr("action", goUrlInst).submit(); */
	});
 	
 	keypress = function(){
 		var idcheck = document.getElementById('ifmmId').value;
		var pwd =	document.getElementById('ifmmPwd').value;
		
		$.ajax({ 
			url : "/member/logincheck",
			
			type : 'post',
			
			data : {
				ifmmId : idcheck,
				ifmmPwd : pwd
			},
			
			success : function(data) {
	
			 	if(data.rt == "success"){
			 		var ifm = data.ifmmSeq;
					document.getElementById('ifmmSeq').value = ifm;
 					
					form.attr("action", "/").submit();
				 } else if(data.rt == "fail") {
					 alert('회원정보가 없음 - > 다시 입력하세요 ');
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
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script>

Kakao.init('69e4faebb36ff5a8c6779b3c2d9ddaa2');
console.log(Kakao.isInitialized());


	
	
 $("#kakaologin").click(function(){
	 Kakao.Auth.login({
		      success: function (response) {
		        Kakao.API.request({
		          url: '/v2/user/me',
		          success: function (response) {
		        	  
		        	  var accessToken = Kakao.Auth.getAccessToken();
		        	  Kakao.Auth.setAccessToken(accessToken);

		        	  var account = response.kakao_account;
		        	  
		        	  console.log(response)
		        	  console.log("email : " + account.email);
		        	  console.log("name : " + account.name);
		        	  console.log("nickname : " + account.profile.nickname);
		        	  console.log("snsId : " + response.id);
		        	  
		        	  
		        	  $("#email").val(account.email);
		        	  $("#nickname").val(account.profile.nickname);
		        	  $("#snsId").val(response.id);
		        	  		        	 		        	  
		        	  $("#ifmmId").val(response.id);
		        	  $("#ifmmName").val(account.profile.nickname);
		        	  $("#ifmmEmail").val(account.email);
		        	  
		        	  
		        	  
		        	  $.ajax({
							async: true
							,cache: false
							,type:"POST"
							,url: "/member/kakaocheck"
							,data: {
									ifmmId : $("#snsId").val() 
									} 
							,success : function(response) {
								if (response.rt == "fail") {
									form.attr("action", "/login/signup2").submit();
									return false;
								} else {
									
									$.ajax({
										async: true
										,cache: false
										,type:"POST"
										,url: "/member/kakaologin"
										,data: {
												ifmmId : $("#snsId").val() 
												} 
										,success : function(response) {
											if (response.rt == "fail") {
												form.attr("action", "/").submit();
												return false;
											} else {
												alert('로그인 성공!!');	
											}
										},
										error : function(jqXHR, status, error) {
											alert("알 수 없는 에러 ~~[ " + error + " ]");
										}
									});
								}
							},
							error : function(jqXHR, status, error) {
								alert("알 수 없는 에러 [ " + error + " ]");
							}
						});
		        	  
		        	         	    	        	  
		          },
		          fail: function (error) {
		            console.log(error)
		          },
		        })
		      },
		      fail: function (error) {
		        console.log(error)
		      },
		    })  
 });
</script>

<script>
var form = $("form[name=form]");

	var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "VFAVTHRVgSeiYFfBFeDx",
				callbackUrl: "http://localhost:8080/login/",
				isPopup: false,
			}
		);
	
	naverLogin.init();

$("#naverlogin").click(function(){
	naverLogin.getLoginStatus(function (status) {
		
		if(!status)
			naverLogin.authorize();
		else
            setLoginStatus();  //하늘님 메소드 실행 -> Ajax
	});
	
});

	window.addEventListener('load', function () {
		if (naverLogin.accessToken != null){
			naverLogin.getLoginStatus(function(status) {
				if(status){
					setLoginStatus();
				}
			});
		}
	});
	
	function setLoginStatus() {
		
		console.log(naverLogin);
		
		alert(naverLogin.user.id + "  " + naverLogin.user.name + " " + naverLogin.user.birthyear + " "+ naverLogin.user.birthday + " "+ naverLogin.user.email);
		
		
		$("#ifmmEmail").val(naverLogin.user.email);
		$("#ifmmName").val(naverLogin.user.name);
		$("#ifmmId").val(naverLogin.user.id);
		
		
		$.ajax({
			async: true
			,cache: false
			,type:"POST"
			,url: "/member/kakaocheck"
			,data: {
					ifmmId: naverLogin.user.id					
					}
			,success : function(response) {
				if (response.rt == "fail") {
					alert("존재하지 않는 아이디입니다. ");
					form.attr("action", "/login/signup2").submit();
					return false;
				} else {
					alert("존재하는 아이디입니다.");
					$.ajax({
						async: true
						,cache: false
						,type:"POST"
						,url: "/member/kakaologin"
						,data: {
								ifmmId: naverLogin.user.id					
								}
						,success : function(response) {
							if (response.rt == "fail") {
								form.attr("action", "/").submit();
							} else {
								//
							}
						},
						error : function(jqXHR, status, error) {
							alert("알 수 없는 에러 [ " + error + " ]");
						}
					});
				}
			},
			error : function(jqXHR, status, error) {
				alert("알 수 없는 에러 [ " + error + " ]");
			}
		});
		
		
		return false;
	}
</script>

</body>
</html>
