package com.career.action;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.career.util.DbUtil;

/**
 * Servlet implementation class RegisterAction
 */
public class RegisterAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		long mobile = Long.parseLong(request.getParameter("mobile"));
		String email = request.getParameter("email");
		int row = 0;
		
		PreparedStatement stmt;
		String sqlQuery = "Insert into users (username, password, name, mobile, email) values(?, ?, ?, ?, ?)";
		
		try {
			stmt = DbUtil.getConnection().prepareStatement(sqlQuery);
			stmt.setString(1, username);
			stmt.setString(2, password);
			stmt.setString(3, name);
			stmt.setLong(4, mobile);
			stmt.setString(5, email);
			row = stmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(row==1) {
			request.setAttribute("msg", "User Added!");
		}
		
		RequestDispatcher disp = request.getRequestDispatcher("register.jsp");
		disp.forward(request, response);
		
	}

}
