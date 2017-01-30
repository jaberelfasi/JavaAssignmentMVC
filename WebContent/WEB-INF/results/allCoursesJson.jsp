<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="format.GenerateJSON" %>
<%@page import="java.util.List" %>
<%@page import="model.Courses" %>

<%
//Courses is the class that creates objects of List fo the type Course
Courses courses = new Courses();
//the HttpRequest object of the List Course assigned to List of Course by its setter.
courses.setCourses((List)request.getAttribute("allCourses"));

GenerateJSON generatejson = new GenerateJSON();
String jsonString=null;
//this function only worked when placed the gson jar library in the web area just like what happened with mysql
jsonString = generatejson.getCourseJson(courses);
out.print(jsonString);
%>





