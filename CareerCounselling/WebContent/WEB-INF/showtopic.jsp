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
<script type="text/javascript">
	function viewComment(topicId) {
		document.getElementById("topicId").value = topicId;
		document.topicForm.method="get";
		document.topicForm.action="showComment";
	    document.topicForm.submit();
		
	}
</script>
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
			<form name="topicForm" method="post" action="addTopic">
				<input type="hidden" name="topicId" id="topicId"/>
				<table width="100%">
					<tr><td class="title_blue">Welcome to Career Counsellor Portal</td></tr>
					<tr><td align="center" class="subtitle_gray">Forum</td></tr>
					<tr>
						<td width="580px"><img align="top" src="images/forum.jpg" width="580px" height="200px" border="0" alt="Forum" /></td>
					</tr>
					
					<tr><td>
						<table width="580px">
			
							<tr>
								<td class="news_text" style="font-size: 12px;"><b><u>Topic</u></b> </td>
								<td class="news_text" style="font-size: 12px;"><b><u>Date</u></b> </td>
								<td class="news_text" style="font-size: 12px;"><b><u>Posted By</u></b> </td>
							</tr>
							<% List<Topic> topicList = (ArrayList<Topic>)request.getAttribute("topicList"); %>
							<% int i = 0; %>
							<%for(i=0; i<topicList.size();i++) { %>
							<% Topic topic = (Topic) topicList.get(i); %>
								<tr>
									<td class="news_text"><a href="javascript:viewComment('<%= topic.getTopicId() %>')" ><%= topic.getTopic() %></a> </td>
									<td class="news_text"><%= topic.getDate() %> </td>
									<td class="news_text"><%= topic.getUsername() %> </td>
								</tr>
							<% } %>
							<tr><td>
								<% if(session.getAttribute("username") != null){ %>
									<input type="text" name="addTopic" class="news_text" maxlength="90" />
									<input type="submit" value="Add Topic"  class="news_text" />
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