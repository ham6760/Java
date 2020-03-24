class TV3 {
	private int size;

	public TV3(int size) {
		this.size = size;
	}

	protected int getSize() {
		return size;
	}
	public void showTv() {
		System.out.print(size + "inchi ");
	}
}
class ColorTV2 extends TV{
	private int color;
	public ColorTV2(int size,int color) {
		super(size);
		this.color = color;
	}
	public void showCT(){
		showTv();
		System.out.println(color + "color");
	}
}

class IPTV extends ColorTV2{
	private String IP;
	public IPTV(String IP, int size, int color) {
		super(size, color);
		this.IP = IP;
	}
	public void printProperty() {
		System.out.print("My IPTV "+IP+" "+"adress ");
		showCT();
	}
}

public class InEx2{
	public static void main(String[] args) {
		IPTV iptv=new IPTV("192.1.1.2",32, 2048);
		iptv.printProperty();
	}
}

