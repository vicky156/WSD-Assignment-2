package java.wsd.assignment.user;


import java.util.*;
import java.io.Serializable;
import javax.xml.bind.annotation.*;
	 
	@XmlAccessorType(XmlAccessType.FIELD)
	@XmlRootElement(name = "articles")

	public class Articles implements Serializable {
		@XmlElement(name="article")
	    private ArrayList<Article> list = new ArrayList<Article>();
	 
	    public ArrayList<Article> getList() {
	        return list;
	    }
	    public void addArticle(Article article) {
	        list.add(article);
	    }
	    public void removeArticle(Article article) {
	        list.remove(article);
	    
	    }
}
