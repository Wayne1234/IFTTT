package IFTTT;

class MyDate	{//����
    String year, month, day;
    public MyDate() { //���캯����ʱ��ֻ�������һ��ʱ�����
        year = "2015";
        month = "11";
        day = "19";
    }
    public MyDate(String y, String m ,String d) {
        year = y;
        month = m;
        day = d;
    }
    public MyDate(MyDate d) {
        year = d.year;
        month = d.month;
        day = d.day;
    }
}
class MyTime		{//ʱ����

    String hour, minute, second;
    public MyTime() {
        hour = "00";
        minute = "00";
        second = "00";
    }
    public MyTime(String h, String m, String s) {
        hour = h;
        minute = m;
        second = s;
    }
    public MyTime(MyTime t) {
        hour = t.hour;
        minute = t.minute;
        second = t.second;
    }
}

class Acount	{//�û�����������
    String id = "", password = "";
    public Acount() {}
    public Acount(String i, String pword) {
        id = i;
        password = pword;
    }
    public Acount(Acount a) {
        id = a.id;
        password = a.password;
    } 
} 
