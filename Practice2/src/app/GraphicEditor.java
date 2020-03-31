package app;

import base.Shape;
import derived.Circle;

public class GraphicEditor extends Circle{
	public static void main(String[] args) {
		Shape shape= new Shape();
		Shape circle = new Circle();
		circle.draw();
		shape.draw();
	}

}
