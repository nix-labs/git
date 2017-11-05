<%@page import="com.career.beans.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home - Career Counselling</title>
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
					<tr><td colspan="2" class="title_blue">Welcome to Career Counsellor Portal</td></tr>
					<tr><td colspan="2" align="center" class="subtitle_gray">Home</td></tr>
					<tr>
						<td width="370px"><img align="top" src="images/home.jpg" width="370px" height="200px" border="0" alt="Home" /></td>
						<td width="210px">
						<% if(session.getAttribute("username") != null){ %>
							<div class="table_top" align="center">
								<span class="title_panel">Upload Resume</span>
							</div>
							<div class="table_content">
								<div class="table_text">
									<form action="upload" method="post" enctype="multipart/form-data">
										<input type="file" name="resume" class="news_more">
										<span class="news_more"><input type="submit" value="Upload Resume" class="news_more"></span><br />
										<span class="news_more"><% if(request.getAttribute("msg") != null) %><%= request.getAttribute("msg") %></span>
									</form>
								</div>
							</div>
							<div class="table_bottom">
								<img src="images/table_bottom.jpg" width="204" height="23" border="0" alt="" />
							</div>
						<% } else { %>
							<div class="table_top" align="center">
								<span class="title_panel">Login</span>
							</div>
							<div class="table_content">
								<div class="table_text">
								<form action="home" method="post">
									<span class="news_more">Username: <input type="text" name="username"></span><br />
									<span class="news_more">Password: <input type="password" name="password"></span><br />
									<span class="news_more"><input type="submit" value="Login"></span><br />
									<span class="news_more"><a href="register.jsp">Register</a> </span><br />
									<span class="news_more"><% if(request.getAttribute("error") != null) %><%= request.getAttribute("error") %></span><br />
								</form>
								</div>
							</div>
							<div class="table_bottom">
								<img src="images/table_bottom.jpg" width="204" height="23" border="0" alt="" />
							</div>
						<% } %>
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
							<p class="body_text" align="justify">Career Counseling is the process of self-exploration combined 
							with looking into the world of work. I look at career counseling as a holistic process as your life 
							issues are also a big part of your work issues. Integrating them both into the counseling process 
							makes for a well-rounded approach to career development. CAREER COUNSELLING SITE is a social 
							website that is basically meant for the technical graduates and counsel people for their career 
							allowing students to secure their precious future. It provides the information about the higher 
							information after completion of the graduation in technical streams. It also provide them with 
							the information of certain renounced companies ,so that they can know about the selection criteria 
							of certain companies, and can prepare for them by going through the placement papers &amp; can secure 
							their futures by securing a good job. However, the focus is generally on issues such as career 
							exploration, career change, personal career development and other career related issues. Typically 
							when people come for career counseling they know exactly what they want to get out of the process, 
							but are unsure about how it will work.</p>
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