package com.music.servlets.tharindu.servlet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.music.servlets.tharindu.services.CartDao;

import java.io.IOException;

@WebServlet("/updateQuantity")
public class UpdateCart extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        CartDao cartDao = new CartDao();
        
        cartDao.updateQuantity(id, quantity);
        
        response.sendRedirect("cart.jsp"); 
    }
}
