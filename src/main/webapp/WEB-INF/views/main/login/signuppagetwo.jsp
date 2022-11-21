<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>회원가입 페이지 2</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="/resources/css/bookListcss.css" />
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">	 
</head>


<body style="background-color: #EBF6FF">
	<div class="container-fluid">
 		<div class="row border-bottom" style="height: 40px;" >
			<div class="col-12" style="text-align: center;">
				<a href="/"><img src="https://active.ridibooks.com/navbar/icons/web/ridi.f50c563403f615565a7328888ba19f87.svg" alt="" style="width: 40px; height: 35px;"/></a>
			</div>
 		</div>
 	</div>
 	
 	<div class="container">
 		<div class="row bodylogin" style="margin-top: 60px; margin-bottom: 70px; text-align: center;" >
 			<div class="col-12">
				<form name = "form" method ="post" >  
					<div>
							<div class="form-floating">
								  <input type="text" class="form-control" id="ifmmId" name = "ifmmId" placeholder= "아이디"  style="height: 48px;" autocomplete = "off" <c:if test="${kakaoset.ifmmId ne null }"> value="${kakaoset.ifmmId }"</c:if> <c:if test="${kakaoset.ifmmId ne null }"> readonly</c:if> >
								  <label for="floatingInput" id="idlabel" class="signupform" > 아이디  </label>
							</div>
							
							<div class="form-floating" style="margin-top: 10px;">
								  <input type="password" class="form-control" id="ifmmPwd" name = "ifmmPwd"placeholder="비밀번호"  style="height: 48px;" autocomplete = "off">
								  <label for="floatingInput1"  class="signupform" id = "pwdlabel">비밀번호</label>
							</div>
							
							<div class="form-floating">
								  <input type="password" class="form-control" id="ifmmPwdCheck" placeholder="비밀번호 확인"  style="height: 48px;" autocomplete = "off"> 
								  <label for="floatingInput2" id="labelpwdre" class="signupform" >비밀번호 확인</label>  
							</div>
							
							<div class="form-floating" style="margin-top: 10px;">
								  <input type="text" class="form-control" id="ifmmEmail" name = "ifmmEmail" placeholder="이메일 주소"  style="height: 48px;" autocomplete = "off" <c:if test="${kakaoset.ifmmEmail ne null }"> readonly</c:if>  <c:if test="${kakaoset.ifmmId ne null }"> value="${kakaoset.ifmmEmail }"</c:if> >
								  <label for="floatingInput3" id="labelemail" class="signupform" >이메일 주소</label>
								  <input type = "hidden" id = "ifmmEmaildom" name = "ifmmEmaildom" />
							</div>
							
							<div class="form-floating" style="margin-top: 10px;">
								  <input type="text" class="form-control" id="ifmmName" name = "ifmmName" placeholder="이름"  style="height: 48px;" autocomplete = "off" <c:if test="${kakaoset.ifmmName ne null }"> readonly</c:if>  <c:if test="${kakaoset.ifmmName ne null }"> value="${kakaoset.ifmmName }"</c:if>>
								  <label for="floatingInput4" id="labelname" class="signupform">이름</label>
								  <br />
							</div>
							
							<div class="input-group mb-3">
							  <button id = "telcoBtn" class="btn btn-outline-secondary dropdown-toggle" type="button" placeholder= "휴대전화 " data-bs-toggle="dropdown" aria-expanded="false" style="background-color: gray; color:white;">통신사</button>
								  <ul class="dropdown-menu">
								    <li class="dropdown-item">KT</li>
								    <li class="dropdown-item" >SKT</li>
								    <li class="dropdown-item" >LGU+</li>
							<!-- 		<li><hr class="dropdown-divider"></li>
								    <li class="dropdown-item" >KT 알뜰폰</li>
								    <li class="dropdown-item" >SKT 알뜰폰</li>
								    <li class="dropdown-item" >LGU+ 알뜰폰 </li> -->
								  </ul>
							  <input id = "ifmmTel" name = "ifmmTel" type="number" class="form-control" aria-label="Text input with dropdown button" maxlength = "13">  
							  
							  <input type = "hidden" id =  "ifmmtelCo" name = "ifmmtelCo">
							</div>
							
							<div class="col-12 signupform2" style="text-align: left;">선택입력</div>
							
							<div class="row">
								<div class="form-floating col-6" style="float: left;   margin-top: 10px;">
								<!-- 	<input type="text" class="form-control" id="floatingInput5" placeholder="name@example.com" style="height: 48px;;" >
									<label for="floatingInput5" id="labeldob" class="signupform">출생년도</label>	 -->	
									<input type="text" id="ifmmDob" name = "ifmmDob" style = "height: 48px; border: 1px solid #CED4DA; border-radius: 5px; padding-bottom: 2px;" readonly>					
								</div>
								
								<div class="col-6" style="display: table; vertical-align: middle; margin-top: 10px; padding-left: 3px;">
									
									<div style="display: table-cell; text-align: right;">	
										<label class = "radiolabel">
											<input type = "radio" name = "gender" id = "male" value = "1 "/>
											<span>남자 </span>
										</label>
										
										<label class = "radiolabel">
											<input type = "radio" name = "gender" id = "female" value = "2 "/>
											<span>여자 </span>
										</label> 
									</div>
								</div>
							</div>
							
							<div class="row" style="padding-top: 30px;" >
								
								<div class="col-12" style="float: left;">
									<input type="text" id="sample4_postcode" placeholder="우편번호" class="form-control" style= "width: 40%; float:left;" readonly>
									<input  type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="btn  btn-secondary" style="width: 35%; margin-left: 10px;" >
									<input type = "button" name= "addrClear" id = "addrClear" class="btn btn-secondary" value = "삭제 " style="width: 15%; margin-left: 15px;">
							 	</div>
								
								<div style="clear: both;"></div>
							</div> 
							
							<div class="row" style="padding-top: 5px;" >
								<div class="col" style="display: inline-block; width: 500px;">
									<input type="text" id="sample4_roadAddress" placeholder="도로명주소" class="form-control" readonly>
								</div>
							</div>	
							
							<div class="row" style="padding-top: 5px;" >
								<div class="col" style="display: inline-block; width: 500px;">
									<input type="text" id="sample4_jibunAddress" placeholder="지번주소" class="form-control" readonly>
								</div>
							</div>
							
							<div class="row" style="padding-top: 5px;" >
								<div class="col" style="display: inline-block; width: 500px;">
									<input type="text" id="sample4_detailAddress" placeholder="상세주소" class="form-control">
								</div>
							</div>
							
							<div class="row" style="padding-top: 5px;" >
								<div class="col" style="display: inline-block; width: 500px;">
									<input type="text" id="sample4_extraAddress" placeholder="참고항목" class="form-control" readonly>
								</div>
							</div>
							
							<div class="row" style="padding-top: 5px;" >
								<span id="guide" style="color:#999;display:none"></span>
							</div>
							
							<div class="row" style="padding-top: 5px;" >
								<div class="col" style="display: inline-block;">
									<input type="text" id="xcoord" placeholder="X 좌표 " class="form-control" readonly>
								</div>
							
								<div class="col" style="display: inline-block;">
									<input type="text" id="ycoord" placeholder=" Y 좌표 " class="form-control" readonly>
								</div>
							</div>
							
							<div class="col-12 signupform2" style="text-align: left;">
								<div id="map" style="height:200px; margin-top: 10px;"></div>
							</div>
							
							<!-- 약관 동의 섹션 radio -->
							
							<div class="col-12 border" style="text-align: left;background-color:white; border-radius: 2px; margin-top: 10px;">
								<div class="form-check" style="margin-left: 10px; margin-top: 16px;margin-bottom: 16px;">
								  <input class="form-check-input" type="checkbox" name="checkitem" id="flexRadioDefault1" value='selectall' onclick = 'selectAll(this)'>
								  <label class="form-check-label signupformagree" for="flexRadioDefault1">
								    선택 포함 전체 약관 동의
								  </label>
								</div>
							</div>
							
							<div class="col-12 border" style="text-align: left;background-color:white; border-radius: 2px; margin-top:-5px; ">
								<div class="form-check" style="margin-left: 10px; margin-top: 16px;margin-bottom: 16px; margin-left: 30px;">
								  <input class="form-check-input" type="checkbox" name="checkitem" id="flexRadioDefault1">
								  <label class="form-check-label signupformagree1" for="flexRadioDefault1">
								    이용약관 동의(필수)
								  </label>
								    <span class="signupformagree2" style="float:right; padding-right: 10px; margin-top: 3px;">약관 보기 ></span>
								</div>
								
								<div class="form-check" style="margin-left: 10px; margin-top: 16px;margin-bottom: 16px; margin-left: 30px;">
								  <input class="form-check-input" type="checkbox" name="ifmmMktemailNY" value = "14">
								  <input class="form-check-input" type="hidden" name="ifmmMktemailNY" value = "15">
								  <label class="form-check-label signupformagree1" for="ifmmMktemailNY">
								    이벤트, 혜택 알림 이메일 수신 동의 (선택 )
								  </label> 
								</div>
								
								<div class="form-check" style="margin-left: 10px; margin-top: 16px;margin-bottom: 16px; margin-left: 30px;">
								  <input class="form-check-input" type="checkbox" name="ifmmMktappAlertNY" value = "16">
								  <input class="form-check-input" type="hidden" name="ifmmMktappAlertNY" value = "17">
								  <label class="form-check-label signupformagree1" for="ifmmMktappAlertNY">
								    마케팅 수신동의 (선택 )
								  </label>
								    <span class="signupformagree2" style="float:right; padding-right: 10px; margin-top: 6px;">내용 확인 ></span>
								</div>
								
								<div class="form-check" style="margin-left: 10px; margin-top: 16px;margin-bottom: 16px;">
								  <input class="form-check-input" type="checkbox" name="ifmmMktapppushnight" value = "18">
								  <input class="form-check-input" type="hidden" name="ifmmMktapppushnight" value = "19">
								  <label class="form-check-label signupformagree1" for="flexRadioDefault1">
								    야간 방해 금지 (선택 ) 
								  </label>
								  <span class="signupformagree2" style="float:right; padding-right: 10px; margin-top: 6px;">내용 확인 ></span>
								</div>
							</div>
							
							<div class="col-12 d-grid" style="padding-top: 10px;">
								  <button type="button" id = "btnSignin"class="btn btn-primary signupcomplete" style="height: 48px; background-color:#1F8CE6" >회원 가입 완료</button>
							</div>
					</div>	
				</form>
			</div>
 		</div>
</div>
	
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
 
 <!-- Ajax -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
 <!-- Ajax -->
  
   <!-- Date picker -->
  
 <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
 <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
 <script src = "/resources/jscript/datepicker.js"></script>
 <!-- Date picker -->
  
  <!-- Kakao -->
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>			
 <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69e4faebb36ff5a8c6779b3c2d9ddaa2&libraries=services"></script>
 <script src= "/resources/jscript/kakaomap.js"></script>
   <!-- Kakao -->
   
   
 <script src= "/resources/jscript/clearaddress.js"></script>
 <script src = "/resources/jscript/validiation.js"></script>
 <script>
 	
 	
 	
 	// 통신사 li선택하기
 	$(document).on("click",".dropdown-menu li", function(){
 		var val1 = $(this).text();
 		
 		
 		switch (val1) {
 			case 'KT':
 				$('#telcoBtn').text(val1);
 				$('#ifmmtelCo').val('3');
 				break;
 			
 			
 			case 'SKT' :
 				$('#telcoBtn').text(val1);
 				$('#ifmmtelCo').val('4');
 				break;
 			
 			
		 	case 'LGU+' :
	 			$('#telcoBtn').text(val1);
				$('#ifmmtelCo').val('5');
				break;
				}					
 		// btntelco.innerText = val1;
		 
	});
 	
	// Emaildom
 	
 	 
 	
 	// 체크박스 전체 선택하기, 해제하기
 	function selectAll(selectAll){
 		const checkboxes = document.querySelectorAll('input[type="checkbox"]');
 		
 		checkboxes.forEach((checkbox) => {
 			checkbox.checked = selectAll.checked
 		})

 	}
 	
 	// insert 하기 
 	var goUrlInst = "/member/memberInst";
 	var form = $("form[name=form]");
 	
 	$("#btnSignin").on("click", function(){
 		
 		if( $("#ifmmId").val() == '' || $("#ifmmId").val() == null ){
 			alert('아이디를 입력하세요');
 			return false;
 		}
 		
 		if( $("#ifmmPwd").val() == '' || $("#ifmmPwd").val() == null ){
 			alert('비밀번호를 입력하세요');
 			return false;
 		}
 		
 		if( $("#ifmmEmail").val() == '' || $("#ifmmEmail").val() == null ){
 			alert('이메일 주소를 입력하세요');
 			return false;
 		}
 		
 		
 		if( $("#ifmmName").val() == '' || $("#ifmmName").val() == null ){
 			alert('이름을 입력하세요');
 			return false;
 		}
 		
 		if( $("#ifmmDob").val() == '' ||  $("#ifmmDob").val() == null ){
 			$("#ifmmDob").val('2000-01-01');
 		}
		
 		
		form.attr("action", goUrlInst).submit();
	});
 	
 	
 	//email도메인 벨류 추가 
 	
 	$("#ifmmEmail").on("focusout", function(){
 		var emailget = $('#ifmmEmail').val();
 		var emailsplit = emailget.split('@');
 		
 		
 		switch (emailsplit[1]) {
			case 'naver.com':
				$('#ifmmEmaildom').val('6');
				break;
			
			
			case 'gmail.com' :
				$('#ifmmEmaildom').val('7');
				break;
			
			
		 	case 'daum.net' :
				$('#ifmmEmaildom').val('8');
				break;
				
		 	case 'yahoo.com' :
				$('#ifmmEmaildom').val('9');
				break;
				
		 	default  :
				$('#ifmmEmaildom').val('20');
				break;
				}	
 	 	 	 	
	});

 </script>
</body>
</html>
