package mrh.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mrh.board.controller.MboardController;

public class MyDispatcher extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request
			, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Service 신호");
		
		String uri=request.getRequestURI();
		String conPath=request.getContextPath();
		String com=uri.substring(conPath.length());
		
		System.out.println("com : "+com);
		
		Controller controller=null;
		
		try {
			if (com.equals("/mrh/mboard.do")) {
				controller=new MboardController();
			}
			controller.execute(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request
			, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request
			, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}
}
