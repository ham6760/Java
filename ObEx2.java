class Circle{
	private int x, y, radius;
	public Circle(int x,int y,int radius) {
		this.x=x;
		this.y=y;
		this.radius=radius;
}
public boolean equals(Object obj){
	Circle c=(Circle)obj;
	if (x==c.x && y==c.y) {
		return true;
	}else return false;

}
public String toString() {
	return "Circle("+x+","+y+")radius"+radius;
}
}

public class ObEx2 {
	public static void main(String[] args) {
		Circle a=new Circle(2,3,25);
		Circle b=new Circle(2,3,30);
		Circle d=new Circle(2,5,10);
		System.out.println("Circle a : "+a);
		System.out.println("Circle b : "+b);
		System.out.println("Circle d : "+d);
		if(a.equals(b) && a.equals(d)) {
			System.out.println("Same Circle");
		}else {
			System.out.println("Different Circle");
		}
	}
}
