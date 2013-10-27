package java.wsd.assignment.user;

import javax.xml.bind.annotation.*;
import java.io.Serializable;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement
public class Article implements Serializable {
	
	private String title;
	private int date;
	
	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Article(String title, int date) {
		super();
		this.title = title;
		this.date = date;

	}

	public String getTitle() {
		return title;
	}

	public void set(String title) {
		this.title = title;
	}

	public int getDate() {
		return date;
	}

	public void setDate(int date) {
		this.date = date;
	}

}
