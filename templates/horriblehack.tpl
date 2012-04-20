<html>
<script type="text/javascript">
<!--
function horrible_Hack_Redirector() {
	// for quick debugging turn to true - 
	// this will reveal the body and parameters instead of skipping to the load page
	var debugme = false;
	
	if (!debugme) {
		//-------- STEP1 - open the browser search in another tab
		
		//launches the link simulating the click function
		//I have to do this double horrible hack because I can't figure out how to properly escape the url parameters
		 
		document.getElementById("linkToOpen").click();
		
		
		// this works but has problems encoding the url
		// it converts the proper url &start=990  to   &amp;start=990   which google doesn't recognize
		//window.open("{{ urlToOpen }}", "searchtab"); 
		
		/* these don't work
		var urlToOpen = encodeURIComponent({{ urlToOpen }});
		var urlToOpen = escape( {{ urlToOpen }} );
		window.open(urlToOpen, "searchtab");
		//*/
		
		
		//--------- STEP 2 - go back to the previous 2 pages (before search)
		//window.location.history.go(-1); //doesn't work
		window.open("../", "_self");
	}
}
//-->
</script>

<body onload="horrible_Hack_Redirector()"> 

<h5>Form Object Paramenters</h5>
%for key in formObj:
	{{ key }} = {{ formObj[key] }} <br> 
%end

urlToOpen = <a id="linkToOpen" href="{{ formObj['combinedurl'] }}" target="searchtab">{{ formObj['combinedurl'] }}</a>


</body>
</html>