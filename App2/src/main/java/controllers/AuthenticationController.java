package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.AuthenticationUtils;

/**
 * Servlet implementation class AuthenticationController
 */
public class AuthenticationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AuthenticationUtils auth;
    public AuthenticationController() {
        super();
        auth = new AuthenticationUtils();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
		this.getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(auth.isValid(request)) {
			this.getServletContext().getRequestDispatcher("/WEB-INF/Admin.jsp").forward(request, response);
		}else {
			this.getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
		}
	
	}

}
