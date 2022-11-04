Kakao.init('6875fc67f5a6c9e3660d59324e27052a'); // test 용
    	console.log(Kakao.isInitialized());
/*     	Kakao.init('ec2655da82c3779d622f0aff959060e6');
    	console.log(Kakao.isInitialized()); */
    	
    	$("#kakaoBtn").on("click", function() {
    		/* Kakao.Auth.authorize({
   		      redirectUri: 'http://localhost:8080/member/kakaoCallback',
   		    }); */
    		
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
   		        	  console.log("picture : " + account.profile.thumbnail_image_url);
   		        	  console.log("picture : " + account.gender);
   		        	  console.log("picture : " + account.birthday);
   		        	  console.log("picture : " + account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
  	        	  
	  	        	  $("input[name=snsId]").val("카카오로그인");
	  	        	  $("input[name=name]").val(account.profile.nickname);
	  	        	  $("input[name=phone]").val(account.profile.phone_number);
	  	        	  $("input[name=email]").val(account.email);
	  	        	  $("input[name=dob]").val(account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
	  	        	  $("input[name=snsImg]").val(account.profile.thumbnail_image_url);
	  	        	  $("input[name=token]").val(accessToken);
	  	        	  
	  	        	  if (account.gender === "male") {
	  	        		  $("input[name=gender]").val(5);
	          		  } else {
	          			  $("input[name=gender]").val(6);
         			  } 
	  	        	  
	  	        	 /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */
					
	  	        	  $.ajax({
						async: true
						,cache: false
						,type:"POST"
						,url: "/member/kakaoLoginProc"
						,data: {"name": $("input[name=name]").val(), "snsId": $("input[name=snsId]").val(), "phone": $("input[name=phone]").val(), "email": $("input[name=email]").val(), "gender": $("input[name=gender]").val(), "dob": $("input[name=dob]").val(), "snsImg": $("input[name=snsImg]").val(), "token": $("input[name=token]").val()}
						,success : function(response) {
							if (response.rt == "fail") {
								alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
								return false;
							} else {
								window.location.href = "/sportMain";
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