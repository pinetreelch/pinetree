 $( function() {
	    $("#ifmmDob").datepicker({
	    	dateFormat: 'yy-mm-dd'
	    	,changeYear: true
	    	,changeMonth: true
	    	,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12']
	   		,monthNames: ['1월  ','2월  ','3월  ','4월  ','5월  ','6월  ','7월  ','8월  ','9월  ','10월  ','11월  ','12월  '] 
       		,dayNamesMin: ['월  ','화  ','수  ','목  ','금  ','토  ','일  ']  
       		,dayNames: ['월요일','화요일','수요일','목요일','금요일','토요일','일요일'] 
       		,yearRange: '1900:today'
        	, maxDate: 'today'
	    });	   
	    
	  // 	$('#ifmmDob').datepicker('setDate', '2012-02-15');
	  //  $('#shDateEnd').datepicker('setDate', 'today');
	  } );