
// 지도 생성 

var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
 	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
 	level: 5//지도의 레벨(확대, 축소 정도)
 };

 var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
 
 // ------------------------------------------------------------------------------
 
 //------------------------------------------------

	function sample4_execDaumPostcode() {
	
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            
	            var roadAddr = data.roadAddress; // 도로명 주소 변수
	            var extraRoadAddr = ''; // 참고 항목 변수
	            var xcord='';
	            var ycord='';
	            var xcordInt = 0;
	            var ycordInt = 0;
	            var geocoder = new kakao.maps.services.Geocoder();
	            var callback = function(result, status) {
	        		
	        	    if (status === kakao.maps.services.Status.OK) {
	        	    	
	        	    	var xcord = JSON.stringify(result[0].x);
	        	    	var ycord = JSON.stringify(result[0].y);
	        	    	
	        	    	var xcordInt = parseFloat(result[0].x);
	        	    	var ycordInt = parseFloat(result[0].y);
	        	    	
	        	    	document.getElementById('xcoord').value = xcordInt; 
	        	    	document.getElementById('ycoord').value = ycordInt; 
	        	    	
	        	    	
	        	            
	 	                // 이동할 위도 경도 위치를 생성합니다 
	 	                var moveLatLon = new kakao.maps.LatLng(ycordInt, xcordInt);
	 	                
	 	                // 지도 중심을 이동 시킵니다
	 	                map.setCenter(moveLatLon);
	 	                
	 	           		// 마커가 표시될 위치입니다 
	 	               var markerPosition  = new kakao.maps.LatLng(ycordInt, xcordInt); 
	 	                
	 	           		
	 	           		// 마커를 생성합니다
	 	             	 var marker = new kakao.maps.Marker({
	 	                  position: markerPosition
	 	             	 });
	 	           		
	 	             // 마커가 지도 위에 표시되도록 설정합니다
	 	             	marker.setMap(map);
	 	             
	 	             
	        	        console.log(result);
	        	    }
	        	};
	            
	            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            // 건물명이 있고, 공동주택일 경우 추가한다.
	            if(data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	            if(extraRoadAddr !== ''){
	                extraRoadAddr = ' (' + extraRoadAddr + ')';
	            }
				
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('sample4_postcode').value = data.zonecode;
	            document.getElementById("sample4_roadAddress").value = roadAddr;
	            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	            
	            //---------------------------------------------------------
	            
	           
	            
				//-----------------------------------------------------------------
	            
	            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	            if(roadAddr !== ''){
	                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	            } else {
	                document.getElementById("sample4_extraAddress").value = '';
	            }
	
	            var guideTextBox = document.getElementById("guide");
	            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	            if(data.autoRoadAddress) {
	                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                guideTextBox.style.display = 'block';
	
	            } else if(data.autoJibunAddress) {
	                var expJibunAddr = data.autoJibunAddress;
	                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                guideTextBox.style.display = 'block';
	            } else {
	                guideTextBox.innerHTML = '';
	                guideTextBox.style.display = 'none';
	            }
	            
 				//---------------------------------------------------------
	            geocoder.addressSearch(roadAddr, callback);
				//----------------------------------------------------------------- 
	        }
	    
	    }).open();
	  
	}