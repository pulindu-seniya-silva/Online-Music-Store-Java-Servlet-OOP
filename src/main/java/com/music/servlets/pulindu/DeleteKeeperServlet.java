package com.music.servlets.pulindu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/stk/delete")
public class DeleteKeeperServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		//get id parameter
		String idStr = request.getParameter("id");
		System.out.println(idStr);

		if (idStr != null && !idStr.isEmpty()) {
		    try {
		        int id1 = Integer.parseInt(idStr); // Parse the ID safely
		        boolean isDeleted = ShopKeeperUtil.DeleteKeeper(id1); 
		        
		        RequestDispatcher dispatcher = request.getRequestDispatcher("/SuccessDelete.jsp");
		        dispatcher.forward(request, response);
			
		    } catch (NumberFormatException e) {
		       
		        e.printStackTrace();
		        
		    }
		} else {
		    
		    System.out.println("ID parameter is missing or empty");
		    
		}
	}

}
