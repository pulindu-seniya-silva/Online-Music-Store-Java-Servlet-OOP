package com.music.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.music.dao.ProductDAOImpl;
import com.music.models.Product;
import com.music.utils.DatabaseUtil;

/**
 * Servlet implementation class AdminItemServlet
 */
@WebServlet("/admin/items")
public class AdminItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn;
		try {
			conn = DatabaseUtil.getConnection();
			ProductDAOImpl productDAO = new ProductDAOImpl(conn);
			List<Product> productList = productDAO.findAll();
			request.setAttribute("productList", productList);
		} catch (SQLException e) {
			request.setAttribute("error", true);
			e.printStackTrace();
		}
		request.getRequestDispatcher("/admin/items.jsp").forward(request, response);
	}

}
