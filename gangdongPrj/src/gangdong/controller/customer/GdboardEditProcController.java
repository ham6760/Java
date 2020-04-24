package gangdong.controller.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gangdong.controller.Controller;
import gangdong.dao.GdboardDao;
import gangdong.vo.Gdboard;

public class GdboardEditProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String gdtitle=request.getParameter("gdtitle");
		String gdcontent=request.getParameter("gdcontent");
		String gdnum=request.getParameter("d");
		System.out.println("editproc신호");
		
		Gdboard g=new Gdboard();
		g.setGdnum(gdnum);
		g.setGdtitle(gdtitle);
		g.setGdcontent(gdcontent);
		
		GdboardDao dao=new GdboardDao();
		int af=dao.update(g);
		
		request.setAttribute("g", g);
		request.getRequestDispatcher("gdboardDetail.do").forward(request, response);

	}

}
