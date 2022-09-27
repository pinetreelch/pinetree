$("#addrClear").on("click", function(){
	
	document.getElementById('sample4_postcode').value = null;
	document.getElementById('sample4_roadAddress').value = null;
	document.getElementById('sample4_jibunAddress').value = null;
	document.getElementById('sample4_detailAddress').value = null;
	document.getElementById('sample4_extraAddress').value = null; 
	document.getElementById('guide').value = null;
	document.getElementById('xcoord').value = null;
	document.getElementById('ycoord').value = null;
	
	/* marker.setMap(null); */ 
});