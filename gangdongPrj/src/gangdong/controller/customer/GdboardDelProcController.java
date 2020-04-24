package gangdong.controller.customer;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gangdong.controller.Controller;
import gangdong.dao.GdboardDao;
import gangdong.vo.Gdboard;

public class GdboardDelProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("삭제신호");
		
		String gdnum=request.getParameter("d");
		
		Gdboard g=new Gdboard();
		GdboardDao dao=new GdboardDao();
		
		int af=dao.delete(gdnum);
		PrintWriter out=response.getWriter();
		
		if(af>0)
			response.sendRedirect("gdboard.do");
		else
			out.write("삭제오류");
		

	}

}
