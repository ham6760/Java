package CalendarEx;

import java.util.Calendar;

public class CalendarEx2 {
	public static void printCalendar(String msg, Calendar cal) {
		int hourOfDay = cal.get(Calendar.HOUR_OF_DAY);		
		int minute = cal.get(Calendar.MINUTE);		
		System.out.println(msg+hourOfDay+"시 "+minute+"분입니다.");
		if (hourOfDay<12 && minute>0) {
			System.out.println("Good Morning");
		}else if (hourOfDay<18 && minute>0) {
			System.out.println("Good Afternoon");
		}else if (hourOfDay<22 && minute>0) {
			System.out.println("Good Evening");
		}else {
			System.out.println("Good Night");
		}
	}
	
	public static void main(String[] args) {
		Calendar now = Calendar.getInstance();
		printCalendar("현재 시간은 ", now);
		
		Calendar ampm = Calendar.getInstance();
		ampm.clear();
	}

}
