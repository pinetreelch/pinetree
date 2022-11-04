<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<div class="container-fluid">
	 <div style="border-bottom: solid; height: 35px; border-width: 3px; border-color:#F5F5F5;">
	 	<div class="container bodyd">
			<div class="row align-items-center">
				<div class="col" style="padding-top:6px;">
					<a class="heading" href="" >도서</a >
					
					<c:choose>
						<c:when test ="${sessSeq eq null}">
							<a class="heading float-end" href="/login/">&nbsp;<b>로그인</b> </a>
								<span class="heading float-end"> ⦁&nbsp;</span>
							<a class="heading float-end" href="/login/signup1/"> <b>회원가입</b>&nbsp;&nbsp;</a>
							<!-- 	<span class="heading float-end"> ⦁&nbsp;</span>
							<a class="heading float-end" href="/codeGroup/codeGroupList/"> <b>관리자 페이지 </b>&nbsp;&nbsp;</a> -->
						</c:when>
						
						<c:otherwise>
							 <span class="heading float-end" style = "cursor: pointer;" id = "logoutBtn"><b>로그아웃</b></span> 
							 	<!-- <span class="heading float-end"> ⦁ &nbsp;</span>
							 <a class="heading float-end" href="/codeGroup/codeGroupList/"> <b>관리자 페이지 </b>&nbsp;&nbsp;</a> -->
						</c:otherwise>
					</c:choose>
	
				</div>		 	
		 	</div>
	 	</div>
	 </div>
</div>