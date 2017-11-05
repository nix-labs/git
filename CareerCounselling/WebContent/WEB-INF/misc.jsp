<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Misc - Career Counselling</title>
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
				<table width="100%">
					<tr><td class="title_blue">Welcome to Career Counsellor Portal</td></tr>
					<tr><td align="center" class="subtitle_gray">Misc</td></tr>
					<tr>
						<td width="580px"><img align="top" src="images/misc.jpg" width="580px" height="200px" border="0" alt="Misc" /></td>
					</tr>
					
					<tr>
						<td>
							<p class="body_text"><a target="_self" href="resume.jsp" class="news_more" style="font-size: 13px">Resume Writing</a></p>
							<p class="body_text"><a target="_self" href="gd.jsp" class="news_more" style="font-size: 13px">Group Discussion </a></p>
							<p class="body_text"><a target="_self" href="interview.jsp" class="news_more" style="font-size: 13px">Interview Tips</a></p>
						</td>
					</tr>
				</table>
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