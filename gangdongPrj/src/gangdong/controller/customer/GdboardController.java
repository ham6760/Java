package gangdong.controller.customer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gangdong.controller.Controller;
import gangdong.dao.GdboardDao;
import gangdong.vo.Gdboard;

public class GdboardController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("gdcontroller 신호");
		
		int page=1;
		
		String pg=request.getParameter("pg");
		if (pg!=null && !pg.equals("")) 
			page=Integer.parseInt(pg);
		
		String field=request.getParameter("f");
		if (field==null || field.equals("")) 
			field="gdtitle";
		
		String query=request.getParameter("q");
		if (query==null) 
			query="";
		
		GdboardDao dao=new GdboardDao();
		List<Gdboard> list = dao.getGdboards(page,field,query);
		
		int cnt=dao.getCount(field,query);
		
		int vrow=10;
		int start=page-(page-1)%10;
		int end=cnt/vrow+(cnt%vrow==0?0:1);
		
		request.setAttribute("start", start);						
		request.setAttribute("end", end);						
		request.setAttribute("cnt", cnt);						
		request.setAttribute("page", page);						
		request.setAttribute("query", query);						
		request.setAttribute("list", list);						
		request.getRequestDispatcher("gdboard.jsp").forward(request, response);

	}

}
