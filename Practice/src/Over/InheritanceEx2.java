package Over;

class TV3 {
	private int size;
	
	public TV3(int size) {
		this.size = size;
		}
	
	protected int getSize() {
		return size;
		}
	public void showTv() {
		System.out.print(size + "인치 ");
	}
	
}
class ColorTV2 extends TV{
	private int color;
	public ColorTV2(int size,int color) {
		super(size);
		this.color = color;
		// TODO Auto-generated constructor stub
	}
	public void showCT() {
		showTv();
		System.out.println(color + "컬러");
	}
	
}

class IPTV extends ColorTV2{
	private String IP;
	public IPTV(String IP, int size, int color) {
		super(size, color);
		this.IP = IP;
	}
	public void printProperty() {
		System.out.print("나의 IPTV는 "+IP+" "+"주소의 ");
//		showTv();
		showCT();
	}
	
}

public class InheritanceEx2{
	public static void main(String[] args) {
		IPTV iptv=new IPTV("192.1.1.2",32, 2048);
		iptv.printProperty();
	}
}
