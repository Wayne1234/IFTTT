 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>


<%
String n ="no";
String cuser = request.getParameter("select");
String msg = request.getParameter("msg");
String toall = request.getParameter("toall");
String title = request.getParameter("title");
if(toall==null){toall=n;}
%>

<%String driverName="com.mysql.jdbc.Driver"; 
//���ݿ��û��� 
String userName="root"; 
//���� 
String userPasswd="1234"; 
//���ݿ��� 
String dbName="test"; 
//���� 
String tableName="userinfo"; 
//�����ַ��� 
String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection connection=DriverManager.getConnection(url); 
Statement statement = connection.createStatement(); 
 
Statement statement1 = connection.createStatement(); 
if(toall.equals("yes")){
	ResultSet rs = statement.executeQuery("select user from userinfo");
	rs.last(); 
int rowCount = rs.getRow(); 
rs.first();
System.out.print(rowCount);
for(int i=1;i<=rowCount;i++) {
	String a = rs.getString(1);
statement1.executeUpdate("insert into message (user,title,text)values ('"+a+"','"+title+"','"+msg+"')");
rs.next();

}
}else{ 

statement.executeUpdate("insert into message (user,title,text)values ('"+cuser+"','"+title+"','"+msg+"')");}
%>

<script>alert("send msg success");
self.location='admin.jsp';
</script>
