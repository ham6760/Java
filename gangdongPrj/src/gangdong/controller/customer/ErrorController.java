package gangdong.controller.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gangdong.controller.Controller;

public class ErrorController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.sendRedirect("error.jsp");

	}

}
