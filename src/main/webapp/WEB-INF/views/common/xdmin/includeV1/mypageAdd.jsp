<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<div class="col-4" style="width: 235px;">
	<div class="row">
		<div class="col-12">
			<div class="menutitle">마이리디</div>
			<div id="dashboard" class="border-bottom" style="padding-top:17px; padding-bottom:17px; width: 130px; cursor: pointer">
				<a href="" class="menutitle1" style="color: #1F8CE6">
				<div style="display:inline-block; padding-right: 5px;"><i class="fa-solid fa-house"></i></div>
				마이리디 홈
				</a>
			</div>
				<!-- color: #1F8CE6; -->
			<div class="border-bottom" style="width: 135px; padding-top: 17px; padding-bottom: 19px;">
				<div class="menutitle2">
					<i class="fa-solid fa-book-open"></i>
					<span style="margin-left: 5px;">책</span>
				</div>
				
				<!-- <div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 선호작품</div> -->
				<div class="menutitle3" style="padding-top:14px; padding-left: 22px;">  내 서재  </div>
				<div class="menutitle3" id="wishlist" style="padding-top:14px; padding-left: 22px; cursor: pointer; "> 위시 리스트 </div>  
				<!-- <div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 독서노트</div>
				<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 신간알림</div>
				<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 이벤트 알림 설정</div> -->
			</div>
			
			<div class="border-bottom" style="width: 135px; padding-top: 17px; padding-bottom: 19px;">
				<div class="menutitle2">
					<i class="fa-solid fa-id-card"></i>
					<span style="margin-left: 5px;">구매헤택</span>
				</div>
				
				<div id="purchaseHistory" class="menutitle3" style="padding-top:14px; padding-left: 22px; cursor: pointer;"> 결제 내역</div>
				<!-- <div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 리디 캐시</div>
				<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 리디포인트</div>
				<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 쿠폰</div> -->
			</div>
			
			<div class="border-bottom" style="width: 135px; padding-top: 17px; padding-bottom: 19px;">
				<div class="menutitle2">
					<i class="fa-solid fa-user"></i>
					<span style="margin-left: 5px;">개인</span>
				</div>
				
				<!-- <div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 1:1 문의</div> -->
				<!-- <div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 내 기기 관리</div> -->
				<div class="menutitle3" style="padding-top:14px; padding-left: 22px;"> 내 리뷰 관리</div>
				<div class="menutitle3" style="padding-top:14px; padding-left: 22px;">
					 <span style="cursor: pointer;" class="menutitle3" id="myinfo" onclick="myinfo()">정보 변경</span>
				</div>
			</div>
		</div>
	</div>
</div>