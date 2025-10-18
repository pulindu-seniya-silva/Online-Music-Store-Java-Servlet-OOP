package com.music.servlets.tharindu.servlet;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.music.servlets.tharindu.services.CartDao;

import java.io.IOException;

@WebServlet("/deleteItem")
public class DeleteCart extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        CartDao cartDao = new CartDao();
        
        cartDao.deleteItem(id);
        
        response.sendRedirect("cart.jsp"); 
    }
}
