package pizza.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface PizzaControll {
	public void pexecute(HttpServletRequest request,
			HttpServletResponse response) throws Exception;
}
