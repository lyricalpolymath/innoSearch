<!DOCTYPE html>
<html><head>
<title>InnoSearch - Searching new ways of searching - other queries</title>
<meta charset="UTF-8">
<meta name="description" content="" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<script type="text/javascript" src="static/js/prettify.js"></script>                                   <!-- PRETTIFY -->
<script type="text/javascript" src="static/js/kickstart.js"></script>                                  <!-- KICKSTART -->
<link rel="stylesheet" type="text/css" href="static/css/kickstart.css" media="all" />                  <!-- KICKSTART -->
<link rel="stylesheet" type="text/css" href="static/style.css" media="all" />                          <!-- CUSTOM STYLES -->
</head><body><a id="top-of-page"></a>

<div id="wrap" class="clearfix pop">
	<div class="col_12">
		<h2>InnoSearch - ALL Queries</h2>
		<p>These are all the queries ever made with the InnoSearch search engine.<br>
		They are particularly used in the "CreativeFibo" submode<br>
		return to the <a href="/">home screen</a> to read more about it<br><br>
		<span style="color:#F00">WARNING:</span> I take no responsability for the things people have searched with this engine! <br>
		You might find offending text! If you are subsceptible, please don't read ahead.
		 </p>
		
		<table class="tight sortable">
			<thead>
				<tr>
					<th>request time</th>
					<th>session id</th>
					<th>query</th>
				</tr>
			</thead>
			<tbody>
			
		%for oq in otherqueries:
		<tr>
			<td>{{ oq['dtime'] }}</td>
			<td>{{ oq['sessionid'] }}</td>
			<td><b>{{ oq['query'] }}</b></td>
		</tr>
		%end
			</tbody>
		</table>
	</div>
</div> <!-- END WRAP -->

</body>
</html>