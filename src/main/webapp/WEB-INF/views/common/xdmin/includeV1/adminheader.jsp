<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<div class="border-bottom border-2 container-fluid"  style="position: fixed; height: 50px;  background:#F7FAFC;">
		<div class="row">
			<div class="col-12">
				<div style="display:table; width: 100%;  height: 50px;">
					<div style="display:table-cell; vertical-align: middle; padding-left: 50px; width: 80%;">
						<div onclick="location.href='/'" style="cursor: pointer;">
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
							<div style="padding-top: 2px; cursor: pointer"  id="logoutBtn">
								
								<i class="fa-solid fa-right-from-bracket fa-ml"></i><br />
								<span class="adminname2">logout</span>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
 	</div>					<!-- 해드부분 continer end -->
 	