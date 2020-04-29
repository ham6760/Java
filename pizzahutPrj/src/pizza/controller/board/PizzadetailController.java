package pizza.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pizza.controller.PizzaControll;
import pizza.dao.PizzaDao;
import pizza.vo.Pizza;

public class PizzadetailController implements PizzaControll{

	@Override
	public void pexecute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("PizzadetailController 신호신호");
		String pno=request.getParameter("c");
		
		
		PizzaDao dao=new PizzaDao();
		Pizza p=dao.getPazza(pno);
		
		request.setAttribute("p", p);
		request.getRequestDispatcher("pizzadetail.jsp").forward(request, response);
		
	}

}
