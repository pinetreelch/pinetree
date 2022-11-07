 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.pinetreelch.infra.modules.code.CodeServiceImpl"/>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>코드추가</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/admin.css" />	 
</head>

<body style="background-image: url('/resources/images/wallpaperbetter.jpg'); background-size: 12% 12%;">
	<div class="border-bottom border-2 container-fluid"  style="position: fixed; height: 50px;  background:#F7FAFC;">
		<div class="row">
			<div class="col-12">
				<div style="display:table; width: 100%;  height: 50px;">
					<div style="display:table-cell; vertical-align: middle; padding-left: 50px; width: 80%;">
						<div>
							<img src="https://active.ridibooks.com/navbar/icons/web/ridi.f50c563403f615565a7328888ba19f87.svg"  style="width:61px; height:23px; padding: 0px;">
				 			<img src="https://active.ridibooks.com/navbar/icons/web/genre_books.24933faed881f7e79f1f8d5f0c529370.svg" style="width:122px; height: 40px; padding: 4px;">
				 			
				 			<div class="admintitle" style="display: inline-block; vertical-align: bottom; padding-bottom: 4px;">Admin</div>
						</div>
					</div>
					
					<div  style="display:table-cell;vertical-align: middle; padding-left: -20px; padding-right: 0px; width: 3%;">
						<div class="border-start" style="">
							<div  style="margin-left: 10px; background-color: #9EA7AD;  width: 40px; height: 40px; border-radius: 50%; text-align: center; padding-top: 0.7em;">
								<i class="fa-regular fa-user"></i>
							</div>
						</div>
					</div>
					
					<div  style="display:table-cell; padding-left: -20px; padding-right: 0px; line-height: 1.1em; vertical-align: middle; width: 4%;">
						<div class="border-end" style="height: 40px;">
							<span class="adminname">이찬호</span> <br /> <span class="adminname2">Administrator</span>
						</div>
					</div>
					
					<div  style="display:table-cell; padding-left: -20px; padding-right: 0px; line-height: 1.1em; vertical-align: middle; width: 3%; text-align: center;">
						<div class="border-end" style="height: 40px; vertical-align:center;">
							<div style="padding-top: 2px;">
								<a href="">
								<i class="fa-solid fa-right-from-bracket fa-ml"></i><br />
								<span class="adminname2">logout</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
 	</div>					<!-- 해드부분 continer end -->
 	
 	<div style=" background: #EBF6FF; width: 27vh; height: 100vh; position: fixed; top:50px; color: #40474D; padding:0; display:inline-block; min-width: 27vh;">
		<div class="row " style="width: 28.3vh;;">
			<div class="col-12">
				<div style="padding-left: 28px; padding-top: 50px; display:table; ">
					<div style="display: table-cell; vertical-align: middle;"><i class="fa-solid fa-house fa-xl" style="font-size: 25px;"></i></div>
					<div  class="dashb" style="display: table-cell; vertical-align: center; padding-left: 10px;">대쉬보드</div>
				</div>
				
				<div class="accordion" id="accordionExample" style="border:none; padding-top: 20px; --bs-accordion-btn-focus-box-shadow: none; padding-left: 12px;"> <!-- 아코디언 시작 -->
					
				  <div class="accordion-item " style="background: #EBF6FF; border:none;"> 	<!-- 아코디언 아이템 1번 -->
				    <h2 class="accordion-header" id="headingOne">
				      <button class="accordion-button"  class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne" style="background: #EBF6FF; border:none;">
				        <span id="accordtitle">코드그룹 & 코드관리</span>
				      </button>
				    </h2>
				    <div id="collapseOne" class="accordion-collapse collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li ><a href="/codeGroup/codeGroupList">코드그룹 관리</a></li>
				         	<li><a href="/code/codeList">코드 관리</a></li>
				         	<li ><a href="/codeGroup/codeGroupForm">코드그룹 추가</a></li>
				         	<li ><a href="/code/codeForm">코드 추가</a></li>
				         </ul>
				      </div>
				    </div>
				  </div>							<!-- 아코디언 아이템 1번 끝 -->
				  
				  <div class="accordion-item " style="background: #EBF6FF; border:none;"> 	<!-- 아코디언 아이템 2번 -->
				    <h2 class="accordion-header" id="headingTwo">
				      <button class="accordion-button"  class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" style="background: #EBF6FF; border:none;">
				        <span id="accordtitle"> 회원 관리</span>
				      </button>
				    </h2>
				    <div id="collapseTwo" class="accordion-collapse collapse show" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li><a href="/member/memberList">회원 관리</a></li>
				         	<li style="text-shadow: 2px 2px 2px #b4b4b4,3px 3px 3px #6a79a3; font-weight: 500;"><a href="">회원 추가(수정)</a></li>
				         	<li ><a href="">결제 관리</a></li>
				         </ul>
				      </div>
				    </div>
				  </div>							<!-- 아코디언 아이템 2번 끝 -->
				
				
				<div class="accordion-item " style="background: #EBF6FF; border:none;"> 	<!-- 아코디언 아이템 3번 -->
				    <h2 class="accordion-header" id="headingThree">
				      <button class="accordion-button"  class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" style="background: #EBF6FF; border:none;">
				        <span id="accordtitle"> 도서 관리</span>
				      </button>
				    </h2>
				    <div id="collapseThree" class="accordion-collapse collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li><a href="">도서 리스트</a></li>
				         </ul>
				      </div>
				    </div>
				  </div>							<!-- 아코디언 아이템 3번 끝 -->
				
				</div> <!-- 아코디언 끝 -->
				
				<div style="background: white; position: fixed; bottom: 50px; left: 30px;">
					안녕하세요!
				</div>
				
			</div>
		</div>
		
	</div>


<form name= "form" method= "post" enctype="multipart/form-data">
<div class="container-fluid bodyd3" style="padding-top: 50px;">																															<!-- 본문내용 시작-->
 		<div class="row codeGroupadmintitle" style=" margin-top: 60px;">
 			<i class="fa-solid fa-square" style="padding-left: 0px;"><span style="padding-left: 10px;">회원 추가</span></i>
 		</div>
 		
 		<div class="row" style="background: white; margin-top: 30px; border: 2px solid #777777; border-radius: 10px;">
				<div class="col-12">
				
						<div class="row" style="padding-top: 30px;" >						
							<div class="col" style="display: inline-block;  width: 250px;">
							 	<label for="2" class="form-label">파일 첨부  </label> <br>
								<input type= "file" name="ifmmUploadedFile" id = "ifmmUploadedFile" multiple>
								<div class= "border" style = " height: 150px; padding:5px; background-color: #cedaed;">
								 <ul>
									<li style= "background-color: white;">dfsdvsdvsdvsdvsdvsdv.pdf   <span style="float:right; padding-right: 5px;"> <button type="button" style="width: 25px; height: 25px;">X</button>  </span>	</li>
								</ul>
								</div>
							</div>
							
							<div class="col" style="display: inline-block;  width: 250px;">
							 	<label for="2" class="form-label">이미지 첨부  </label> <br>
								<input type= "file" name="uploadImage" id = "uploadImage" multiple>
								<div class= "border" style = " height: 150px; padding: 5px; background-color: #cedaed;" >
									<div class="row" style="padding-bottom: 5px; text-align: center;">
										<div class="col-2" style= "margin-right:5px;">
											<img style="height: 70px; width: 70px;" alt="" src="http://image.kyobobook.co.kr/images/book/large/750/l9788983927750.jpg">
											<button type="button" style="position: relative; bottom: 25px; right: 8px; width: 25px; height: 25px;">X</button>
										</div>
										
										<div class="col-2" style= "margin-right:5px;">
											<img style="height: 70px; width: 70px;" alt="" src="http://image.kyobobook.co.kr/images/book/large/750/l9788983927750.jpg">
											<button type="button" style="position: relative; bottom: 25px; right: 8px;  width: 25px; height: 25px;">X</button>
										</div>
										
										<div class="col-2" style= "margin-right:5px;">
											<img style="height: 70px; width: 70px;" alt="" src="http://image.kyobobook.co.kr/images/book/large/750/l9788983927750.jpg">
											<button type="button" style="position: relative; bottom: 25px; right: 8px;  width: 25px; height: 25px;">X</button>
										</div>
									</div>		
								</div>
							</div>
							
							<button type ="button" onclick = "submit213('ifmmUploadedFile', 0, 0, 1, 800000, 10000000, 2 )" >제출 </button>
							<button type ="button"  id= "submitbtn1" >누르지마세요  </button>
						</div>
						
					
						<div class="row" style="padding-top: 30px;" >
						
							<div class="col" style="display: inline-block;  width: 500px;">
							    <label for="2" class="form-label">회원 시퀀스</label>
							    <input name = "ifmmSeq" type="text" class="form-control" value = "${list.ifmmSeq }">
							  </div>
							  
							  <div class="col"  style="display: inline-block; width: 500px;  margin-left:20px;">
							   
							  </div>
						</div>
						
						<div class="row" style="padding-top: 30px;" >
						
							<div class="col" style="display: inline-block;  width: 500px;">
							    <label for="2" class="form-label">회원 이름 </label>
							    <input name = "ifmmName" id= "ifmmName"type="text" class="form-control" value = "${list.ifmmName }">
							  </div>
							  
							  
							  <div class="col"  style="display: inline-block; width: 500px;  margin-left:20px;">
								   <label for="2" class="form-label">성별 </label>
							 	  <%--  <input name = "ifmmSeq" type="text" class="form-control" value = "${list.gender }"> --%>
							 	  <div>
										<c:set var="cachedList" value="${CodeServiceImpl.selectListCachedCode()}"/>
										
												<select class="form-select" name="gender" >
													<option value="" >-----선택-----</option>
													<option value="1"  <c:if test="${list.gender eq 1 }"> selected </c:if>> 
														남자 
													</option>	
																							
													<option value="2"  <c:if test="${list.gender eq 2 }"> selected </c:if>>
														 여자 
													</option>															
												</select>
												
											
											
											<%-- <c:choose>
												<c:when test="${list.ifmmSeq > 0 }">
													<c:forEach items="${cachedList}" var="clist" varStatus="status">
														<c:if test="${clist.cSeq eq list.gender }">
															<input  id = "gender" name = "gender" type="text" class="form-control" value = "${clist.cdName }">
														</c:if>
													</c:forEach>
												</c:when>
												
												<c:otherwise>
														<input  id = "gender" name = "gender" type="text" class="form-control" value = "">
												</c:otherwise>
												
											</c:choose> --%>

								</div>
		 	  
							  </div>
						</div>
						
						<div class="row" style="padding-top: 30px;" >
						
							<div class="col" style="display: inline-block;  width: 500px;">
							    <label for="2" class="form-label"> 아이디 </label>
							    <div name="spanmessage" id="spanmessage" class="idckmessage"></div>
							    <input name = "ifmmId" id="ifmmId" type="text" class="form-control" value = "${list.ifmmId }">
							    
							    
							  </div>
							  
							  <div class="col"  style="display: inline-block; width: 500px;  margin-left:20px;">
								  
							  </div>
						</div>
						
						<div class="row" style="padding-top: 30px;" >
						
							<div class="col" style="display: inline-block;  width: 500px;">
							    <label for="2" class="form-label">이메일 </label>
							 	   <input name = "ifmmSeq" type="text" class="form-control" value = "${list.ifmmEmail }">
							  </div>
							  
							  <div class="col"  style="display: inline-block; width: 500px;  margin-left:20px;">
								   <label for="2" class="form-label"> 도메인 </label>
								   
								 	<select class="form-select" name="ifmmEmaildom" >
								 		<option value="" >-----선택-----</option>
								 		
								 		<option value="6"  <c:if test="${list.ifmmEmaildom eq 6 }"> selected </c:if>> 
												naver.com 
										</option>	
										
										<option value="7"  <c:if test="${list.ifmmEmaildom eq 7}"> selected </c:if>> 
												gmail.com 
										</option>
										
										<option value="8"  <c:if test="${list.ifmmEmaildom eq 8}"> selected </c:if>> 
												daum.net 
										</option>
										
										<option value="9"  <c:if test="${list.ifmmEmaildom eq 9}"> selected </c:if>> 
												yahoo.com
										</option>	
								 	</select>
								   
								   
								   <%-- <c:choose>
											<c:when test="${list.ifmmSeq > 0 }">
										    	<c:forEach items="${cachedList}" var = "clist" varStatus="status">
											    	<c:if test="${clist.cSeq eq list.ifmmEmaildom }">
											    		 <input name = "ifmmEmaildom" type="text" class="form-control" value = "${clist.cdName }">
											    	</c:if>
											   </c:forEach>
											</c:when>
											
											<c:otherwise>
														<input name = "ifmmEmaildom" type="text" class="form-control" value = "${clist.cdName }">
											</c:otherwise>
									</c:choose> --%>
								   
							  </div>
						</div>
						
						<div class="row" style="padding-top: 30px;" >
						
							<div class="col" style="display: inline-block;  width: 500px;">
							    <label for="2" class="form-label">비밀번호 </label>
							 	   <input name = "ifmmSeq" type="text" class="form-control" value = "${list.ifmmPwd }">
							  </div>
							  
							  
							  <div class="col"  style="display: inline-block; width: 500px;  margin-left:20px;">
								   
							  </div>
							  
						</div>
						
						<div class="row" style="padding-top: 30px;" >
						
							<div class="col" style="display: inline-block;  width: 500px;">
							    <label for="2" class="form-label">핸드폰  </label>
							 	   <input name = "ifmmSeq" type="text" class="form-control" value = "${list.ifmmTel  }">
							  </div>
							  
							  <div class="col"  style="display: inline-block; width: 500px;  margin-left:20px;">
								   <label for="2" class="form-label">통신사</label>
								   	
									<select class="form-select" name="ifmmtelCo" >
										<option value="" >-----선택-----</option>
										
										<option value="3"  <c:if test="${list.ifmmtelCo eq 3 }"> selected </c:if>> 
												KT
										</option>	
										
										<option value="4"  <c:if test="${list.ifmmtelCo eq 4}"> selected </c:if>> 
												SKT
										</option>
										
										<option value="5"  <c:if test="${list.ifmmtelCo eq 5}"> selected </c:if>> 
												LGU+ 
										</option>
									</select>								   	
								   <%-- 	<c:choose>
											<c:when test="${list.ifmmSeq > 0 }">
										    	<c:forEach items="${cachedList}" var = "clist" varStatus="status">
											    	<c:if test="${clist.cSeq eq list.ifmmtelCo }">
											    		 <input name = "ifmmtelCo" id = "ifmmtelCo" type="text" class="form-control" value = "${clist.cdName }">
											    	</c:if>
											   </c:forEach>
											</c:when>
											
											<c:otherwise>
														 <input name = "ifmmtelCo" id = "ifmmtelCo" type="text" class="form-control" value = "">
											</c:otherwise>
									</c:choose> --%>
								   
								   
							 	  
							  </div>
							  
						</div>
						
						<div class="row" style="padding-top: 30px;" >
						
							<div class="col" style="display: inline-block;  width: 500px;">
							    	<label for="2" class="form-label">마케팅 수신동의 </label>
							    	
							    	<select class="form-select" name="ifmmMktemailNY" >
							    		<option value="" >-----선택-----</option>
							    		
						    			<option value="14"  <c:if test="${list.ifmmMktemailNY eq 14 }"> selected </c:if>> 
												Yes
										</option>	
										
										<option value="15"  <c:if test="${list.ifmmMktemailNY eq 15 }"> selected </c:if>> 
												No
										</option>	
							    	</select>
							    	
							    	<%-- <c:choose>
												<c:when test="${list.ifmmSeq > 0 }">
											    	<c:forEach items="${cachedList }" var = "clist" varStatus = "vatstatus">
											    		<c:if test="${clist.cSeq eq list.ifmmMktemailNY }">
											    			<input name = "ifmmMktemailNY" type="text" class="form-control" value = "${clist.cdName  }">
											    		</c:if>
											    	</c:forEach>
												</c:when>
												
												<c:otherwise>
															<input name = "ifmmMktemailNY" type="text" class="form-control" value = "${clist.cdName  }">
												</c:otherwise>
												
									</c:choose> --%>
	 	   
							  </div>
							  
							  
							  <div class="col"  style="display: inline-block; width: 500px;  margin-left:20px;">
								   <label for="2" class="form-label">앱 알림 </label>
								   
								   <select class="form-select" name="ifmmMktappAlertNY" >
								   	
								   	<option value="" >-----선택-----</option>
								   	
								   	<option value="16"  <c:if test="${list.ifmmMktappAlertNY eq 16 }"> selected </c:if>> 
												Yes
									</option>
								   
								   <option value="17"  <c:if test="${list.ifmmMktappAlertNY eq 17 }"> selected </c:if>> 
												No
									</option>
									
								   </select>
								   
								   	<%-- <c:choose>
											<c:when test="${list.ifmmSeq > 0 }">
										    	<c:forEach items="${cachedList}" var = "clist" varStatus="status">
											    	<c:if test="${clist.cSeq eq list.ifmmMktappAlertNY }">
											    		 <input name = "ifmmMktappAlertNY" id = "ifmmMktappAlertNY" type="text" class="form-control" value = "${clist.cdName }">
											    	</c:if>
											   </c:forEach>
											</c:when>
											
											<c:otherwise>
														 <input name = "ifmmMktappAlertNY" id = "ifmmMktappAlertNY" type="text" class="form-control" value = "">
											</c:otherwise>
									</c:choose> --%>
							  </div>
							  
							   <div class="col"  style="display: inline-block; width: 500px;  margin-left:20px;">
								   <label for="2" class="form-label">야간 방해 금지 </label>
								   
								   
								   <select class="form-select" name="ifmmMktapppushnight" >
								   	
								   	<option value="" >-----선택-----</option>
								   	
								   	<option value="18"  <c:if test="${list.ifmmMktapppushnight eq 18 }"> selected </c:if>> 
												Yes
									</option>
								   
								   <option value="19"  <c:if test="${list.ifmmMktapppushnight eq 19 }"> selected </c:if>> 
												No
									</option>
									
								   </select>
								   
								   
								   <%-- <c:choose>
											<c:when test="${list.ifmmSeq > 0 }">
										    	<c:forEach items="${cachedList}" var = "clist" varStatus="status">
											    	<c:if test="${clist.cSeq eq list.ifmmMktappAlertNY }">
											    		 <input name = "ifmmMktapppushnight" id = "ifmmMktapppushnight" type="text" class="form-control" value = "${clist.cdName }">
											    	</c:if>
											   </c:forEach>
											</c:when>
											
											<c:otherwise>
														 <input name = "ifmmMktapppushnight" id = "ifmmMktapppushnight" type="text" class="form-control" value = "">
											</c:otherwise>
									</c:choose> --%>
								   
							 	  
							  </div>
							  
						</div>
						
						<div class="row" style="padding-top: 30px;" >
						
							<div class="col" style="display: inline-block; width: 500px;">
								<label for="2" class="form-label">주소</label>
								<input type="text" id="sample4_postcode" placeholder="우편번호" class="form-control" readonly>
							  
						 	</div>
							
							<div class="col" style="display: inline-block;  width: 500px;">
								<label for="2" class="form-label">&nbsp; </label>  <br />
								<input  type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="btn  btn-secondary" >
								<input type = "button" name= "addrClear" id = "addrClear" class="btn btn-secondary" value = "삭제 ">
								
		
							</div>

						</div> 	
						
						<div class="row" style="padding-top: 10px;" >
							<div class="col" style="display: inline-block; width: 500px;">
								<input type="text" id="sample4_roadAddress" placeholder="도로명주소" class="form-control" readonly>
							</div>
							
							<div class="col" style="display: inline-block; width: 500px;">
								<input type="text" id="sample4_jibunAddress" placeholder="지번주소" class="form-control" readonly>
							</div>
						</div>
						
						<div class="row" style="padding-top: 10px;" >
							<div class="col" style="display: inline-block; width: 500px;">
								<input type="text" id="sample4_detailAddress" placeholder="상세주소" class="form-control">
							</div>
						
							<div class="col" style="display: inline-block; width: 500px;">
								<input type="text" id="sample4_extraAddress" placeholder="참고항목" class="form-control" readonly>
							</div>
						
						</div>
						
						<div class="row" style="padding-top: 10px;" >
							<span id="guide" style="color:#999;display:none"></span>
						</div>
						
						
						
						<div class="row" style="padding-top: 10px;" >
							<div class="col" style="display: inline-block; width: 500px;">
								
								<input type="text" id="xcoord" placeholder="X 좌표 " class="form-control" readonly>
							</div>
						
							<div class="col" style="display: inline-block; width: 500px;">
								<input type="text" id="ycoord" placeholder=" Y 좌표 " class="form-control" readonly>
							</div>
						
						</div>
						
						<br>
							
						<div id="map" style="height:400px;"></div>	
							
							`
							
							
							
							
						<div style="padding-top: 30px;">
							<div style="display:table; width: 100%; padding-bottom:150px;">
								<div style="display:table-cell;">
									<button type="button" style="background: rgb(168, 209, 248); border:1px solid rgb(168, 209, 248); border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;" >
										<i class="fa-solid fa-list"></i>
									</button>
									
									
								</div>
								
								<div style="display:table-cell; text-align: right;">
									<button style="background:rgb(241, 200, 63); border:1px solid rgb(241, 200, 63); border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-x"></i>
									</button>
									
									<button style="background: rgba(8, 116, 8, 0.699); border:1px solid rgba(8, 116, 8, 0.699); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-trash"></i>
									</button>	
									
									<button type="button" id="insertbtn" style="background: rgb(82, 82, 194); border:1px solid rgb(82, 82, 194); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
										<i class="fa-solid fa-bookmark"></i>
									</button>				
								</div>
							</div>
						</div>
				</div>	<!-- col12 -->
 			</div> 		<!-- 검정 테리 코드그룹 관리 안-->
 		</div>
 	</form>
	
		<div style="visibility: hidden; height: 100px;"> 
				
		</div>	
 	<!-- row 끝-->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69e4faebb36ff5a8c6779b3c2d9ddaa2&libraries=services"></script>
 <script src="/resources/jscript/fileattatch.js"></script>
 

<script>
var goUrlInst = "/member/memberInst1";
var form = $("form[name=form]");


$("#insertbtn").on("click", function(){
	form.attr("action", goUrlInst).submit();
});

</script>
 
<script>

submit213 = function(objName, allowedMaxTotalFileNumber , seq, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType){
	
	var totalFileSize = 0;
	var obj = $("#" + objName +"")[0].files;	
	var fileCount = obj.length;
	
	const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
	const MAX_TOTAL_FILE_SIZE = 25 * 1024 * 1024;	//	25M
	const MAX_TOTAL_FILE_NUMBER = 5;				//	5
	
	// 이미지 전용
	var extArray1 = new Array();
	extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];
	
	for(var i = 0; i < obj.length; i ++){
		alert(obj[i].size);
	}
	
	allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
	
	if(checkUploadedTotalFileNumber(obj, allowedMaxTotalFileNumber, fileCount) == false) { return false; }
	
	for (var i = 0 ; i < fileCount ; i++) {
		if(checkUploadedExt($("#" + objName +"")[0].files[i].name, seq, allowedExtdiv) == false) { return false; }
		if(checkUploadedEachFileSize($("#" + objName +"")[0].files[i], seq, allowedEachFileSize) == false) { return false; }

		totalFileSize += $("#" + objName +"")[0].files[i].size;
	}
	
	if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
	
	if (uiType == 1) {
		
	} else if(uiType == 2) {
		
	}
	
	
	alert('제출 ');
	return false;
}




</script> 
 
<script> 

var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3//지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴


//------------------------------------------------

	function sample4_execDaumPostcode() {
	
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            
	            var roadAddr = data.roadAddress; // 도로명 주소 변수
	            var extraRoadAddr = ''; // 참고 항목 변수
	            var xcord='';
	            var ycord='';
	            var xcordInt = 0;
	            var ycordInt = 0;
	            var geocoder = new kakao.maps.services.Geocoder();
	            var callback = function(result, status) {
	        		
	        	    if (status === kakao.maps.services.Status.OK) {
	        	    	
	        	    
	        	    	
	        	    	var xcord = JSON.stringify(result[0].x);
	        	    	var ycord = JSON.stringify(result[0].y);
	        	    	
	        	    	
	        	    	
	        	    	var xcordInt = parseFloat(result[0].x);
	        	    	var ycordInt = parseFloat(result[0].y);
	        	    	
	        	    	
	        	    	
	        	    	document.getElementById('xcoord').value = xcordInt; 
	        	    	document.getElementById('ycoord').value = ycordInt; 
	        	    	
	        	    	
	        	            
	 	                // 이동할 위도 경도 위치를 생성합니다 
	 	                var moveLatLon = new kakao.maps.LatLng(ycordInt, xcordInt);
	 	                
	 	                // 지도 중심을 이동 시킵니다
	 	                map.setCenter(moveLatLon);
	 	                
	 	           		// 마커가 표시될 위치입니다 
	 	               var markerPosition  = new kakao.maps.LatLng(ycordInt, xcordInt); 
	 	                
	 	           		
	 	           		// 마커를 생성합니다
	 	             	 var marker = new kakao.maps.Marker({
	 	                  position: markerPosition
	 	             	 });
	 	           		
	 	             // 마커가 지도 위에 표시되도록 설정합니다
	 	             	marker.setMap(map);
	 	             
	 	             
	        	        console.log(result);
	        	    }
	        	};
	            
	            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            // 건물명이 있고, 공동주택일 경우 추가한다.
	            if(data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	            if(extraRoadAddr !== ''){
	                extraRoadAddr = ' (' + extraRoadAddr + ')';
	            }
				
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('sample4_postcode').value = data.zonecode;
	            document.getElementById("sample4_roadAddress").value = roadAddr;
	            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	            
	            //---------------------------------------------------------
	            
	           
	            
				//-----------------------------------------------------------------
	            
	            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	            if(roadAddr !== ''){
	                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	            } else {
	                document.getElementById("sample4_extraAddress").value = '';
	            }
	
	            var guideTextBox = document.getElementById("guide");
	            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	            if(data.autoRoadAddress) {
	                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                guideTextBox.style.display = 'block';
	
	            } else if(data.autoJibunAddress) {
	                var expJibunAddr = data.autoJibunAddress;
	                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                guideTextBox.style.display = 'block';
	            } else {
	                guideTextBox.innerHTML = '';
	                guideTextBox.style.display = 'none';
	            }
	            
 				//---------------------------------------------------------
	            geocoder.addressSearch(roadAddr, callback);
				//----------------------------------------------------------------- 
	        }
	    
	    }).open();
	  
	}
	
</script>

<script >
$("#addrClear").on("click", function(){
	
	document.getElementById('sample4_postcode').value = null;
	document.getElementById('sample4_roadAddress').value = null;
	document.getElementById('sample4_jibunAddress').value = null;
	document.getElementById('sample4_detailAddress').value = null;
	document.getElementById('sample4_extraAddress').value = null; 
	document.getElementById('guide').value = null;
	document.getElementById('xcoord').value = null;
	document.getElementById('ycoord').value = null;
	
	/* marker.setMap(null); */ 
});

/* 아이디 중복확인 --------------------------------------------------------- */
$("#idinput").on("focusout", function(){
	
	var idcheck = document.getElementById('idinput').value;
	

	/* var contentx = ' <i class="fa-solid fa-circle-exclamation"></i> 이미 사용중인 아이디입니다  ';
	var contextnot = '<i class="fa-solid fa-circle-exclamation">' + '</i>' + '이미 사용중인 아이디입니다 '; */
	/* ajax */
	
	
	
	if( (idcheck.length > 5 && idcheck.length < 20) && (typeof idcheck == 'string')){
		$.ajax({
			url : "/member/testaction",
			
			type : 'post',
			
			data : {
				name1 : idcheck,
				age1 : "20",
				gender1 : "man"
			},
			
			success : function(data) {
				if(data == '1'){
					/* document.getElementById('spanmessage').textContent = "사용가능한 아이디입니다.  "; */
					
					document.querySelector('#spanmessage').innerHTML='<span style = "color: green; letter-spacing: 0.1px;"> ※ 사용가능한 &nbsp; 아이디입니다. </span>';
				} else { 
					
					
					document.querySelector('#spanmessage').innerHTML='<span style = "color: red; letter-spacing: 0.1px;"><i class="fa-solid fa-circle-exclamation"></i> 이미 존재하는 아이디 입니다.</span>';
					/* document.querySelector('#spanmessage').insertAdjacentHTML('beforeend', contentx); */
					
					/* document.getElementById('spanmessage').textContent = "이미 사용중인  아이디입니다."; */
				}
		     },     
			error : function(request,status,error){ 
							
				  	console.log("code: " + request.status)	
			        console.log("message: " + request.responseText)
			        console.log("error: " + error);
				      }	     
		});
		
	}
	else{
		alert('no!!');
	}
});	
	
</script>
</body>
</html>
