function getCourseTable(rows) {
  var headings = 
    [ "Course ID", "Course Name", "Course Credits", "Course Duration", "Course Tutor" ];
  return(getTable(headings, rows));
}

function xmlCourseTable(resultRegion) {
	  var address = "queryCourses";
	  var data = "format=xml";
	  ajaxPost(address, data, 
	           function(request) { 
		  				showXmlCourses(request, resultRegion); 
	           });
	}

function xmlCourseTableSearched(resultRegion, searchterm) {
	  var address = "queryCourses";
	  var check = getValue(searchterm);
	  if(check == ""){
		  htmlInsert(resultRegion,"please enter a search word");
	  }else{
		  var data = makeParamString(searchterm, "xml");
		  ajaxPost(address, data, 
		           function(request) { 
			  				showXmlCourses(request, resultRegion); 
		           });
	  }
	  
	}

function showXmlCourses(request, resultRegion) {
  if ((request.readyState == 4) &&
      (request.status == 200)) {
    var xmlDocument = request.responseXML;
    var courses = 
      xmlDocument.getElementsByTagName("course");
    var rows = new Array();
    var j=0;
    for(var i=0; i<courses.length; i++) {
      var course = courses[i];
      var subElements = 
        ["courseID", "courseName", "courseCredits", "courseDuration","courseTutor"];
      rows[i] = getElementValues(course, subElements);
      j=j+1;
    }

    var table = getCourseTable(rows);
    if(j>0){
    	 htmlInsert(resultRegion, table);
    }else{
    	htmlInsert(resultRegion, "NO Records to show");
    }
   
  }
}

function jsonCourseTable(resultRegion) {
	  var address = "queryCourses";
	  var data = "format=json";
	  ajaxPost(address, data, 
	           function(request) { 
	             showJsonCourseInfo(request, resultRegion); 
	           });
	}

function jsonCourseTableSearched(resultRegion, searchterm) {
	  var address = "queryCourses";
	  var check = getValue(searchterm);
	  if(check == ""){
		  htmlInsert(resultRegion,"please enter a search word");
	  }else{
		  var data = makeParamString(searchterm, "json");
		  ajaxPost(address, data, 
		           function(request) { 
		             showJsonCourseInfo(request, resultRegion); 
		           });
	  }
	 
	}

	function showJsonCourseInfo(request, resultRegion) {
	  if ((request.readyState == 4) &&
	      (request.status == 200)) {
	    var rawData = request.responseText;
	    var data = eval("(" + rawData + ")");
	    var rows = new Array();
	    var j=0;
	    for(var i=0; i<data.courses.length; i++) {
	      rows[i] = [data.courses[i].CourseID, data.courses[i].CourseName, data.courses[i].CourseCredits, data.courses[i].CourseDuration, data.courses[i].CourseTutor];
	      j=j+1;
	    }
	    var table = getCourseTable(rows);
	    var k=0;
	    if(data.courses.length!=0){
	    	 htmlInsert(resultRegion, table);
	    }else{
	    	htmlInsert(resultRegion, "NO Records to show");
	    }
	  }
	}
	
	function stringCourseTable(resultRegion) {
		  var address = "queryCourses";
		  var data = "format=string";
		  ajaxPost(address, null, 
		           function(request) { 
		             showStringCourseInfo(request, resultRegion); 
		           });
		}
	
	function stringCourseTableSearched(resultRegion, searchterm) {
		  var address = "queryCourses";
		  var check = getValue(searchterm);
		  if(check == ""){
			  htmlInsert(resultRegion,"please enter a search word");
		  }else{
			  var data = makeParamString(searchterm, "string");
			  ajaxPost(address, data, 
			           function(request) { 
			             showStringCourseInfo(request, resultRegion); 
			           });
		  }
		  
		}

	function showStringCourseInfo(request, resultRegion) {
		 if ((request.readyState == 4) &&
		     (request.status == 200)) {
		    var rawData = request.responseText;
		    var courses = rawData.split(",");
		    var rows = new Array();
		    j=0;
		    for(var i=0; i<(courses.length-1)/5; i++) {
		    		rows[i]=[courses[j++], courses[j++], courses[j++], courses[j++], courses[j++]];
		      }
		    }
		  
		  var table = getCourseTable(rows);
		  if(courses.length-1!=0){
		    	 htmlInsert(resultRegion, table);
		    }else{
		    	htmlInsert(resultRegion, "NO Records to show");
		    }
		    
		    
		  }
	
	function newCourse(resultRegion, newCourseName, newCourseCredits, newCourseDuration, newCourseTutor){
		var courseName = getValue(newCourseName);
		if(!validData(getValue(newCourseName),getValue(newCourseCredits),getValue(newCourseDuration),getValue(newCourseTutor))){
			htmlInsert(resultRegion, "please ensure you have entered the data correctly");
		}else{
			var insertParamString=makeInsertParamString(newCourseName, newCourseCredits, newCourseDuration, newCourseTutor);
			var address="insertCourse";
			ajaxPost(address, insertParamString, 
			           function(request) { 
			             sendCourseToServlet(request, resultRegion); 
			           });
		}
		
		
	}
	
	function sendCourseToServlet(request, resultRegion){
		if ((request.readyState == 4) &&
			     (request.status == 200)){
			var insertionResult = request.responseText;
			htmlInsert(resultRegion, insertionResult);
		}
	}
	
	
	
	