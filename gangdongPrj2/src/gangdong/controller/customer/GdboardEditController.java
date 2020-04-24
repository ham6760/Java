package gangdong.controller.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gangdong.controller.Controller;
import gangdong.dao.GdboardDao;
import gangdong.vo.Gdboard;

public class GdboardEditController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String gdnum=request.getParameter("d");
		GdboardDao dao=new GdboardDao();
		Gdboard g=dao.getGdboard(gdnum);
		System.out.println("수정신호");
		
		request.setAttribute("g", g);
		request.getRequestDispatcher("gdboardEdit.jsp").forward(request, response);

	}

}
