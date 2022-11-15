<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="en" style="margin: 0">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title> 홈 </title>
		<meta name="description" content="Hover Effect Ideas: Inspiration for subtle hover effects" />
		<meta name="keywords" content="hover effect, inspiration, grid, thumbnail, transition, subtle, web design" />
		<meta name="author" content="Codrops" />
		
		
		<link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="../../../resources/css/normalize123.css" />
		<link rel="stylesheet" type="text/css" href="../../../resources/css/demo123.css" />
		<link rel="stylesheet" type="text/css" href="../../../resources/css/set1123.css" />

	</head>
	<body style="overflow:hidden"> 
		<form method="post" name="form">
		<div class="container" >			
			<div class="content" style="padding-top: 310px;"  >
				<h2 style="position: relative; bottom: 100px;">
						 	<img src="https://active.ridibooks.com/navbar/icons/web/ridi.f50c563403f615565a7328888ba19f87.svg"  style="width:61px; height:40px; padding: 0px;">
						 	<img src="https://active.ridibooks.com/navbar/icons/web/genre_books.24933faed881f7e79f1f8d5f0c529370.svg" style="width:122px; height: 40px; padding: 4px;">
				</h2>
				<div class="grid">
				
					<figure class="effect-honey" style="border-radius: 5px;" >
						<img src="../../../resources/images/ridi3.png" alt="img04"/>
						
						<figcaption id = "clickthis">
							<h2 >사용자 UI <span> &nbsp; 바로가기  </span> <i> &nbsp; <i class="fa-regular fa-circle-right"></i> </i></h2>
							<a href="#">View more</a>
						</figcaption>
									
					</figure>
					
					<figure class="effect-honey" style="border-radius: 5px;">
						<img src="../../../resources/images/admi3.png" alt="img05"/>
						
						<figcaption  id = "clickthis2">
							<h2>관리자 UI <span>&nbsp; 바로가기</span> <i> &nbsp; <i class="fa-regular fa-circle-right"></i> </i></h2>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					
				</div>
							
			</div>
			 
		</div>
		
		<script>
			// For Demo purposes only (show hover effect on mobile devices)
			[].slice.call( document.querySelectorAll('a[href="#"') ).forEach( function(el) {
				el.addEventListener( 'click', function(ev) { ev.preventDefault(); } );
			} );
		</script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
		<script>
			var form = $("form[name=form]");
			
			$("#clickthis").click(function(){
				form.attr("action", "/main/").submit();
			});
			
			
		</script>
		<script>
			$("#clickthis2").click(function(){
				form.attr("action", "/codeGroup/codeGroupList").submit(); 
			});
		</script>
		</form>
	</body>
</html>
