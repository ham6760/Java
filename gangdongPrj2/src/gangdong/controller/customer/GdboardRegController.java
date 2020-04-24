package gangdong.controller.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gangdong.controller.Controller;

public class GdboardRegController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getRequestDispatcher("gdboardReg.jsp").forward(request, response);
		System.out.println("추가신호");

	}

}
