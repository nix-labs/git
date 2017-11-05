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

import com.career.beans.Comment;
import com.career.util.DbUtil;

/**
 * Servlet implementation class BlogAction
 */
public class ShowCommentAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowCommentAction() {
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
		
		long topicId = Long.parseLong(request.getParameter("topicId"));
		PreparedStatement stmt;
		ResultSet rs;
		String sqlQuery = "Select * from Comments where topic_id=? order by date desc";
		Comment comment = null;
		List<Comment> commentList = new ArrayList<Comment>();
		String topic = null;
		
		try {
			stmt = DbUtil.getConnection().prepareStatement(sqlQuery);
			stmt.setLong(1, topicId);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				comment = new Comment();
				comment.setCommentId(rs.getLong("COMMENT_ID"));
				comment.setComment(rs.getString("COMMENT"));
				comment.setTopicId(rs.getLong("TOPIC_ID"));
				comment.setUsername(rs.getString("USERNAME"));
				comment.setDate(rs.getDate("DATE"));
				commentList.add(comment);
			}
			sqlQuery = "select topic from topics where topic_id=?";
			stmt = DbUtil.getConnection().prepareStatement(sqlQuery);
			stmt.setLong(1, topicId);
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				topic = rs.getString("topic");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("commentList", commentList);
		request.setAttribute("topic", topic);
		request.setAttribute("topicId", topicId);
		RequestDispatcher disp = request.getRequestDispatcher("WEB-INF/showcomment.jsp");
		disp.forward(request, response);
	}

}
