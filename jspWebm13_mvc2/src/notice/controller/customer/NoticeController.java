package notice.controller.customer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.controller.Controller;
import notice.dao.NoticeDao;
import notice.vo.Notice;

public class NoticeController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeController 신호신호");
		
		NoticeDao dao=new NoticeDao();
		List<Notice> list = dao.getNotices();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("notice.jsp").forward(request, response);

	}

}
