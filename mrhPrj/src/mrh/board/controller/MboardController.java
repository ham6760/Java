package mrh.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mrh.board.Controller;
import mrh.dao.MBoardDao;
import mrh.vo.MBoard;

public class MboardController implements Controller {

	@Override
	public void execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("MboardController 신호");
		
		MBoardDao dao=new MBoardDao();
		List<MBoard> list=dao.getBoards();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("mboard.jsp").forward(request, response);
		
	}

}
