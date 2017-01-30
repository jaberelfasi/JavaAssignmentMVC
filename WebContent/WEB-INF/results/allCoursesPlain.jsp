<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@page import="model.Course" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%
List<Course> courses = new ArrayList<Course>();
courses= (List)request.getAttribute("allCourses");
for(int i=0; i<courses.size(); i++){
	out.print(courses.get(i).getCourseID()+", ");
	out.print(courses.get(i).getCourseName()+", ");
	out.print(courses.get(i).getCourseCredits()+", ");
	out.print(courses.get(i).getCourseDuration()+", ");
	out.print(courses.get(i).getCourseTutor()+", ");
}
%>