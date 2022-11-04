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
		
		
		$.ajax({
				async: true
				,cache: false
				,type:"POST"
				,url: "/member/kakologin"
				,data: {
						ifmmId : $("#snsId").val() 
						} 
				,success : function(response) {
					if (response.rt == "fail") {
						alert("로그인 성공일까??  ");															
						return false;
					} else {
						alert('로그인 성공!!');	
					}
				},
				error : function(jqXHR, status, error) {
					alert("알 수 없는 에러 ~~[ " + error + " ]");
				}
			});