 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>


<%
String cuser = request.getParameter("select");
String clv = request.getParameter("clv");
System.out.println(cuser);


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
statement.executeUpdate("update userinfo set Lv ='"+clv+"' where user = '"+cuser+"'");
%>

<script>alert("change level success");
self.location='admin.jsp';
</script>
