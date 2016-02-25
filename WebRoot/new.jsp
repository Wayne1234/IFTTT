 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>

<%
String recharge="recharge";
String username=request.getParameter("username");
String password=request.getParameter("password");
String confirmp=request.getParameter("confirmp");

String driverName="com.mysql.jdbc.Driver"; 
//数据库用户名 
String userName="root"; 
//密码 
String userPasswd="1234"; 
//数据库名 
String dbName="test"; 
//表名 
String tableName="userinfo"; 
//联结字符串 
String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection connection=DriverManager.getConnection(url); 
Statement statement = connection.createStatement(); 
//ResultSet rs = stmt.executeQuery("SELECT a, b, c FROM Table1");
//String sql="SELECT password FROM "+tableName+"where user ="+username; 
ResultSet rs = statement.executeQuery("select user from userinfo where user = '"+username+"'"); 
ResultSetMetaData rmeta = rs.getMetaData(); 
int numColumns=rmeta.getColumnCount(); 
// 输出每一个数据值 
 boolean a = rs.next();
if((username==null||username.equals(""))){ 
    %>
	<script>alert("username cannot be empty");
window.history.back(-1);
</script>
 <%
 
}   else if(!(password.equals(confirmp))){
	%><script>alert("password denied");
window.history.back(-1);
</script>
 <%

}else if(a== true) { 
%>
<script>alert("username exist");
window.history.back(-1);
</script>
 <%
}else {
	driverName="com.mysql.jdbc.Driver"; %>

<%
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection connection1=DriverManager.getConnection(url);  
	Statement statement1 = connection1.createStatement(); 
	int rt = statement1.executeUpdate("insert into userinfo (user,PASSWORD,money,Lv) values ('"+username+"','"+password+"',1000,1)"); 
	int z=statement1.executeUpdate("insert into transaction(user,type,money)values ('"+username+"','recharge',1000)");
	statement1.executeUpdate("insert into message(user,title,text,num)values ('"+username+"','Welcome','Welcome to my web',1)");
	System.out.print("success");
	session.setAttribute("username",username);%>

	<script>
	window.location.href="customer.jsp"; 
	</script>
	<%
	}


	


%>


