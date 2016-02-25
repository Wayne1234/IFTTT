package IFTTT;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.Folder;
import javax.mail.Store;

import java.util.Timer;
import java.util.TimerTask;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.swing.JTextArea;

import weibo4j.Timeline;
import weibo4j.model.Status;

public class Task	{//������
    private String taskName;
    protected int TaskID;
    private JTextArea TaskInfo = null;
    public Task() { //Ĭ����
        taskName = "";
        TaskID = -1;
    }
    public void setName(String newname) {
        taskName = newname;
    }
    public String getName() {
        return taskName;
    }
    public int getTaskType() {
        return TaskID;
    }
    public void getInfo(JTextArea info) {
        this.TaskInfo = info;
    }
    public void printTask(String str)	{//��ӡ������Ϣ
       System.out.println("here is printTask  "+str);
    }
}

//�������
/*class TaskQueue		{//�������
    Task task[];
    int top;
    public TaskQueue(int len) {
        task = new Task[len];
        top = 0;
    }
    public void deleteItem(int index) { //ɾ������
        if (index>=top || index<0)
            return;
        task[index] = null;
        for (int i=index; i<top-1; i++) {
            task[i] = task[i+1];
        }
        top--;
    }
    public void deleteItem2(int index) {//����ȫɾ��
        task[index] = null;
    }
}*/

abstract class TaskThis extends Task	 	{//this
    public abstract boolean ifThis() throws Exception;
}

abstract class TaskThat extends Task		{//that
    public abstract boolean thenThat();
}

//4��task
class Timing extends TaskThis		{//��ʱ
    private MyDate date;
    private MyTime time;
    public Timing() {
        date = new MyDate();
        time = new MyTime();
        super.TaskID = 0;
    }
    public Timing(MyDate d, MyTime t) {
        date = new MyDate(d);
        time = new MyTime(t);
        super.TaskID = 0;
    }
    public void getDAndT(MyDate d, MyTime t)	{
        d.year = date.year;
        d.month = date.month;
        d.day = date.day;
        t.hour = time.hour;
        t.minute = time.minute;
        t.second = time.second;
    }
    public boolean  ifThis() { //if this��ʵ��
        Timer timer = new Timer();
        class TimingTask extends TimerTask {
            boolean ready = false;
            public void run() {
                ready = true;
            }
            public boolean isReady() {
                return ready;
            }
        }
        System.out.println("Timing task");
        printTask("��������...");
        TimingTask TTask = new TimingTask(); //���ö�ʱ�����ж�ʱ
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date tmpDate = null;
        try {
            tmpDate = format.parse(date.year+"-"+date.month+"-"+date.day+" "+time.hour+":"+time.minute+":"+time.second);
            timer.schedule(TTask, tmpDate);
        } catch (ParseException e) {}

        printTask("�ȴ�...");
        try {
            while (true) {
                Thread.sleep(1000);
                if (TTask.isReady() == true) {
                    printTask("ʱ�䵽��ִ������...");
                    break;
                }
            }
        } catch (Exception e) {
            return false;
        }
        return true;
    }
}

class RecvMail extends TaskThis {
	private Acount MAct;
	private int mailnum;
	public RecvMail(){
		MAct = new Acount();
		super.TaskID = 1;//���ʼ�������������1
		mailnum=0;
	}
	public RecvMail(Acount a){
		MAct = new Acount(a);
		super.TaskID = 1;
		mailnum=0;
	}
	public void getRecvMailAcount(Acount a){
		a.id = MAct.id;
		a.password = MAct.password;
		mailnum=0;
	}
	/*public boolean ifThis()	throws Exception	{
		try{
			  String host = "pop.qq.com";
	    	  Properties props = new Properties();
	    	  props.put("mail.store.protocol", "pop3");
	          props.put("mail.pop3.host",host);
	          props.setProperty("mail.pop3.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	          props.setProperty("mail.pop3.socketFactory.fallback", "false");
	          props.setProperty("mail.pop3.socketFactory.port", "995");
	    	  Session session = Session.getInstance(props);
	    
	    	  Store store = session.getStore("pop3");
	    	  store.connect(host,MAct.id, MAct.password);
	    	  Folder folder = store.getFolder("INBOX");
	   	      folder.open(Folder.READ_ONLY);
	    	  //System.out.println(folder.getNewMessageCount());
	    	  if(folder.getUnreadMessageCount()>0){
	    		  printTask("�����ʼ�");
	    	  }
	    	  else{
	    		  printTask("û�����ʼ�");
	    		  return false;
	    	  }
	    	  Message message[] = folder.getMessages();
	    	  for (int i=0, n=message.length; i<n; i++) {
	    		  String subject = message[i].getSubject();  
	    		  printTask("�ʼ����£�");
	              printTask("�� " + (i+1) + "���ʼ������⣺" + subject);      
	    	  }
	    	  folder.close(false);
	    	  store.close();
		}
		catch(Exception e){}		
		return true;	
	}*/
	public boolean ifThis()	throws Exception	{
		try{
			  String host = "pop.qq.com";
	    	  Properties props = new Properties();
	    	  props.put("mail.store.protocol", "pop3");
	          props.put("mail.pop3.host",host);
	          props.setProperty("mail.pop3.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	          props.setProperty("mail.pop3.socketFactory.fallback", "false");
	          props.setProperty("mail.pop3.socketFactory.port", "995");
	    	  Session session = Session.getInstance(props);
	    	  Store store = session.getStore("pop3");
	    	  store.connect(host,MAct.id, MAct.password);
	    	  
	    	  Folder folder = store.getFolder("INBOX");
	   	      folder.open(Folder.READ_ONLY);
   	    	  mailnum=folder.getUnreadMessageCount();
	   	      int tempmailnum=mailnum;
	   	      System.out.println("before while");
	   	      while(true){
	   	    	  folder = store.getFolder("INBOX");
		   	      folder.open(Folder.READ_ONLY);
	   	    	  mailnum=folder.getUnreadMessageCount();
	   	    	  System.out.println("before if");
	   	    	  if(mailnum==tempmailnum){
	   	    		 printTask("û�����ʼ�");
	   	    		 Thread.sleep(2000);
	   	    	  }
	   	    	  else{
	   	    		  printTask("�������ʼ�");
	   	    		  return true;
	   	    	  } 
	   	    	  //System.out.println("Here");
	   	      }
		}
		catch(Exception e){ System.out.println("Stopped");  return false;	}		
	}
}

class SendWb extends TaskThat	{//���÷�΢��
    Acount WBAct;
    String WBContent;
    public SendWb() {
        WBAct = new Acount();
        WBContent = "";
        super.TaskID = 2;//��΢����TaskID��2
    }
    public SendWb(Acount a, String content) {
        WBAct = new Acount(a);
        WBContent = content;
        super.TaskID = 2;
    }
    public String getAcountAndContent(Acount a) {
        a.id = WBAct.id;
        a.password = WBAct.password;
        return WBContent;
    }
    public boolean thenThat()	{
    	 try {
             printTask("����΢��...");
             String access_token ="2.00BojZRG05pUd5302052388872O4NB";//���Ժ�
             Timeline tm = new Timeline(access_token);
             tm.updateStatus(WBContent);
             printTask("�������...");
         } catch (Exception e) {
             printTask("����΢��ʧ�ܣ�");
             return false;
         }
         return true;
    }
}

class SendMail extends TaskThat {
    private Acount MAct;
    private String MContent;
    public SendMail() {
        MAct = new Acount();
        MContent = "";
        super.TaskID = 3;//���ʼ���taskID��3
    }
    public SendMail(Acount a, String content) {
        MAct = new Acount(a);
        MContent = content;
        super.TaskID = 3;
    }
    public String getAcountAndCont(Acount a) {
        a.id =MAct.id;
        a.password = MAct.password;
        return MContent;
    }

    public boolean thenThat() {
        Properties prop = new Properties();
        prop.setProperty("mail.host", "smtp.qq.com");
        prop.setProperty("mail.transport.protocol", "smtp");
        prop.setProperty("mail.smtp.auth", "true");
        Session session = Session.getInstance(prop);
        session.setDebug(true);
        Transport trans = null;
        try {
            trans = session.getTransport();
        } catch (NoSuchProviderException e) {
            e.printStackTrace();
        }
        try {
            trans.connect("smtp.qq.com", "1012682755@qq.com", "wangyi1994");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        printTask("�����ʼ�...");

        Message message = new MimeMessage(session);
        try {
        	message.setFrom(new InternetAddress("1012682755@qq.com"));
        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        try {
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(MAct.id));
        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        //�ʼ��ı���
        try {
            message.setSubject("�ʼ�");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        try {
            message.setContent(MContent, "text/html;charset=UTF-8");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        //5�������ʼ�
        try {
            trans.sendMessage(message, message.getAllRecipients());
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        try {
            trans.close();
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return true;
    }

}