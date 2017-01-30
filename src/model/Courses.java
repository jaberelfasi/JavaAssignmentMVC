package model;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
//ArryList of type Course
@XmlRootElement(name = "courses")
@XmlAccessorType (XmlAccessType.FIELD)
public class Courses {
    @XmlElement(name = "course")
    private List<Course> courses = null;
 
    public List<Course> getCourses() {
        return courses;
    }
 
    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }
}
