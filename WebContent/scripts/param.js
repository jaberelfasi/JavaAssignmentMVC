function makeParamString(searchterm, format) {
  var paramString =
    "coursename=" + getValue(searchterm) + 
    "&format=" + format;
  return(paramString);
}

function validData(newCourseName, newCourseCredits, newCourseDuration, newCourseTutor){
	if(isNaN(newCourseCredits)||isNaN(newCourseDuration)||newCourseName==""||newCourseTutor==""){
		return false;
	}else
		return true;
}

function makeInsertParamString(courseName, courseCredits, courseDuration, courseTutor){
	var insertParamString=
	"CourseName="+getValue(courseName)+
	"&CourseCredits="+getValue(courseCredits)+
	"&CourseDuration="+getValue(courseDuration)+
	"&CourseTutor="+getValue(courseTutor);
	return(insertParamString);
}
