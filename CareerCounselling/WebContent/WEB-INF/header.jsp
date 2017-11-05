<div id="companyname" align="left">Career Counsellor Portal</div>
<div align="right" class="span_user">Hi <% if(session.getAttribute("username") != null) {%><%=session.getAttribute("username")%>!<%} else {%>Guest!<%}%></div>
<div align="right" class="links_menu" id="menu"><a href="home">Home</a> | <a href="company">Company</a> | <a href="postgrad">Post Graduation</a> | <a href="showTopic">Forum</a> | <a href="misc">Misc</a> | <a href="faqs">FAQs</a> | <a href="aboutus">About Us</a> <a href="logout">
 <% if(session.getAttribute("username") != null) { %>
 | Logout
 <% } %>
 </a> 
 </div>