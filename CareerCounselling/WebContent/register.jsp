<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register - Career Counselling</title>
<link rel="stylesheet" href="images/style.css" type="text/css" />
</head>
<body>
<div id="page" align="center">
		<div id="header">
			<jsp:include page="WEB-INF/header.jsp"></jsp:include>
		</div>
		<br />
		<div id="content">
			<div id="leftpanel">
				<jsp:include page="WEB-INF/leftBar.jsp"></jsp:include>
			</div>
			<div id="contenttext">
				<table width="100%">
					<tr><td class="title_blue">Welcome to Career Counsellor Portal</td></tr>
					<tr><td align="center" class="subtitle_gray">New User Registration</td></tr>
					<tr>
						<td width="580px"><img align="top" src="images/resume.jpg" width="580px" height="200px" border="0" alt="Resume" /></td>
					</tr>
					
					<tr>
						<td>
						<form action="register" method="post">
							<table width="580px">
								<tr><td class="news_more">Username</td><td class="news_more"> <input type="text" name="username" maxlength="20"> </td></tr>
								<tr><td class="news_more">Password</td><td class="news_more"> <input type="password" name="password" maxlength="20"> </td></tr>
								<tr><td class="news_more">Name</td><td class="news_more"> <input type="text" name="name" maxlength="25"> </td></tr>
								<tr><td class="news_more">Mobile</td><td class="news_more"> <input type="text" name="mobile" maxlength="15"> </td></tr>
								<tr><td class="news_more">Email</td><td class="news_more"> <input type="text" name="email" maxlength="30"> </td></tr>
								<tr><td colspan="2"  class="news_more"> <input type="submit"> </td></tr>
								<tr><td colspan="2"  class="news_more">
									<% if(request.getAttribute("msg") != null) { %>
									<%= request.getAttribute("msg") %>
									<% } %>
									
								</td></tr>
							</table>
						</form>	
						</td>
					</tr>
				</table>
			</div>
			<br />
			<br />
			<div class="footer">
				<jsp:include page="WEB-INF/footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>