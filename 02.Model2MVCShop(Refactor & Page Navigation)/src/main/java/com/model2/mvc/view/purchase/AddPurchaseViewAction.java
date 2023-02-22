package com.model2.mvc.view.purchase;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model2.mvc.framework.Action;
import com.model2.mvc.service.product.ProductService;
import com.model2.mvc.service.product.impl.ProductServiceImpl;
import com.model2.mvc.service.domain.*;
import com.model2.mvc.service.purchase.PurchaseService;
import com.model2.mvc.service.purchase.impl.PurchaseServiceImpl;
import com.model2.mvc.service.user.UserService;
import com.model2.mvc.service.user.impl.UserServiceImpl;

public class AddPurchaseViewAction extends Action {

	public AddPurchaseViewAction() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("AddPurchaseView�� �Ѿ�� request:"+request);
		System.out.println(request.getParameter("prod_no"));
		int prodNo = Integer.parseInt(request.getParameter("prod_no"));
		
		ProductService pservice = new ProductServiceImpl();
		Product product = (pservice.getProduct(prodNo));
		
		request.setAttribute("product", product);
		
		HttpSession session=request.getSession(); 

		User user = (User)session.getAttribute("user");
		System.out.println(user.toString());
		
		request.setAttribute("user", user);
		
		System.out.println("addPurchaseviewaction�� �� VO"+product+user);
		
		
		return "forward:/purchase/addPurchaseView.jsp";
	}

}