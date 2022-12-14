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
							<span class="adminname">?????????</span> <br /> <span class="adminname2">Administrator</span>
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
 	</div>					<!-- ???????????? continer end -->
 	
 	<div style=" background: #EBF6FF; width: 27vh; height: 100vh; position: fixed; top:50px; color: #40474D; padding:0; display:inline-block; min-width: 27vh;">
		<div class="row " style="width: 28.3vh;;">
			<div class="col-12">
				<div style="padding-left: 28px; padding-top: 50px; display:table; ">
					<div style="display: table-cell; vertical-align: middle;"><i class="fa-solid fa-house fa-xl" style="font-size: 25px;"></i></div>
					<div  class="dashb" style="display: table-cell; vertical-align: center; padding-left: 10px;">????????????</div>
				</div>
				
				<div class="accordion" id="accordionExample" style="border:none; padding-top: 20px; --bs-accordion-btn-focus-box-shadow: none; padding-left: 12px;"> <!-- ???????????? ?????? -->
					
				  <div class="accordion-item " style="background: #EBF6FF; border:none;"> 	<!-- ???????????? ????????? 1??? -->
				    <h2 class="accordion-header" id="headingOne">
				      <button class="accordion-button"  class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne" style="background: #EBF6FF; border:none;">
				        <span id="accordtitle">???????????? & ????????????</span>
				      </button>
				    </h2>
				    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li ><a href="/codeGroup/codeGroupList">???????????? ??????</a></li>
				         	<li><a href="/code/codeList">?????? ??????</a></li>
				         	<li style="text-shadow: 2px 2px 2px #b4b4b4,3px 3px 3px #6a79a3; font-weight: 500;"><a href="/codeGroup/codeGroupForm">???????????? ??????</a></li>
				         	<li><a href="/code/codeForm">?????? ??????</a></li>
				         </ul>
				      </div>
				    </div>
				  </div>							<!-- ???????????? ????????? 1??? ??? -->
				  
				  <div class="accordion-item " style="background: #EBF6FF; border:none;"> 	<!-- ???????????? ????????? 2??? -->
				    <h2 class="accordion-header" id="headingTwo">
				      <button class="accordion-button"  class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" style="background: #EBF6FF; border:none;">
				        <span id="accordtitle"> ?????? ??????</span>
				      </button>
				    </h2>
				    <div id="collapseTwo" class="accordion-collapse collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li><a href="">?????? ??????</a></li>
				         	<li><a href="">?????? ??????</a></li>
				         </ul>
				      </div>
				    </div>
				  </div>							<!-- ???????????? ????????? 2??? ??? -->
				
				
				<div class="accordion-item " style="background: #EBF6FF; border:none;"> 	<!-- ???????????? ????????? 3??? -->
				    <h2 class="accordion-header" id="headingThree">
				      <button class="accordion-button"  class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" style="background: #EBF6FF; border:none;">
				        <span id="accordtitle"> ?????? ??????</span>
				      </button>
				    </h2>
				    <div id="collapseThree" class="accordion-collapse collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <ul id="accorditem" style="line-height: 2em;">
				         	<li><a href="">?????? ?????????</a></li>
				         </ul>
				      </div>
				    </div>
				  </div>							<!-- ???????????? ????????? 3??? ??? -->
				
				</div> <!-- ???????????? ??? -->
				
				<div style="background: white; position: fixed; bottom: 50px; left: 30px;">
					???????????????!
				</div>
				
			</div>
		</div>
		
	</div>

 	<div class="container-fluid bodyd3" style="padding-top: 50px;">																														<!-- ???????????? ??????-->
 		<div class="row codeGroupadmintitle" style=" margin-top: 60px;">
 			<i class="fa-solid fa-square" style="padding-left: 0px;"><span style="padding-left: 10px;">???????????? ??????</span></i>
 		</div>
 		
 		<div class="row" style="background: white; margin-top: 30px; border: 2px solid #777777; border-radius: 10px;">
				<div class="col-12">
					<form name= "form" id="form" method ="post">
					
						<div  class="row" style="padding-top: 20px;">
							<div class="col"  style="display: inline-block; width: 500px;">
								<%-- ??? ??????????????? ????????? = <input name = "cgSeq" type="text" class="form-control" id="cgSeq" value="<c:out  value="${item.cgSeq}"/>"> --%>
								<input type="text" name="cgSeq" value="<c:out value="${vo.cgSeq}"/>"/>
								
							</div>
							
							<div class="col"  style="display: inline-block; width: 500px;">
							</div>
							
						</div>
						
						<div class="row" style="padding-top: 30px;" >
							  <div class="col"  style="display: inline-block; width: 500px;">
							    <label for="1" class="form-label">???????????? ?????? (??????)</label>
							    <input name = "cgName" id = "cgName" value="<c:out  value="${item.cgName}"/>" type="text" class="form-control">
							  </div>
							  
							  <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">
							    <label for="2" class="form-label">???????????? ??????(??????)</label>
							    <input name = "cgKor" type="text" class="form-control" id="cgKor" value="<c:out  value="${item.cgKor}"/>">
							  </div>
						</div>
						
						<div  class="row" style="padding-top: 20px;">
							  <div class="col" style="display: inline-block; width: 500px;">
							    <label for="5" class="form-label">????????????</label>
							    <select class="form-select" name="useornot" >
								  <option value="" >--??????---</option>
								  <option value="1" <c:if test="${item.useNY eq 1}">selected</c:if> >Y</option>
								  <option value="0" <c:if test="${item.useNY eq 0}">selected</c:if> >N</option>
								</select>
							  </div >
							  
							 <div class="col" style="display: inline-block;  width: 500px; margin-left:20px;">	
							    <label for="8" class="form-label">????????????</label>
							    <select class="form-select" name="delornot" >
							    	<option value="">--??????---</option>
									<option value="1" <c:if test="${item.delNY eq 1}">selected</c:if>>Y</option>
									<option value="0" <c:if test="${item.delNY eq 0}">selected</c:if>>N</option>
								</select>
							  </div>
						</div>

					
					<div style="padding-top: 30px;">
						<div style="display:table; width: 100%; padding-bottom:150px;">
							<div style="display:table-cell;">
								<button  type="button" style="background: rgb(168, 209, 248); border:1px solid rgb(168, 209, 248); border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;" onclick="location.href='./codeGroupList'">
									<i class="fa-solid fa-list"></i>
								</button>
								
								
							</div>
							
							<div style="display:table-cell; text-align: right;">
								<button  type="button"  data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="background:rgb(241, 200, 63); border:1px solid rgb(241, 200, 63); border-radius: 4px; color: black; font-size: 13px; width: 35px; height: 35px;"> 
									<i class="fa-solid fa-x"></i>
								</button>
								
									<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="staticBackdropLabel">??????</h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body" style="text-align:left;">
									        ?????????????????????????
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
									        <button type="button" name="btndel"  id="btndel" class="btn btn-primary">??????</button>
									      </div>
									    </div>
									  </div>
									</div>
								
								<button style="background: rgba(8, 116, 8, 0.699); border:1px solid rgba(8, 116, 8, 0.699); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
									<i class="fa-solid fa-trash"></i>
								</button>	
								
								<button type="button" id="btnupdt" name="btnupdt" style="background: rgb(82, 82, 194); border:1px solid rgb(82, 82, 194); border-radius: 4px; color: white; font-size: 13px; width: 35px; height: 35px;"> 
									<i class="fa-solid fa-bookmark"></i>
								</button>	
								</form>			
							</div>
						</div>
					</div>
				</div>	<!-- col12 -->
 		</div> 		<!-- ?????? ?????? ???????????? ?????? ???-->
		
		<div style="visibility: hidden; height: 100px;"> 
				d
		</div>	
 	<!-- row ???-->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script> 		
 <script>
	var goUrlList = "/codeGroup/codeGroupList";
	var goUrlInst = "/codeGroup/codeGroupInst";
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";
	var goUrlUele = "/codeGroup/codeGroupUele";
	var goUrlDele = "/codeGroup/codeGroupDele";
	
	// var seq = $("input:text[name=cgSeq]");				/* #-> */
	var seq = $("input:hidden[name=cgSeq]");
	
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
	
	$("#btnupdt").on("click", function(){
		form.attr("action", goUrlUpdt).submit();
	});
	
	 $("#btndel").on("click", function(){
		form.attr("action", goUrlDele).submit();
	});
 </script>
</body>
</html>
