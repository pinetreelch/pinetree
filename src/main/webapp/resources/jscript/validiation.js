/* 아이디 중복확인 --------------------------------------------------------- */
$("#ifmmId").on("focusout", function(){
	
		var idcheck = document.getElementById('ifmmId').value;

		$.ajax({
			url : "/member/testaction",
			
			type : 'post',
			
			data : {
				ifmmId : idcheck,
			},
			
			success : function(data) {
				/*
				if(data == '1'){
					document.querySelector('#spanmessage').innerHTML='<span style = "color: green; letter-spacing: 0.1px;"> ※ 사용가능한 &nbsp; 아이디입니다. </span>';
				} else { 
					document.querySelector('#spanmessage').innerHTML='<span style = "color: red; letter-spacing: 0.1px;"><i class="fa-solid fa-circle-exclamation"></i> 이미 존재하는 아이디 입니다.</span>';
				}
				*/
			 	if(data.rt == "success"){
					 // alert('success');
				 } else {
					 // alert('fail');
				 }
				
		     },
		          
			error : function(request,_status,error){ 
							
				  	console.log("code: " + request.status)	
			        console.log("message: " + request.responseText)
			        console.log("error: " + error);
				
				 }	     
		});	
	
});
