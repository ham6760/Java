package Over;

interface Device{
	void on();
	void watch();
	void off();
}

public class TV2 implements Device{
	
	@Override
	public void on() {
		System.out.println("�������ϴ�.");
		
	}
	@Override
	public void watch() {
		System.out.println("������Դϴ�.");
		
	}
	@Override
	public void off() {
		System.out.println("�����մϴ�.");		
	}
	public static void main(String[] args) {
		TV2 mytv=new TV2();
		mytv.on();
		mytv.watch();
		mytv.off();
	}
}
