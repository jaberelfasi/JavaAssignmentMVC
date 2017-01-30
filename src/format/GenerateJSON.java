package format;


import model.Courses;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;



public class GenerateJSON {
	
	public String getCourseJson(Courses courses){
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String jsonString= gson.toJson(courses);
		return jsonString;
	}

}
