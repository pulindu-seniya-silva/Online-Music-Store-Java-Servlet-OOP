package com.music.servlets.pulindu;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/log")
public class ShopKeeperloginServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//variable declaration
		String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    
	    try {
	        List<ShopKeeper> shopDetails = ShopKeeperUtil.validate(username, password);
	        
	        // Check if the list is empty
	        if (shopDetails.isEmpty()) {
	            // Set error message if no shopkeeper found
	            request.setAttribute("errorMessage", "Invalid username or password. Please try again.");
	            RequestDispatcher dis = request.getRequestDispatcher("ShopKeeperloginjsp.jsp");
                dis.forward(request, response);
	        } else {
	            // Set shop details if found
	            request.setAttribute("shopDetails", shopDetails);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    RequestDispatcher dis = request.getRequestDispatcher("KeeperUserAccount.jsp");
	    dis.forward(request, response);

}
}
