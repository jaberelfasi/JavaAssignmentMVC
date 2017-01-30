<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>My Web Services Project</title>
<link rel="stylesheet"
      href="./css/styles.css"
      type="text/css"/>
      
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
  <tr><th class="title">My Web Services Project</th></tr>
</table>
<p/>
<fieldset>
  <legend>To Retrieve All Courses From The Database</legend>
  <form action="getAllCourses.jsp">
  <input type="button" value="Show in different formats"
  			onclick="openPage('getAllCourses.jsp')"/>
  </form>
  <div id="xml-result"></div>
</fieldset>
<p/>
<fieldset>
  <legend>To Search For A Particular Course</legend>
  <form action="#">
  <input type="button" value="go to search interface"
         onclick="openPage('searchCourses.jsp')"/>
  </form>
  <div id="json-result"></div>
</fieldset>
<p/>
<fieldset>
  <legend>To Insert A New Course Into The Database</legend>
  <form action="#">
  <input type="button" value="new course insertion interface"
         onclick="openPage('insertCourse.jsp')"/>
  </form>
  <div id="string-result"></div>
</fieldset>

</div>


</body></html>