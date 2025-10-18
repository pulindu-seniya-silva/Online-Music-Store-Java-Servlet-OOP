package com.music.servlets.tharindu.servlet;

import java.io.IOException;
import java.io.InputStream;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.music.servlets.tharindu.model.Product;
import com.music.servlets.tharindu.services.ProductDao;


@WebServlet("/addProduct")
@MultipartConfig
public class addProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addProduct() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Product pro = new Product();
		
		
        pro.setItem(request.getParameter("item"));
        pro.setPrice(request.getParameter("price"));
        
        
        pro.setColor(request.getParameter("color"));
        pro.setQuantity(Integer.parseInt(request.getParameter("quantity")));
        
        Part filePart = request.getPart("image");
        if (filePart != null && filePart.getSize() > 0) {
            InputStream imageStream = filePart.getInputStream();
            
            
            byte[] imageBytes = new byte[imageStream.available()];
            imageStream.read(imageBytes);
            pro.setImage(imageBytes); 
        }
		
		ProductDao service = new ProductDao();
		service.newProduct(pro);
		
		 
        request.setAttribute("productImage", pro.getImage());
		
		RequestDispatcher dispacher = request.getRequestDispatcher("cart.jsp");
		dispacher.forward(request, response);
	}

}