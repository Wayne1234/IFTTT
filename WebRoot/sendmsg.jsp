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
ResultSet rs = statement.executeQuery("select * from userinfo ");
rs.last(); 
int rowCount = rs.getRow(); 
rs.first();
ResultSetMetaData rmeta = rs.getMetaData(); 
//确定数据集的列数，亦字段数 
int numColumns=rmeta.getColumnCount(); %>
<form action="dosendmsg.jsp" method="get">
send message to:<select name="select" id="select_k1" class="xla_k">
<%
for(int i=1;i<=rowCount;i++) {
	String b =(rs.getString(1)); 
rs.next();
%>
    <option value=<%=b%>><%=b%></option>

 
	<%
} %>  </select>
<p>send all: <input type="radio" name="toall" value="yes"></p>
  <p>title : <input type="text" name="title" /></p>
  <p>text : <input type="text" name="msg" /></p>
    <input type="submit" value="Submit" />

</form>

