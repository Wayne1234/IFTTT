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

    static String sql = null;//sql���
    static DBHelper db1 = null;//���ڲ������ݿ�
    static ResultSet ret = null;//�洢���ص����ݿ��¼
    static String thismail=null;//this�����е������˺�
    static String thispassword=null;//this�����е���������
    static String thatmailString=null;//that�����������˺�
    static String thatcontentString=null;//that�����еĴ���������
    static String taskid=null;//����id
    static String taskname=null;//��������
    static String status=null;//����ʼ����ֹͣ
    static String tasktype=null;//��������
    static String tempdate=null;//��ʱ�����ڱ���
    static String temptime=null;//��ʱ��ʱ�����
    static String yString=null;//���
 	static String mString=null;//�·�
 	static String dString=null;	//��
 	static String hString=null;//Сʱ
	static String minString=null;//����
	static String sString=null;//��
    
    static int inttaskid=0;//int�͵�������
    private TaskManagement []Manager = new TaskManagement[100];
    //�ĸ�������
    private SendMail sm=null;//���ʼ�����
    private RecvMail rm=null;//���ʼ�����
    private SendWb swb=null;//��΢������
    private Timing tm=null;//��ʱ����

    //һЩ���õ��Ĳ���
    private Acount thisAcount=null;//this������˻�
    private Acount thatAcount=null;//that������˻�
    private MyDate myDate=null;//����
    private MyTime myTime=null;//ʱ��
    
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        taskid=request.getParameter("select");
        System.out.println("taskid "+taskid);
        inttaskid=Integer.parseInt(taskid);
        status=request.getParameter("sors");
        System.out.println("status "+status);
        sql = "select *from task where taskid="+taskid;//SQL���
        db1 = new DBHelper(sql);//����DBHelper����
        try {
            ret = db1.pst.executeQuery();
            while (ret.next()) {
                tasktype=ret.getString(4);
                System.out.println(tasktype);
            }//��ʾ����
            ret.close();
            db1.close();//�ر�����
        } catch (SQLException e) {
            e.printStackTrace();
        }//ִ����䣬�õ������
        if (status.equals("start")) {
           // System.out.println("Now task will be started");
            if (tasktype.equals("type1")) { //timing+email
            	sql = "select *from task where taskid="+taskid;//SQL���
                db1 = new DBHelper(sql);//����DBHelper����
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
			         db1.close();//�ر�����
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
                sql = "select *from task where taskid="+taskid;//SQL���
                db1 = new DBHelper(sql);//����DBHelper����
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
			         db1.close();//�ر�����
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
                sql = "select *from task where taskid="+taskid;//SQL���
                db1 = new DBHelper(sql);//����DBHelper����
            	 try {
            		ret = db1.pst.executeQuery();
					while (ret.next()) {
					     thisAcount =new Acount(ret.getString(7), ret.getString(8));
					     thatmailString=ret.getString(11);
					     thatcontentString=ret.getString(12);
					 }
					 ret.close();
			         db1.close();//�ر�����
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
                sql = "select *from task where taskid="+taskid;//SQL���
                db1 = new DBHelper(sql);//����DBHelper����
            	 try {
            		ret = db1.pst.executeQuery();
					while (ret.next()) {
					     thisAcount =new Acount(ret.getString(7), ret.getString(8));
					     thatAcount=new Acount(ret.getString(9), ret.getString(10));
					     thatcontentString=ret.getString(12);
					 }
					 ret.close();
			         db1.close();//�ر�����
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