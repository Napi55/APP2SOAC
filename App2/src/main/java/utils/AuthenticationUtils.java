package utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public  class AuthenticationUtils {

	public AuthenticationUtils() {
		// TODO Auto-generated constructor stub
	}
	public static boolean isValid(HttpServletRequest request ) {
		String username=request.getParameter("username");
		 String password=request.getParameter("password");
		if(password.equals("123") && username.equals("hadi")) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			return true;
		}else {
			request.setAttribute("message", "Des informations invalides");
			return false;
		} 
		

	}
	

}
