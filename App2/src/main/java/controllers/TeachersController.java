package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class TeachersController
 */
public class TeachersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public TeachersController() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	switch(action){
case "/AddTeacher":
    break;
case "/UpdateTeacher"
break;
default :
break;

}


	}

}
