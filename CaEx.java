import java.util.Calendar;

public class CaEx {
	public static void printCalendar(String msg, Calendar cal) {
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH);
		int day = cal.get(Calendar.DAY_OF_MONTH);
		int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
		int hour = cal.get(Calendar.HOUR);
		int hourOfDay = cal.get(Calendar.HOUR_OF_DAY);
		int ampm = cal.get(Calendar.AM_PM);
		int minute = cal.get(Calendar.MINUTE);
		int second = cal.get(Calendar.SECOND);
		int millisecond = cal.get(Calendar.MILLISECOND);
		System.out.print(msg+year+"/"+month+"/"+day+"/");

		switch (dayOfWeek) {
		case Calendar.SUNDAY : System.out.print("Sunday"); break;
		case Calendar.MONDAY : System.out.print("Monday"); break;
		case Calendar.TUESDAY : System.out.print("Tuesday"); break;
		case Calendar.WEDNESDAY : System.out.print("Wednesday"); break;
		case Calendar.THURSDAY : System.out.print("Thursday"); break;
		case Calendar.FRIDAY : System.out.print("Friday"); break;
		case Calendar.SATURDAY : System.out.print("Saturday"); break;
		}
		System.out.print("("+hourOfDay+"clock)");
		if (ampm==Calendar.AM) {
			System.out.print("AM");
		}else {
			System.out.print("PM");
		}
		System.out.println(hour+"clock "+minute+"minute "+second+"second "+millisecond+"mil");
	}
	public static void main(String[] args) {
		Calendar now = Calendar.getInstance();
		printCalendar("now ",now);

		Calendar firstDate=Calendar.getInstance();
		firstDate.clear();
		firstDate.set(2016, 11, 25);
		firstDate.set(Calendar.HOUR_OF_DAY, 20);
		firstDate.set(Calendar.MINUTE, 30);
		printCalendar("first Dating ", firstDate);
	}
}
