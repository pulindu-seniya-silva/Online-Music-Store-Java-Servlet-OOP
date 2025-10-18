package com.music.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.music.dao.OrderDAOImpl;
import com.music.utils.DatabaseUtil;

/**
 * Servlet implementation class OrderSevlet
 */
@WebServlet("/order/*")
public class OrderSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private OrderDAOImpl orderImpl;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	public void init(ServletConfig config) throws ServletException {
        try {
            Connection conn = DatabaseUtil.getConnection();
            orderImpl = new OrderDAOImpl(conn);
        } catch (SQLException e) {
            throw new ServletException("Failed to initialize ProductDAO", e);
        }
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getPathInfo();
		boolean status = true;
		if (path.equals("/update")) {
			try {
				System.out.println(request.getParameter("id"));
				System.out.println(request.getParameter("status"));
				this.orderImpl.udpateStatus(Integer.parseInt(request.getParameter("id")), request.getParameter("status"));
			} catch (NumberFormatException | SQLException e) {
				e.printStackTrace();
			}
		}
		response.sendRedirect(request.getContextPath() + "/admin/order-view?id=" + request.getParameter("id") + "&status=" + status);
	}

}
