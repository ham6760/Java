package pizza.controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pizza.controller.PizzaControll;
import pizza.dao.PizzaDao;
import pizza.vo.Pizza;

public class PizzaController implements PizzaControll{

	@Override
	public void pexecute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("PizzaController signal");
		
		PizzaDao dao=new PizzaDao();
		List<Pizza> list=dao.getPizzaList();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("pizza.jsp").forward(request, response);
	}

}
