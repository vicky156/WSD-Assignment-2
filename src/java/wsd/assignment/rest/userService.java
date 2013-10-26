package wsd.assignment.rest;

import wsd.assignment.user.*;
import javax.servlet.ServletContext;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import javax.xml.bind.JAXBException;
import wsd.assignment.user.UserApplication;

import java.io.*;

@Path("/userApp")
public class userService {
	@Context
	private ServletContext application;

	private UserApplication getUserApp() throws JAXBException, IOException {
		// The web server can handle requests from different clients in
		// parallel.
		// These are called "threads".
		//
		// We do NOT want other threads to manipulate the application object at
		// the same
		// time that we are manipulating it, otherwise bad things could happen.
		//
		// The "synchronized" keyword is used to lock the application object
		// while
		// we're manpulating it.
		synchronized (application) {
			UserApplication userApp = (UserApplication) application
					.getAttribute("userApp");
			if (userApp == null) {
				userApp = new UserApplication();;
				userApp.setFilePath(application.getRealPath("WEB-INF/users.xml"));
				application.setAttribute("userApp", userApp);
			}
			return userApp;
		}
	}

	@Path("users")
	@GET
	@Produces(MediaType.APPLICATION_XML)
	public Users getUsers() throws JAXBException, IOException {
		return getUserApp().getUsers();

	}

	@Path("/user/{email}")
	@GET
	@Produces(MediaType.APPLICATION_XML)
	public User getUser(@PathParam("email") String email) throws JAXBException,
			IOException {
		User user = getUserApp().getUsers().findByEmail(email);
		return user;
	}
}
