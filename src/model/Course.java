package model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Course {
	
	
	private String CourseID, CourseName, CourseCredits, CourseDuration, CourseTutor=null;
	
	public String getCourseID() {
		return CourseID;
	}
	
	@XmlElement
	public void setCourseID(String courseID) {
		this.CourseID = courseID;
	}

	public String getCourseName() {
		return CourseName;
	}
	
	@XmlElement
	public void setCourseName(String courseName) {
		this.CourseName = courseName;
	}

	public String getCourseCredits() {
		return CourseCredits;
	}
	
	@XmlElement
	public void setCourseCredits(String courseCredits) {
		this.CourseCredits = courseCredits;
	}

	public String getCourseDuration() {
		return CourseDuration;
	}

	@XmlElement
	public void setCourseDuration(String courseDuration) {
		this.CourseDuration = courseDuration;
	}

	public String getCourseTutor() {
		return CourseTutor;
	}

	@XmlElement
	public void setCourseTutor(String courseTutor) {
		this.CourseTutor = courseTutor;
	}
}
