<script>	
	window.onscroll = function() {
		scrollFunction()
	};

	function scrollFunction() {
		if (document.body.scrollTop > 20
				|| document.documentElement.scrollTop > 20) {
			document.getElementById("scrollBtn").style.display = "block";
		} else {
			document.getElementById("scrollBtn").style.display = "none";
		}
	}

	// When the user clicks on the button, scroll to the top of the document
	function topFunction() {
		document.body.scrollTop = 0; // For Safari
		document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
	}
</script>

<a href="#" onclick="topFunction()" id="scrollBtn" title="Torna in alto" class="ap-scrollup btn btn-secondary">
	<i class="fa fa-caret-up"></i>
</a>
