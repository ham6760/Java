package Over;

class TV {
	private int size;
	
	public TV(int size) {
		this.size = size;
		}
	
	protected int getSize() {
		return size;
		}
	public void showTv() {
		System.out.print(size + "인치 ");
	}
	
}
class ColorTV extends TV{
	private int color;
	public ColorTV(int size,int color) {
		super(size);
		this.color = color;
		// TODO Auto-generated constructor stub
	}
	public void printProperty() {
		showTv();
		System.out.println(color + "컬러");
	}
	
}

//class IPTV extends ColorTV{
//	private String IP;
//	public IPTV(int size, int color, String IP) {
//		super(size, color);
//		this.IP = IP;
//	}
//	
//}

public class InheritanceEx{
	public static void main(String[] args) {
		ColorTV mytv=new ColorTV(32, 1024);
		mytv.printProperty();
	}
}
