 function openCloseToc() {
    if(document.getElementById('toc-content').style.display === 'block') {
      document.getElementById('toc-content').style.display = 'none';
      document.getElementById('toc-toggle').textContent = '펼쳐보기';
    } else {
      document.getElementById('toc-content').style.display = 'block';
      document.getElementById('toc-toggle').textContent = '접기';
    }
  }
  
  function openCloseToc1() {
	    if(document.getElementById('toc-content1').style.display === 'block') {
	      document.getElementById('toc-content1').style.display = 'none';
	      document.getElementById('toc-toggle1').textContent = '펼쳐보기';
	    } else {
	      document.getElementById('toc-content1').style.display = 'block';
	      document.getElementById('toc-toggle1').textContent = '접기';
	    }
	  }
  function openCloseToc2() {
	    if(document.getElementById('toc-content2').style.display === 'block') {
	      document.getElementById('toc-content2').style.display = 'none';
	      document.getElementById('toc-toggle2').textContent = '펼쳐보기';
	    } else {
	      document.getElementById('toc-content2').style.display = 'block';
	      document.getElementById('toc-toggle2').textContent = '접기';
	    }
	  }