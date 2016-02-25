package IFTTT;

public class TaskManagement extends Thread{
	private TaskThis TThis;
	private TaskThat TThat;
	private boolean end = false, stop = false;
	public TaskManagement(TaskThis ta, TaskThat tb){TThis = ta;TThat = tb;}
	public void ended(){end = true;}
	public void stopped(){stop = true;}
	public void restart(){stop = false;}
	public void run(){
	try{
		if(TThis.ifThis() == true) 
			TThat.thenThat();
		}
		catch(Exception e){
			if(end == true) return;
			if(stop == true)try{sleep(1000000);}catch(Exception a){}}
		}
	}