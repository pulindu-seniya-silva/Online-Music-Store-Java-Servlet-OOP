package com.music.servlets.pulindu;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/stk/update")
public class UpdateKeeperServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String available_Instrument_Types = request.getParameter("available_Instrument_Types");
		String available_Music_Brands = request.getParameter("available_Music_Brands");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String store_name = request.getParameter("store_name");
		String available_time = request.getParameter("available_time");
		
		PrintWriter out = response.getWriter();
        out.println("<h1>accessed <h1>");
        
        System.out.println(username);
		
		boolean isTrue;
		
		isTrue = ShopKeeperUtil.updateKeeper(id,username, password, available_Instrument_Types, available_Music_Brands, email, phoneNumber, store_name, available_time);
		
		try { if (isTrue == true) {
			
		//	response.getWriter().println("Update Succesful"); 
			RequestDispatcher dis = request.getRequestDispatcher("/SuccessUpdate.jsp");
			dis.forward(request, response);
		} }
		 
		catch (Exception e) {
			    e.printStackTrace();
			
			response.getWriter().println("Update UnSuccesful");
			
		} 
		
	}

}
