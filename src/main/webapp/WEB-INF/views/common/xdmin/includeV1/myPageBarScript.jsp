<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<script>
	var form = $("form[name=form]");
	var sessSeq = $("input:hidden[name=sessSeq]");
	var sessSeqVal = sessSeq.val();
	var mainkey = $("input:hidden[name=mainkey]");
	
	var goUrlInfo = "/member/infochangecheck";
	var goUrlHome = "/main/";
	var goWishList = "/member/wishlist"; 
	
	var goUrlInfo = "/member/infochangecheck";
	var goUrlInfo2 = "/member/infochangecheck";
	
	
	
	myinfo = function(){
		mainkey.val(sessSeqVal);	
		form.attr("action",goUrlInfo).submit();
	}
	
	$("#home").click("action", function(){
		form.attr("action", goUrlHome).submit();
	});
	
	$("#wishlist").click("action", function(){
		form.attr("action", goWishList).submit();
	});
	
	$("#purchaseHistory").click(function(){
		form.attr("action", "/member/purchaseHistory").submit();
	});
	
	$("#dashboard").click(function(){
		form.attr("action", "/member/mypage").submit();
	});
</script>