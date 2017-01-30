<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>Get All Courses</title>
<link rel="stylesheet"
      href="./css/styles.css"
      type="text/css"/>
<script src="./scripts/data.js"
        type="text/javascript"></script>
<script src="./scripts/utils.js"
        type="text/javascript"></script>
<script src="./scripts/param.js"
        type="text/javascript"></script>
<script type="text/javascript">
 function openPage(pageURL)
 {
 window.location.href = pageURL;
 }
</script>

</head>
<body>
<div align="center">
<table border="5">
  <tr><th class="title">Get All Courses Via Different Formats</th></tr>
</table>
<p/>
<div align="left">
	<form action="getAllCourses.jsp">
 		 <input type="button" value="go back to home page"
  			onclick="openPage('index.jsp')"/>
  </form>
</div>
<fieldset>
  <legend>Via XML</legend>
  <form action="#">
  <input type="button" value="get all courses"
         onclick='xmlCourseTable("xml-result")'/>
  </form>
  <div id="xml-result"></div>
</fieldset>
<p/>
<fieldset>
  <legend>Via JSON</legend>
  <form action="#">
  <input type="button" value="get all courses"
         onclick='jsonCourseTable("json-result")'/>
  </form>
  <div id="json-result"></div>
</fieldset>
<p/>
<fieldset>
  <legend>Via TEXT</legend>
  <form action="#">
  <input type="button" value="get all courses"
         onclick='stringCourseTable("string-result")'/>
  </form>
  <div id="string-result"></div>
</fieldset>

</div>
<p/>
<div align="center">
	<form action="getAllCourses.jsp">
 		 <input type="button" value="go back to home page"
  			onclick="openPage('index.jsp')"/>
  </form>
</div>

</body></html>