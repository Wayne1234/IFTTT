<%
String user=(String)session.getAttribute("admin");
if(user==null){
		%>
		<jsp:forward page="hello.jsp"/>
		<% 
}%>
<a href="users.jsp">look up all user info</a><br>
<a href="transrecord.jsp">look up transaction records</a><br>
<a href="changelv.jsp">change users level</a><br>
<a href="sendmsg.jsp">send message</a><br>