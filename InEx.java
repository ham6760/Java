class TV{
	private int size;

	public TV(int size){
		this.size=size;
	}

	protected int getSize(){
		return size;
	}
	public void showTv() {
		System.out.print(size + "inchi ");
	}
}
class ColorTV extends TV{
	private int color;
	public ColorTV(int size,int color) {
		super(size);
		this.color=color;
	}
	public void printProperty() {
		showTv();
		System.out.println(color + "color");
	}
}

public class InEx{
	public static void main(String[] args) {
		ColorTV mytv=new ColorTV(32, 1024);
		mytv.printProperty();
	}
}
