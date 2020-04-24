package gangdong.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gangdong.controller.customer.ErrorController;
import gangdong.controller.customer.GdboardController;
import gangdong.controller.customer.GdboardDelProcController;
import gangdong.controller.customer.GdboardDetailController;
import gangdong.controller.customer.GdboardEditController;
import gangdong.controller.customer.GdboardEditProcController;
import gangdong.controller.customer.GdboardRegController;
import gangdong.controller.customer.GdboardRegProcController;

public class MyDispatcher extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) 
			throws ServletException, IOException{
		System.out.println("service");
		String uri=request.getRequestURI();
		String conPath=request.getContextPath();
		String com=uri.substring(conPath.length());
		System.out.println("uri : "+uri);
		System.out.println("conPath : "+conPath);
		System.out.println("com : "+com);
		
		Controller controller=null;
		try {
			if (com.equals("/gangdong/gdboardDetail.do")) {
				controller=new GdboardDetailController();
			}else if (com.equals("/gangdong/gdboardEdit.do")) {
				controller=new GdboardEditController();
			}else if (com.equals("/gangdong/gdboardEditProc.do")) {
				controller=new GdboardEditProcController();
			}else if (com.equals("/gangdong/gdboardReg.do")) {
				controller=new GdboardRegController();
			}else if (com.equals("/gangdong/gdboardRegProc.do")) {
				controller=new GdboardRegProcController();
			}else if (com.equals("/gangdong/gdboardDelProc.do")) {
				controller=new GdboardDelProcController();
			}else if (com.equals("/gangdong/gdboard.do")) {
				controller=new GdboardController();
			}
			
			if (controller==null) {
				controller=new ErrorController();
			}
			controller.execute(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
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

}
