package gangdong.controller.customer;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import gangdong.controller.Controller;
import gangdong.dao.GdboardDao;
import gangdong.vo.Gdboard;

public class GdboardEditProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String path="gangdong/upload";
		ServletContext ctx=request.getServletContext();
		path=ctx.getRealPath(path);
		System.out.println("realpath : "+path);
		
		MultipartRequest req=new MultipartRequest(request, path,10*1024*1024,"utf-8",new DefaultFileRenamePolicy());
		
		
		String gdtitle=req.getParameter("gdtitle");
		String gdcontent=req.getParameter("gdcontent");
		String gdnum=req.getParameter("d");
		String file=req.getFilesystemName("file");
		
		System.out.println("file : "+file);
		System.out.println("editproc신호");
		
		Gdboard g=new Gdboard();
		g.setGdnum(gdnum);
		g.setGdtitle(gdtitle);
		g.setGdcontent(gdcontent);
		g.setFilesrc(file);
		
		GdboardDao dao=new GdboardDao();
		int af=dao.update(g);
		
		request.setAttribute("g", g);
		request.getRequestDispatcher("gdboardDetail.jsp").forward(request, response);

	}

}
