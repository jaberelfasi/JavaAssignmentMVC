package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

public class CourseDAO{
	
	Connection conn = null;
	Statement stmt = null;
	Course course = null;
	
		
		private void openConnection(){
			// loading jdbc driver for mysql
			try {
				Class.forName("com.mysql.jdbc.Driver").newInstance();
			} catch (Exception e) {
				System.out.println(e);
			}

			// connecting to database
			try {
				conn = DriverManager.getConnection("jdbc:mysql://mudfoot.doc.stu.mmu.ac.uk:3306/elfasij?user=elfasij&password=Niffgars5");
				stmt = (Statement)conn.createStatement();
			} catch (SQLException se) {
				System.out.println(se);
			}
		}
		
		private void closeConnection() {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		private Course getNextCourse(ResultSet rs) {
			Course thisCourse = null;
			try {thisCourse = new Course();
			thisCourse.setCourseID(rs.getString("CourseID"));
			thisCourse.setCourseName(rs.getString("CourseName"));
			thisCourse.setCourseCredits(rs.getString("CourseCredits"));
			thisCourse.setCourseDuration(rs.getString("CourseDuration"));
			thisCourse.setCourseTutor(rs.getString("CourseTutor"));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return thisCourse;
		}
	
		//a method that will retrieve all record sets from the db place it in ArrayList of Course.
		//and return the ArrayList of Course
		public List<Course> getAllCourses(){
			//empty ArrayList of Course ready to be returned later
			List<Course> allCourses = new ArrayList<Course>();
			openConnection();
			// Create select statement and execute it
			try {
				String query = "select * from courseinfo";
				ResultSet rs1 = stmt.executeQuery(query);
				//fill the result sets in the ListArray
				while (rs1.next()) {
					course = getNextCourse(rs1);
					allCourses.add(course);
				}

				stmt.close();
				closeConnection();
			} catch (SQLException ex) {
				System.out.println(ex);
			}
			return allCourses;
		}
		
		//this method compares the string with the course names from the database
		//and returns the possible matching courses.
		public List<Course> getCourse(String searchTerm){
			List<Course> matchingCourses = new ArrayList<Course>();
			openConnection();
			try{
				String query = "select * from courseinfo where CourseName Like '%"+searchTerm+"%'";
				ResultSet rs2 = stmt.executeQuery(query);
				//fill the result sets in the ListArray
				while(rs2.next()){
					course = getNextCourse(rs2);
					matchingCourses.add(course);
				}
			}catch(SQLException ex){
				System.out.println(ex);
			}
			return matchingCourses;
		}
		
		
		public String insertCourse(Course course){
			String insertResult = "something wrong";
			try{
				openConnection();
				String query ="insert into courseinfo "
						+ "(CourseID, CourseName, CourseCredits, CourseDuration, CourseTutor)"
						+ "values (?, ?, ?, ?, ?)";
				PreparedStatement prepStmt = conn.prepareStatement(query);
				prepStmt.setString(1, course.getCourseID());
				prepStmt.setString(2, course.getCourseName());
				prepStmt.setString(3, course.getCourseCredits());
				prepStmt.setString(4, course.getCourseDuration());
				prepStmt.setString(5, course.getCourseTutor());
				prepStmt.execute();
				stmt.close();
				closeConnection();
				insertResult="(1) Course was added successfully";// 1 represents a successful operation/ 0 represents failed operation
			}catch(SQLException ex){
				System.out.println(ex);
			}
			return insertResult;
		}
		
		//to calculate the next id
		public Course getLastCourseID(){
			openConnection();
			try{
				String query = "select * from elfasij.courseinfo where CourseID = (select max(CourseID) from elfasij.courseinfo);";
				ResultSet rs2 = stmt.executeQuery(query);
				//fill the result sets in the ListArray
				while(rs2.next()){
					course = getNextCourse(rs2);
				}
			}catch(SQLException ex){
				System.out.println(ex);
			}
			return course;
		}
		
		
}

