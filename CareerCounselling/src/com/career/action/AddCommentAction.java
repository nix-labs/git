package com.career.action;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.career.util.DbUtil;

/**
 * Servlet implementation class AddCommentAction
 */
public class AddCommentAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCommentAction() {
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
		
		String comment = request.getParameter("addComment");
		long topicId = Long.parseLong(request.getParameter("topicId"));
		HttpSession session = request.getSession();
		Date date = new Date();
		
		PreparedStatement stmt;
		String sqlQuery = "Insert into comments values(?, ?, ?, ?, ?)";
		
		try {
			stmt = DbUtil.getConnection().prepareStatement(sqlQuery);
			stmt.setLong(1, DbUtil.getMaxId("comment_id", "comments"));
			stmt.setString(2, comment);
			stmt.setLong(3, topicId);
			stmt.setDate(4, new java.sql.Date(date.getYear(), date.getMonth(), date.getDate()));
			stmt.setString(5, session.getAttribute("username").toString());
			stmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("msg", "Comment Added!");
		RequestDispatcher disp = request.getRequestDispatcher("showComment");
		disp.forward(request, response);
	}

}
