package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import util.DBUtil;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entity.User;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			Connection conn = DBUtil.getConnection();
			String query = "SELECT * FROM users WHERE username = '" + username + "' AND password = '" + password + "'";
			
			Statement statement = conn.createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			boolean isUserExist = rs.next();
			
			if(isUserExist) {
				User user = new User(rs.getString("username"), rs.getString("password"), rs.getString("gender"), rs.getString("hobbies"), rs.getString("languages"), rs.getString("cities"));
				
				HttpSession session = request.getSession();
				session.setAttribute("loggedInUser", user);
		       
				response.sendRedirect("homepage.jsp");
			}else{
				response.sendRedirect("login.jsp?error=username or password incorrect");
			}
			
		}

		catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

}
