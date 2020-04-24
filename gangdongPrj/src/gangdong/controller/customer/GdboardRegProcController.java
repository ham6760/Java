package gangdong.controller.customer;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gangdong.controller.Controller;
import gangdong.dao.GdboardDao;
import gangdong.vo.Gdboard;

public class GdboardRegProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("regproc신호");
		String gdtitle=request.getParameter("gdtitle");
		String gdwriter=request.getParameter("gdwriter");
		String gdcontent=request.getParameter("gdcontent");
		
		Gdboard g=new Gdboard();
		g.setGdtitle(gdtitle);
		g.setGdwriter(gdwriter);
		g.setGdcontent(gdcontent);
		
		GdboardDao dao=new GdboardDao();
		int af=dao.insert(g);
		
		PrintWriter out=response.getWriter();
		
		if(af>0)
			response.sendRedirect("gdboard.do");
		else
			out.println("오류");

	}

}
