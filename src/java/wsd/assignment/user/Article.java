package java.wsd.assignment.user;

import javax.xml.bind.annotation.*;
import java.io.Serializable;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement
public class Article implements Serializable {
	
	private String title;
	private int year;
	private int date;
	private int month;
	private String body;
	
	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Article(String title, int date, int year, int month, String body) {
		super();
		this.title = title;
		this.date = date;
		this.year = year;
		this.month = month;
		this.body = body;

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
	
	
	
	public void setYear(int year) {
		this.year = year;
	}



	public void setMonth(int month) {
		this.month = month;
	}
	
	@XmlElement(name = "year")
	public int getYear() {
		return year;
	}
	@XmlElement(name = "month")
	public int getMonth() {
		return month;
	}
	
	public void setBody(String body {
		this.body = body;
	}
	
	@XmlElement(name = "body")
	public String getBody() {
		return body;
	}

}
