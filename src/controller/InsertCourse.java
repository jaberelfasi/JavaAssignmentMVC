package controller;
//this java bean is part of the CONTROLLER in the context of MVC
import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Course;
import model.CourseDAO;

@WebServlet("/insertCourse")
public class InsertCourse extends HttpServlet {
	public void doGet(HttpServletRequest request, 
			HttpServletResponse response)
			throws ServletException, IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String insertResult;
		String outputpage="/WEB-INF/results/insertionResult.jsp";
		Course newCourse = new Course();
		Course lastIDcourse = new Course();
		CourseDAO dao = new CourseDAO();
		
		//receives the parameters from the request
		newCourse.setCourseName(request.getParameter("CourseName"));
		newCourse.setCourseCredits(request.getParameter("CourseCredits"));
		newCourse.setCourseDuration(request.getParameter("CourseDuration"));
		newCourse.setCourseTutor(request.getParameter("CourseTutor"));
		
		//checks for validation
		if(newCourse.getCourseName()==null||newCourse.getCourseCredits()==null||
				newCourse.getCourseDuration()==null||newCourse.getCourseTutor()==null){
				
				//sends error messaage
				insertResult="Not sufficient parameters were passed to servlet";
				response.setContentType("text/plain");
				request.setAttribute("insertResult", insertResult);
		        out.println(insertResult);
		        request.getRequestDispatcher(outputpage).include(request, response);
		}else{
				//inserts in the database
				lastIDcourse= dao.getLastCourseID();
				int newID = Integer.parseInt(lastIDcourse.getCourseID())+1;
				newCourse.setCourseID(Integer.toString(newID));
				insertResult = dao.insertCourse(newCourse);
				response.setContentType("text/plain");
				request.setAttribute("insertResult", insertResult);
		        out.println(insertResult);
		        request.getRequestDispatcher(outputpage).include(request, response);
		}
		 
	}
	
	public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            		throws ServletException, IOException {
					doGet(request, response);
			}
}
