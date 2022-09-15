<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>codeGroupList</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/admin.css" />	 
	  
	
  	
  	
</head>
<body>
	<div class="container-fluid px-0 mt-2">
	    <div class="row">
	        <div class="col">
	            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
	            <ul class="pagination justify-content-center mb-0">
	                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
					<c:if test="${vo.startPage gt vo.pageNumToShow}">      
	               		<li class="page-item">
	               			<a class="page-link" href="javascript:goList(${vo.startPage - 1})">
	               				<i class="fa-solid fa-angle-left"></i>
	               			</a>
	               		</li>
					</c:if>
					
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
						<c:choose>
						
							<c:when test="${i.index eq vo.thisPage}">
	              				  <li class="page-item active">
	              				  	<a class="page-link" href="javascript:goList(${i.index})">
	              				  		${i.index}
	              				  	</a>
	              				  </li>
							</c:when>
							
							<c:otherwise>             
	                			<li class="page-item">
	                				<a class="page-link" href="javascript:goList(${i.index})">
	                					${i.index}
	                				</a>
	                			</li>
							</c:otherwise>
						</c:choose>
					</c:forEach> 
					               
					<c:if test="${vo.endPage ne vo.totalPages}">                
	               				 <li class="page-item">
	               				 	<a class="page-link" href="javascript:goList(${vo.endPage + 1})">
	               				 		<i class="fa-solid fa-angle-right"></i>
	               				 	</a>
	               				 </li>
					</c:if>
                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
            </ul>
        </div>
    </div>
</div>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>

</body>
</html>
