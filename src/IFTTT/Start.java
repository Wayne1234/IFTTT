package IFTTT;

import com.send.DBHelper;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

import org.codehaus.jackson.map.ser.impl.StaticListSerializerBase;

import weibo4j.Timeline;
import weibo4j.model.WeiboException;

public class Start extends HttpServlet {

    static String sql = null;//sql语句
    static DBHelper db1 = null;//用于操作数据库
    static ResultSet ret = null;//存储返回的数据库记录
    static String thismail=null;//this任务中的邮箱账号
    static String thispassword=null;//this任务中的邮箱密码
    static String thatmailString=null;//that任务中邮箱账号
    static String thatcontentString=null;//that任务中的待发送内容
    static String taskid=null;//任务id
    static String taskname=null;//任务名称
    static String status=null;//任务开始还是停止
    static String tasktype=null;//任务类型
    static String tempdate=null;//临时的日期变量
    static String temptime=null;//临时的时间变量
    static String yString=null;//年份
 	static String mString=null;//月份
 	static String dString=null;	//天
 	static String hString=null;//小时
	static String minString=null;//分钟
	static String sString=null;//秒
    
    static int inttaskid=0;//int型的任务编号
    private TaskManagement []Manager = new TaskManagement[100];
    //四个任务类
    private SendMail sm=null;//发邮件任务
    private RecvMail rm=null;//收邮件任务
    private SendWb swb=null;//发微博任务
    private Timing tm=null;//定时任务

    //一些会用到的参数
    private Acount thisAcount=null;//this任务的账户
    private Acount thatAcount=null;//that任务的账户
    private MyDate myDate=null;//日期
    private MyTime myTime=null;//时间
    
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        taskid=request.getParameter("select");
        System.out.println("taskid "+taskid);
        inttaskid=Integer.parseInt(taskid);
        status=request.getParameter("sors");
        System.out.println("status "+status);
        sql = "select *from task where taskid="+taskid;//SQL语句
        db1 = new DBHelper(sql);//创建DBHelper对象
        try {
            ret = db1.pst.executeQuery();
            while (ret.next()) {
                tasktype=ret.getString(4);
                System.out.println(tasktype);
            }//显示数据
            ret.close();
            db1.close();//关闭连接
        } catch (SQLException e) {
            e.printStackTrace();
        }//执行语句，得到结果集
        if (status.equals("start")) {
           // System.out.println("Now task will be started");
            if (tasktype.equals("type1")) { //timing+email
            	sql = "select *from task where taskid="+taskid;//SQL语句
                db1 = new DBHelper(sql);//创建DBHelper对象
            	 try {
            		ret = db1.pst.executeQuery();
					while (ret.next()) {
					     yString=ret.getString(5).substring(0, 4);
					     mString=ret.getString(5).substring(5, 7);
					     dString=ret.getString(5).substring(8,10);
					     System.out.println(yString+"/"+mString+"/"+dString);
					     hString=ret.getString(6).substring(0, 2);
					     minString=ret.getString(6).substring(3, 5);
					     sString=ret.getString(6).substring(6, 8);
					     System.out.println(hString+":"+minString+":"+sString);
					     thatmailString=ret.getString(11);
					     thatcontentString=ret.getString(12);
					 }
					 ret.close();
			         db1.close();//关闭连接
				} catch (SQLException e) {
					e.printStackTrace();
				}            	
			     myTime=new MyTime(hString,minString,sString);		  
			     myDate=new MyDate(yString,mString,dString);
			     tm=new Timing(myDate, myTime);
			     thatAcount=new Acount(thatmailString, "0");
			     sm=new SendMail(thatAcount, thatcontentString);
			     Manager[inttaskid]=new TaskManagement(tm, sm);
			     Manager[inttaskid].start();
			     String flag="Mission Complete";
			     request.getSession().setAttribute("flag", flag);
			     response.sendRedirect("MissionResult.jsp");
            } else if (tasktype.equals("type2")) {
                System.out.println("Task Type 2");
                sql = "select *from task where taskid="+taskid;//SQL语句
                db1 = new DBHelper(sql);//创建DBHelper对象
            	 try {
            		ret = db1.pst.executeQuery();
					while (ret.next()) {
					     yString=ret.getString(5).substring(0, 4);
					     mString=ret.getString(5).substring(5, 7);
					     dString=ret.getString(5).substring(8,10);
					     //System.out.println(yString+"/"+mString+"/"+dString);
					     hString=ret.getString(6).substring(0, 2);
					     minString=ret.getString(6).substring(3, 5);
					     sString=ret.getString(6).substring(6, 8);
					    //System.out.println(hString+":"+minString+":"+sString);
					     thatAcount=new Acount(ret.getString(9), ret.getString(10));
					     thatcontentString=ret.getString(12);
					 }
					 ret.close();
			         db1.close();//关闭连接
				} catch (SQLException e) {
					e.printStackTrace();
				}            	
			     myTime=new MyTime(hString,minString,sString);		  
			     myDate=new MyDate(yString,mString,dString);
			     tm=new Timing(myDate, myTime);
			     swb=new SendWb(thatAcount, thatcontentString);
			     Manager[inttaskid]=new TaskManagement(tm, swb);
			     Manager[inttaskid].start();
			     
			     String flag="Mission Complete";
			     request.getSession().setAttribute("flag", flag);
			     response.sendRedirect("MissionResult.jsp");
            } else if (tasktype.equals("type3")) {
                System.out.println("Task Type 3");
                sql = "select *from task where taskid="+taskid;//SQL语句
                db1 = new DBHelper(sql);//创建DBHelper对象
            	 try {
            		ret = db1.pst.executeQuery();
					while (ret.next()) {
					     thisAcount =new Acount(ret.getString(7), ret.getString(8));
					     thatmailString=ret.getString(11);
					     thatcontentString=ret.getString(12);
					 }
					 ret.close();
			         db1.close();//关闭连接
				} catch (SQLException e) {
					e.printStackTrace();
				}            	
			    rm=new RecvMail(thisAcount);
			    thatAcount=new Acount(thatmailString, "0");
			    sm=new SendMail(thatAcount, thatcontentString);
			    Manager[inttaskid]=new TaskManagement(rm, sm);
			    Manager[inttaskid].start();
			    
			    String flag="Mission Complete";
			     request.getSession().setAttribute("flag", flag);
			     response.sendRedirect("MissionResult.jsp");
			    
            } else if (tasktype.equals("type4")) {
                System.out.println("Task Type 4");
                sql = "select *from task where taskid="+taskid;//SQL语句
                db1 = new DBHelper(sql);//创建DBHelper对象
            	 try {
            		ret = db1.pst.executeQuery();
					while (ret.next()) {
					     thisAcount =new Acount(ret.getString(7), ret.getString(8));
					     thatAcount=new Acount(ret.getString(9), ret.getString(10));
					     thatcontentString=ret.getString(12);
					 }
					 ret.close();
			         db1.close();//关闭连接
				} catch (SQLException e) {
					e.printStackTrace();
				}            	
			    rm=new RecvMail(thisAcount);
			    swb=new SendWb(thatAcount, thatcontentString);
			    Manager[inttaskid]=new TaskManagement(rm, swb);
			    Manager[inttaskid].start();
			    String flag="Mission Complete";
			     request.getSession().setAttribute("flag", flag);
			     response.sendRedirect("MissionResult.jsp");
            } else {
                System.out.println("UnKnown Type");
                String flag="Mission Failed";
			    request.getSession().setAttribute("flag", flag);
			    response.sendRedirect("MissionResult.jsp");
            }
        }
        else{
        	if(Manager[inttaskid]==null){
        		System.out.println("Not started");
        		String flag="Not Started";
 			    request.getSession().setAttribute("flag", flag);
 			    response.sendRedirect("NotStarted.jsp");
        	}
        	else{
        		Manager[inttaskid].interrupt();
        		Manager[inttaskid]=null;
        		String flag="Mission Stopped";
 			    request.getSession().setAttribute("flag", flag);
 			    response.sendRedirect("MissionStop.jsp");
        	}
        }
    }
} 