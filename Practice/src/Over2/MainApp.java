package Over2;

import Over2etc.Calc;

public class MainApp extends Calc{
	public MainApp(int x, int y) {
		super(x, y);		
	}

	public static void main(String[] args) {
		Calc c=new Calc(10,30);
		System.out.println(c.sum());
	}

}
