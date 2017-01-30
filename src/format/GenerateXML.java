package format;

import java.io.StringWriter;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;

import model.Courses;

public class GenerateXML {
	public GenerateXML() {
		super();
	}

	public String getCourseXml(Courses course) {
		String xmlString = null;
		try {
			JAXBContext jaxbContext = JAXBContext.newInstance(Courses.class);
			Marshaller jaxbMarshaller = jaxbContext.createMarshaller();
			jaxbMarshaller.setProperty(Marshaller.JAXB_FRAGMENT, true);
			java.io.StringWriter sw = new StringWriter();
			jaxbMarshaller.marshal(course, sw);
			xmlString = sw.toString();
		} catch (JAXBException e) {
			e.printStackTrace();
		}
		return xmlString;
	}

}
