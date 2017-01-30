<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>Search Courses</title>
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
  <tr><th class="title">Search Courses And Get Results Via Different Formats</th></tr>
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
  <label for="search-term-xml">Search Word:</label>
  <input type="text" id="search-term-xml" name="textbx1"/>
  <input type="button" value="get all courses"
         onclick='xmlCourseTableSearched("xml-search-result", "search-term-xml")'/>
  </form>
  <div id="xml-search-result"></div>
</fieldset>
<p/>
<fieldset>
  <legend>Via JSON</legend>
  <form action="#">
  <label for="search-term-json">Search Word:</label>
  <input type="text" id="search-term-json" name="textbx2"/>
  <input type="button" value="get all courses"
         onclick='jsonCourseTableSearched("json-search-result", "search-term-json")'/>
  </form>
  <div id="json-search-result"></div>
</fieldset>
<p/>
<fieldset>
  <legend>Via TEXT</legend>
  <form action="#">
  <label for="search-term-string">Search Word:</label>
  <input type="text" id="search-term-string" name="textbx3"/>
  <input type="button" value="get all courses"
         onclick='stringCourseTableSearched("string-search-result", "search-term-string")'/>
  </form>
  <div id="string-search-result"></div>
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