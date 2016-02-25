
<%
String user=(String)session.getAttribute("username");
String Ip=(String)session.getAttribute("userIp");
if(user==null){
		%>
		<jsp:forward page="hello.jsp"/>
		<% 
}
%>
<script type="text/javascript">
{
 if(confirm("really want to logout?"))
 {
	<% session.invalidate();   %>
 self.location='home.jsp'; 
 }else window.history.back(-1); 

}
</script>
