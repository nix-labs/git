<%@page import="com.career.beans.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.career.beans.Topic"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forum - Career Counselling</title>
<link rel="stylesheet" href="images/style.css" type="text/css" />
</head>
<body>
<div id="page" align="center">
		<div id="header">
			<jsp:include page="header.jsp"></jsp:include>
		</div>
		<br />
		<div id="content">
			<div id="leftpanel">
				<jsp:include page="leftBar.jsp"></jsp:include>
			</div>
			<div id="contenttext">
				<form name="commentForm" method="post" action="addComment">
				<table width="100%">
					<tr><td class="title_blue">Welcome to Career Counsellor Portal</td></tr>
					<tr><td align="center" class="subtitle_gray">Forum</td></tr>
					<tr>
						<td width="580px"><img align="top" src="images/forum.jpg" width="580px" height="200px" border="0" alt="Forum" /></td>
					</tr>
					
					<tr><td><input type="hidden" name="topicId" value='<%= request.getAttribute("topicId") %>' />
						<table width="580px">
							<tr><td align="center" colspan="3" class="news_text" style="font-size: 12px;"><b><u>Topic:</u></b> <%= request.getAttribute("topic") %></td></tr>
							<tr><td>&nbsp;</td></tr>
							<tr>
								<td class="news_text" style="font-size: 12px;"><b><u>Comment</u></b> </td>
								<td class="news_text" style="font-size: 12px;"><b><u>Date</u></b> </td>
								<td class="news_text" style="font-size: 12px;"><b><u>Posted By</u></b> </td>
							</tr>
							<% List<Comment> commentList = (ArrayList<Comment>)request.getAttribute("commentList"); %>
							<% int i = 0; %>
							<%for(i=0; i<commentList.size();i++) { %>
							<% Comment comment = (Comment) commentList.get(i); %>
								<tr>
									<td class="news_text"><%= comment.getComment() %> </td>
									<td class="news_text"><%= comment.getDate() %> </td>
									<td class="news_text"><%= comment.getUsername() %> </td>
								</tr>
							<% } %>
							<tr><td>
								<% if(session.getAttribute("username") != null){ %>
									<input type="text" name="addComment" class="news_text" maxlength="490" />
									<input type="submit" value="Add Comment"  class="news_text" />
								<% } %>
							</td></tr>
						</table>
					</td></tr>
				</table>
				</form>
			</div>
			<br />
			<br />
			<div class="footer">
				<jsp:include page="footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>