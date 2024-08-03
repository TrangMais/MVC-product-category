<%@page import="entity.User"%>
<%@ page import="java.sql.*"%>

<%@ page import = "java.util.*"%>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/be6_web", "root", "root");
	
	//PreparedStatement ps = conn.prepareStatement("SELECT * FROM users WHERE 'username' = ? AND 'password' = ?");
	//ps.setString(1, username);
	//ps.setString(2, password);
	//ResultSet rs = ps.executeQuery();
	//if (rs.next()) {
		//out.println("Login sucessfully");
	//} else {
		//response.sendRedirect("login.html");
	//}
	
	String query = "SELECT * FROM users WHERE username = '" + username + "' AND password = '" + password + "'";
	
	Statement statement = conn.createStatement();
	
	ResultSet rs = statement.executeQuery(query);
	
	boolean isUserExist = rs.next();
	
	if(isUserExist) {
		User user = new User(rs.getString("username"), rs.getString("password"), rs.getString("gender"), rs.getString("hobbies"), rs.getString("languages"), rs.getString("cities"));
		session = request.getSession();
		session.setAttribute("loggedInUser", user);
        response.sendRedirect("homepage.jsp");
	}else{
		response.sendRedirect("login.jsp?error=username or password incorrect");
	}
	
}

catch (Exception e) {
	out.println(e);
}
%>