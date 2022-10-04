
		


/* 아이디 중복확인 --------------------------------------------------------- */
$("#ifmmId").on("keyup", function(){
		var id = document.getElementById('ifmmId');
		var idlab = document.getElementById('idlabel');
		var idcheck = id.value;
		const regex = /^[a-z|A-Z|0-9|]+$/;
		
		
		if (idcheck.length > 0){
			if(regex.test(idcheck) && (idcheck.length > 5 && idcheck.length < 20)){
				
			$.ajax({
				url : "/member/testaction",
				
				type : 'post',
	 			
	 			data : {
	 				ifmmId : idcheck,
	 			},
	 			
	 			success : function(data) {
	 				
	 			 	if(data.rt == "success"){
	 					   $('#idlabel').text('※ 사용가능한 아이디입니다.');
	 					   idlab.style.color = "rgb(64, 132, 88)";
	 					   id.classList.remove('is-invalid','is-valid'); 
	 					   id.classList.add('is-valid');
	 					   
	 				 } else {
	 					   $('#idlabel').text('이미 존재하는 아이디입니다.');
	 					   idlab.style.color = "rgb(204, 68, 74)";
	 					   id.classList.remove('is-invalid','is-valid'); 
	 					   id.classList.add('is-invalid');
	 				 }
	 				
	 		     },
	 		          
	 			error : function(request,_status,error){ 
	 							
	 				  	console.log("code: " + request.status)	
	 			        console.log("message: " + request.responseText)
	 			        console.log("error: " + error);
	 				
	 				 }	     
	 		});	
				
			} else {
				id.classList.add('is-invalid');
				idlab.style.color = "rgb(204, 68, 74)";;
				$('#idlabel').text('5~20 사이 영어와 숫자를 이용해 주세요 '); 
			}
		} else {
			idlab.style.color = "";
		   	id.classList.remove('is-invalid','is-valid'); 
			$('#idlabel').text('아이디 ');
		   	
		}
});
	

// 비밀번호 조건 확인

	$("#ifmmPwd").on("keyup", function(){
		
		const regex1 = /^[a-z|A-Z|0-9|\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]+$/; 				// 입력받은 문자가a-z A-Z 0-9  이루어진 문자열인지?
		const regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/g;								// 특수문자가 있는지?
		const pwdcheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$. %^&*-]).{8,20}$/;
		
		var pwdlab = document.getElementById('pwdlabel');
		var pwd = document.getElementById('ifmmPwd');
		var pwdval = pwd.value;
		var pwdlength = pwdval.length;
		
		
		if(pwdlength > 0){
			
			if( pwdcheck.test(pwdval) ){
				
				$('#pwdlabel').text('※ 사용가능한 비밀번입니다.');
			   	pwdlab.style.color = "rgb(64, 132, 88)";
			   	pwd.classList.remove('is-invalid','is-valid'); 
			   	pwd.classList.add('is-valid');
			   	
			} else{
				
				$('#pwdlabel').text(' 8~20 자리 영문 대소문자, 숫자, 특수문자가 각각 1개 이상 ');
			   	pwdlab.style.color = "rgb(204, 68, 74)";
			   	pwd.classList.remove('is-invalid','is-valid'); 
			   	pwd.classList.add('is-invalid');
			}
		} else {
			pwd.classList.remove('is-invalid','is-valid');
			pwdlab.style.color = "";
			$('#pwdlabel').text(' 비밀번호  ');
		}

	});
	
	
	
// 비밀번호 확인

	$("#ifmmPwdCheck").on("keyup", function(){
		
		const pwdcheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$. %^&*-]).{8,20}$/;
		var pwdlab = document.getElementById('pwdlabel');
		var pwd = document.getElementById('ifmmPwd');
		var pwdval = pwd.value;
		var pwdlength = pwdval.length;
		
		var pwdre = document.getElementById('ifmmPwdCheck');
		var pwdreVal = pwdre.value;
		var labpwdre = document.getElementById('labelpwdre');
		
		if( pwdcheck.test(pwdval) ){
			if (pwdval == pwdreVal){
				
				$('#labelpwdre').text('※ 비밀번호가 일치합니다.');
				   	labpwdre.style.color = "rgb(64, 132, 88)";
				   	pwdre.classList.remove('is-invalid','is-valid'); 
				   	pwdre.classList.add('is-valid');
				   	
			} else{
				
				$('#labelpwdre').text('비밀번호가 일치하는지 확인해주세요 ');
				   	labpwdre.style.color = "rgb(204, 68, 74)";
				   	pwdre.classList.remove('is-invalid','is-valid'); 
				   	pwdre.classList.add('is-invalid');
			}
		} else {
			
					$('#labelpwdre').text('양식에 맞는 올바른 비밀번호를 먼저 작성해주세요  ');
					
				   	labpwdre.style.color = "rgb(204, 68, 74)";
				   	pwdre.classList.remove('is-invalid','is-valid'); 
				   	pwdre.classList.add('is-invalid');
				   	pwd.focus();
		}
	});
	
	
	// 이메일 형식 확인 

	$("#ifmmEmail").on("focusout", function(){
		const emailcheck = /[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]$/i;
		var emailad = document.getElementById('ifmmEmail');
		var emailadval = emailad.value;
		var emaillab = document.getElementById('labelemail');
		
		if(emailcheck.test(emailadval)){
			
			$('#labelemail').text('※ 사용가능한 이메일입니다.');
			emaillab.style.color = "rgb(64, 132, 88)";
			emailad.classList.remove('is-invalid','is-valid');
			
		}	else {
			
			$('#labelemail').text(' ex) abcde12345@naver.com');
			emailad.classList.add('is-invalid');
			emaillab.style.color = "rgb(204, 68, 74)";
			
		}	
		
	});
	
	//이름	
	$("#ifmmName").on("focusout", function(){
		const namecheck = /^[가-힣]{2,4}$/;
		
		var nameid = document.getElementById('ifmmName');
		var nameval = nameid.value; 
		var namelab = document.getElementById('labelname');
		
		if(namecheck.test(nameval)){
			nameid.classList.remove('is-invalid');
			namelab.style.color = "rgb(64, 132, 88)";
		}	else {
			nameid.classList.add('is-invalid');
			namelab.style.color = "rgb(204, 68, 74)";			
		}
	});
	
	

