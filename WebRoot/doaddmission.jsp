<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%
String user=(String)session.getAttribute("username");
if(user==null){
		%>
		<jsp:forward page="hello.jsp"/>
		<% 
}
String type=request.getParameter("type");
String taskname=request.getParameter("taskname");
String month=request.getParameter("Month");
String day=request.getParameter("Date_Day");
String year=request.getParameter("Date_Year");
String thisdate=year+'/'+month+'/'+day;
String hour=request.getParameter("hour");
String min=request.getParameter("min");
String sec=request.getParameter("sec");
String thistime=hour+':'+min+':'+sec;
String thisaccount=request.getParameter("sendemail");
String thispassword=request.getParameter("sendpassword");
String content=request.getParameter("mailindex");
String thatmaccount=request.getParameter("toemail");
String thatwbaccount=request.getParameter("weiboaccount");
String thatwbpassword=request.getParameter("weibopassword");
String wbcontent=request.getParameter("weiboindex");
String rcemail=request.getParameter("rcemail");
String rcpassword=request.getParameter("rcpassword");
String sendmail=request.getParameter("sendemail");
String mailindex=request.getParameter("mailindex");






System.out.println(thisdate);


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

if(taskname.equals("")){
%><script>alert("taskname cannot be null")
	window.history.back(-1);</script>
<%
}

if(type.equals("type1"))
{
	if(thisaccount.indexOf('@')==-1||thatmaccount.indexOf('@')==-1)
	{ %>
	<script>alert("please enter a correct email account");
window.history.back(-1);
</script>
 <%
 }else{
statement.executeUpdate("insert into task(user,taskname,tasktype,thisdate,thistime,thisaccount,thispassword,thatmaccount,content)values ('"+user+"','"+taskname+"','"+type+"','"+thisdate+"','"+thistime+"','"+thisaccount+"','"+thispassword+"','"+thatmaccount+"','"+content+"')");
	}
}else if(type.equals("type2"))
{
statement.executeUpdate("insert into task(user,taskname,tasktype,thisdate,thistime,thatwbaccount,thatwbpassword,content)values ('"+user+"','"+taskname+"','"+type+"','"+thisdate+"','"+thistime+"','"+thatwbaccount+"','"+thatwbpassword+"','"+wbcontent+"')");

}else if(type.equals("type3"))
{
	if(rcemail.indexOf('@')==-1||sendmail.indexOf('@')==-1)
	{ %>
	<script>alert("please enter a correct email account");
window.history.back(-1);
</script>
 <%
 }else{
statement.executeUpdate("insert into task(user,taskname,tasktype,thisaccount,thispassword,thatmaccount,content)values ('"+user+"','"+taskname+"','"+type+"','"+rcemail+"','"+rcpassword+"','"+sendmail+"','"+mailindex+"')");
}
}else
{if(rcemail.indexOf('@')==-1)
	{ %>
	<script>alert("please enter a correct email account");
window.history.back(-1);
</script>
 <%
 }else{
statement.executeUpdate("insert into task(user,taskname,tasktype,thisaccount,thispassword,thatwbaccount,thatwbpassword,content)values ('"+user+"','"+taskname+"','"+type+"','"+rcemail+"','"+rcpassword+"','"+thatwbaccount+"','"+thatwbpassword+"','"+wbcontent+"')");
}
}
int money1=0;
ResultSet rs = statement.executeQuery("select money from userinfo where user = '"+user+"'");
while(rs.next()){
money1=rs.getInt(1);
} 

int money=money1-100;
int mm=100;
String spend="cost";
statement.executeUpdate("update userinfo set money ='"+money+"' where user = '"+user+"'");
statement.executeUpdate("insert into transaction(user,type,money)values ('"+user+"','"+spend+"','"+mm+"')");


%>
<script>alert("add mission success");
self.location='customer.jsp';
</script>
