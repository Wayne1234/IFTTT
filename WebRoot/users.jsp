<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%String driverName="com.mysql.jdbc.Driver"; 
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



String user=(String)session.getAttribute("admin");
if(user==null){
		%>
		<jsp:forward page="hello.jsp"/>
		<% 
}

ResultSet rs = statement.executeQuery("select * from userinfo ");
rs.last(); 
int rowCount = rs.getRow(); 
rs.first();
ResultSetMetaData rmeta = rs.getMetaData(); 
//确定数据集的列数，亦字段数 
int numColumns=rmeta.getColumnCount(); 
for(int i=1;i<=rowCount;i++) {
	%>
<table width="601" height="50" border="1" align="center" color="#ffffff">
<%
String a = (rs.getString(1)+" "); 
String b =(rs.getString(3)); 
String c = (rs.getString(4)); 
rs.next();%><tr><td valign="top" >
user:<%=a%>  money:<%=b%>  <br>lv:<%=c%>

</tr></table><%
}
%>