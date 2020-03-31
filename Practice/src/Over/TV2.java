package Over;

interface Device{
	void on();
	void watch();
	void off();
}

public class TV2 implements Device{
	
	@Override
	public void on() {
		System.out.println("켜졌습니다.");
		
	}
	@Override
	public void watch() {
		System.out.println("방송중입니다.");
		
	}
	@Override
	public void off() {
		System.out.println("종료합니다.");		
	}
	public static void main(String[] args) {
		TV2 mytv=new TV2();
		mytv.on();
		mytv.watch();
		mytv.off();
	}
}
