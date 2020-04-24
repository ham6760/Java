package gangdong.controller.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gangdong.controller.Controller;
import gangdong.dao.GdboardDao;
import gangdong.vo.Gdboard;

public class GdboardDetailController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String gdnum=request.getParameter("d");
		GdboardDao dao=new GdboardDao();
		Gdboard g=dao.getGdboard(gdnum);
		System.out.println("Detail신호");
		
		request.setAttribute("g", g);
		request.getRequestDispatcher("gdboardDetail.jsp").forward(request, response);

	}

}
