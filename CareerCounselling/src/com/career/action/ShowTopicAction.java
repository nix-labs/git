package com.career.action;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.career.beans.Topic;
import com.career.util.DbUtil;

/**
 * Servlet implementation class BlogAction
 */
public class ShowTopicAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowTopicAction() {
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
		PreparedStatement stmt;
		ResultSet rs;
		String sqlQuery = "Select * from Topics order by date desc";
		Topic topic = null;
		List<Topic> topicList = new ArrayList<Topic>();
		
		try {
			stmt = DbUtil.getConnection().prepareStatement(sqlQuery);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				topic = new Topic();
				topic.setTopicId(rs.getLong("TOPIC_ID"));
				topic.setTopic(rs.getString("TOPIC"));
				topic.setUsername(rs.getString("USERNAME"));
				topic.setDate(rs.getDate("DATE"));
				
				topicList.add(topic);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("topicList", topicList);
		RequestDispatcher disp = request.getRequestDispatcher("WEB-INF/showtopic.jsp");
		disp.forward(request, response);
	}

}
