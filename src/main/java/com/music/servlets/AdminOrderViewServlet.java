package com.music.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.music.dao.OrderDAOImpl;
import com.music.models.Order;
import com.music.utils.DatabaseUtil;

/**
 * Servlet implementation class AdminOrderViewServlet
 */
@WebServlet("/admin/order-view")
public class AdminOrderViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminOrderViewServlet() {
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
			OrderDAOImpl orderDAOImpl = new OrderDAOImpl(conn);
			Order prod = orderDAOImpl.findById(Integer.parseInt(request.getParameter("id")));
			request.setAttribute("order", prod);
		} catch (SQLException e) {
			request.setAttribute("error", true);
			e.printStackTrace();
		}
		request.getRequestDispatcher("/admin/order-view.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
