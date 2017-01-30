<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="format.GenerateXML" %>
<%@page import="java.util.List" %>
<%@page import="model.Courses" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
//response.setContentType("text/xml");
//Courses is the class that creates objects of List fo the type Course
Courses courses = new Courses();
//the HttpRequest object of the List Course assigned to List of Course courses by its setter.
courses.setCourses((List)request.getAttribute("allCourses"));

GenerateXML generatexml = new GenerateXML();
String xmlString=null;
xmlString = generatexml.getCourseXml(courses);

out.print(xmlString);
%>









