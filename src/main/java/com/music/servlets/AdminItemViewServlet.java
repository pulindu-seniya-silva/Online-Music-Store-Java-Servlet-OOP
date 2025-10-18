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
 * Servlet implementation class AdminItemViewServlet
 */
@WebServlet("/admin/item-view")
public class AdminItemViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminItemViewServlet() {
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
			Product prod = productDAO.findById(Integer.parseInt(request.getParameter("id")));
			request.setAttribute("product", prod);
		} catch (SQLException e) {
			request.setAttribute("error", true);
			e.printStackTrace();
		}
		request.getRequestDispatcher("/admin/item-view.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
