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
 * Servlet implementation class AddTopicAction
 */
public class AddTopicAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTopicAction() {
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
		
		String topic = request.getParameter("addTopic");
		HttpSession session = request.getSession();
		Date date = new Date();
		
		PreparedStatement stmt;
		String sqlQuery = "Insert into topics values(?, ?, ?, ?)";
		
		try {
			stmt = DbUtil.getConnection().prepareStatement(sqlQuery);
			stmt.setLong(1, DbUtil.getMaxId("topic_id", "topics"));
			stmt.setString(2, topic);
			stmt.setDate(3, new java.sql.Date(date.getYear(), date.getMonth(), date.getDate()));
			stmt.setString(4, session.getAttribute("username").toString());
			stmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("msg", "Topic Added!");
		RequestDispatcher disp = request.getRequestDispatcher("showTopic");
		disp.forward(request, response);
	}

}
