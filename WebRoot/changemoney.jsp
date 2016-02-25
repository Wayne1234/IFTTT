 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%

int money1=0;
int moneychange = Integer.parseInt(request.getParameter("money"));
String type= request.getParameter("type");
System.out.println(type);
String user=(String)session.getAttribute("username");
if(user==null){
		%>
		<jsp:forward page="hello.jsp"/>
		<% 
}

if(moneychange==0){
		%>
		<jsp:forward page="customer.jsp"/>
		<% 
}
if(type.equals("recharge")&&moneychange<0){
		%>
		<script>alert("cant be minus");
window.history.back(-1);
</script>
		<% 
}else{
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

ResultSet rs = statement.executeQuery("select money from userinfo where user = '"+user+"'");
while(rs.next()){
money1=rs.getInt(1);
} 
int money2=money1+moneychange;
statement.executeUpdate("update userinfo set money ='"+money2+"' where user = '"+user+"'");
statement.executeUpdate("insert into transaction(user,type,money)values ('"+user+"','"+type+"','"+money2+"')");
%>
<script>alert("recharge success");
self.location='customer.jsp';
</script>
<%}
%>
