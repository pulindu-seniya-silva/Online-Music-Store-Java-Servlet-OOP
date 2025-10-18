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

import com.music.dao.OrderDAOImpl;
import com.music.dao.ProductDAOImpl;
import com.music.models.Order;
import com.music.models.Product;
import com.music.utils.DatabaseUtil;

/**
 * Servlet implementation class AdiminDashboard
 */
@WebServlet("/admin/dashboard")
public class AdiminDashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdiminDashboard() {
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
			OrderDAOImpl orderDAO = new OrderDAOImpl(conn);
			List<Order> orderList = orderDAO.findAll();
			
			ProductDAOImpl itemDAO = new ProductDAOImpl(conn);
			List<Product> itemList = itemDAO.findAll();
			
			request.setAttribute("ordersList", orderList);
			request.setAttribute("itemList", itemList);
			
			
		} catch (SQLException e) {
			request.setAttribute("error", true);
			e.printStackTrace();
		}
		request.getRequestDispatcher("/admin/dashboard.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
