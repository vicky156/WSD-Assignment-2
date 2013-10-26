package wsd.assignment.user;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class UserApplication {
	
	private String filePath;
	private Users users;
	
	public String getFilePath() {
		return filePath;
	}
	
	public void setFilePath(String filePath) throws JAXBException, IOException {
		// Create the unmarshaller
		JAXBContext jc = JAXBContext.newInstance(Users.class);
		Unmarshaller u = jc.createUnmarshaller();
		 
		// Now unmarshal the object from the file
		FileInputStream fin = new FileInputStream(filePath);
		users = (Users)u.unmarshal(fin); // This loads the "shop" object
		fin.close();
	}
	
	public Users getUsers() {
		return users;
	}
	
	public void setUsers(Users users) {
		this.users = users;
	}
        
        public void makeXML(String name, String password, String email, String filePath) throws Exception {

        DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
        Document document = documentBuilder.parse(filePath);
        Element root = document.getDocumentElement();

        // Root Element
        Element rootElement = document.getDocumentElement();

        Collection<User> usr = new ArrayList<User>();
        usr.add(new User());

        for (User i : usr) {
            // user elements
            Element user = document.createElement("user");
            rootElement.appendChild(user);

            Element eemail = document.createElement("email");
            eemail.appendChild(document.createTextNode(email));
            user.appendChild(eemail);

            Element ename = document.createElement("name");
            ename.appendChild(document.createTextNode(name));
            user.appendChild(ename);
            
            root.appendChild(user);
        }

        DOMSource source = new DOMSource(document);

        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        Transformer transformer = transformerFactory.newTransformer();
        StreamResult result = new StreamResult("users.xml");
        transformer.transform(source, result);
    }

}
