 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>



<%
String username = request.getParameter("username");
String password = request.getParameter("password");
System.out.println(username);


%>
<% 
String check="";
//���������� 
String driverName="com.mysql.jdbc.Driver"; 
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
//ResultSet rs = stmt.executeQuery("SELECT a, b, c FROM Table1");
//String sql="SELECT password FROM "+tableName+"where user ="+username; 
ResultSet rs = statement.executeQuery("select password from userinfo where user = '"+username+"'"); 
//������ݽ������ 
ResultSetMetaData rmeta = rs.getMetaData(); 
//ȷ�����ݼ������������ֶ��� 
int numColumns=rmeta.getColumnCount(); 
// ���ÿһ������ֵ 
/*out.print(numColumns);
out.print("id"); 
out.print("|"); 
out.print("num"); 
out.print("<br>"); */
if(rs.next()) { 
//out.print(rs.getString(1)+" "); 
check =rs.getString(1);
//out.print(check);
//out.print("|"); 
//out.print(rs.getString(3)); 
//out.print("<br>"); 
} 


if(check.equals(password)&&(!check.equals(""))){
	%>
	<script>self.location='customer.jsp';
</script>
<%
	session.setAttribute("username",username);
}else{%>
	<script>alert("login failed");
window.history.back(-1);
</script>
<%
}
rs.close(); 
statement.close(); 
connection.close(); 
%>  