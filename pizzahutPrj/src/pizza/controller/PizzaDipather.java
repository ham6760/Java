package pizza.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pizza.controller.board.PizzaController;
import pizza.controller.board.PizzadetailController;

public class PizzaDipather extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service 도착");
		//요청 url 추출
		String uri=request.getRequestURI();// /pizzahutPrj/pizzahut/pizza.do
		String conPath=request.getContextPath();// /pizzahutPrj
		String com=uri.substring(conPath.length());
		System.out.println("com : "+com);
		
		PizzaControll pcontroller=null;
		
		try {
			if (com.equals("/pizzahut/pizza.do")) {
				System.out.println("pizza.do 도착");
				//컨트롤러로 연결
				pcontroller=new PizzaController();
			}else if (com.equals("/pizzahut/pizzadetail.do")) {
				pcontroller=new PizzadetailController();
			}
			pcontroller.pexecute(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	

}
