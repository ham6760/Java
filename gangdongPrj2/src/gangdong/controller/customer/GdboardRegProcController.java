package gangdong.controller.customer;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import gangdong.controller.Controller;
import gangdong.dao.GdboardDao;
import gangdong.vo.Gdboard;

public class GdboardRegProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("regproc신호");
		
		String path="gangdong/upload";
		ServletContext ctx=request.getServletContext();
		path=ctx.getRealPath(path);
		System.out.println("realpath : "+path);
		
		MultipartRequest req=new MultipartRequest(request, path,10*1024*1024,"utf-8",new DefaultFileRenamePolicy()); 
		
		String gdtitle=req.getParameter("gdtitle");
		String gdwriter=req.getParameter("gdwriter");
		String gdcontent=req.getParameter("gdcontent");
		String file=req.getFilesystemName("file");
		
		System.out.println("file : "+file);
		
		Gdboard g=new Gdboard();
		g.setGdtitle(gdtitle);
		g.setGdwriter(gdwriter);
		g.setGdcontent(gdcontent);
		g.setFilesrc(file);
		
		GdboardDao dao=new GdboardDao();
		int af=dao.insert(g);
		
		PrintWriter out=response.getWriter();
		
		if(af>0)
			response.sendRedirect("gdboard.do");
		else
			out.println("오류");

	}

}
