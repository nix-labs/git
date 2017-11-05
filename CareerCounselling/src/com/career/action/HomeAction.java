package com.career.action;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.career.beans.User;
import com.career.util.DbUtil;

/**
 * Servlet implementation class HomeAction
 */
public class HomeAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			RequestDispatcher disp = request.getRequestDispatcher("index.jsp");
			disp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		
		PreparedStatement stmt;
		ResultSet rs;
		String sqlQuery = "Select * from Users where username=? and password=?";
		User user = new User();
				
		try {
			stmt = DbUtil.getConnection().prepareStatement(sqlQuery);
			stmt.setString(1, username);
			stmt.setString(2, password);
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				session.setAttribute("username", username);
				
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setName(rs.getString("name"));
				user.setMobile(rs.getLong("mobile"));
				user.setEmail(rs.getString("email"));
				request.setAttribute("user", user);
				RequestDispatcher disp = request.getRequestDispatcher("/index.jsp");
				disp.forward(request, response);
			} else {
				request.setAttribute("error", "Username/Password Invalid!");
				RequestDispatcher disp = request.getRequestDispatcher("/index.jsp");
				disp.forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
