<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>New Course</title>
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
  <tr><th class="title">New Course Insertion Interface</th></tr>
</table>
<p/>
<div align="left">
	<form action="getAllCourses.jsp">
 		 <input type="button" value="go back to home page"
  			onclick="openPage('index.jsp')"/>
  </form>
</div>
<fieldset>
  <legend>New Course Form</legend>
  <form action="#">
  <label>Course Name:</label>
  <input type="text" id="id-course-name"/>
  <label>Course Tutor:</label>
  <input type="text" id="id-course-tutor"/><p/>
  <label>Course Credits:</label>
  <select id="id-course-credits">
  <option>credits</option>
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
  </select>
  <label>Course Duration:</label>
  <select id="id-course-duration">
  <option>months</option>
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
  </select>
  <p/>
  <input type="button" value="insert new course"
         onclick='newCourse("insertion-result", "id-course-name", "id-course-credits", "id-course-duration", "id-course-tutor")'/>
  </form>
  <div id="insertion-result"></div>
</fieldset>
<p/>
</div>
<p/>
<div align="center">
	<form action="getAllCourses.jsp">
 		 <input type="button" value="go back to home page"
  			onclick="openPage('index.jsp')"/>
  </form>
</div>

</body></html>