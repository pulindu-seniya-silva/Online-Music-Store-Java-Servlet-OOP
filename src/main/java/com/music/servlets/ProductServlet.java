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

import com.music.dao.ProductDAO;
import com.music.dao.ProductDAOImpl;
import com.music.models.Product;
import com.music.utils.DatabaseUtil;

/**
 * Servlet implementation class Product
 */
@WebServlet("/product/*")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductDAO productDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
        try {
            Connection conn = DatabaseUtil.getConnection();
            productDAO = new ProductDAOImpl(conn);
        } catch (SQLException e) {
            throw new ServletException("Failed to initialize ProductDAO", e);
        }
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Product prod = new Product();
		prod.setName("Test Name");
		prod.setDescription("Test Description");
		prod.setPrice(35.3);
		prod.setCategory("Guitar");
		prod.setQty(20);
		
		try {
			this.productDAO.insert(prod);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getPathInfo();

        if (path == null || path.equals("/")) {
    		boolean status = true;
    		Product prod = new Product();
    		prod.setName(request.getParameter("name"));
    		prod.setDescription(request.getParameter("description"));
    		prod.setPrice(Double.parseDouble(request.getParameter("price")));
    		prod.setCategory(request.getParameter("category"));
    		prod.setQty(Integer.parseInt(request.getParameter("qty")));
    		prod.setColour(request.getParameter("color"));
    		prod.setImage(request.getParameter("image"));


    		try {
    			this.productDAO.insert(prod);
    		} catch (SQLException e) {
    			e.printStackTrace();
    		}
    		
    		response.sendRedirect(request.getContextPath() + "/admin/items?status=" + status);
        } else if (path.equals("/update")) {
    		boolean status = true;
    		Product prod = new Product();
    		prod.setId(Integer.parseInt(request.getParameter("id")));
    		prod.setName(request.getParameter("name"));
    		prod.setDescription(request.getParameter("description"));
    		prod.setPrice(Double.parseDouble(request.getParameter("price")));
    		prod.setCategory(request.getParameter("category"));
    		prod.setQty(Integer.parseInt(request.getParameter("qty")));
    		prod.setColour(request.getParameter("color"));
    		prod.setImage(request.getParameter("image"));

    		try {
    			this.productDAO.update(prod);
    		} catch (SQLException e) {
    			e.printStackTrace();
    		}
    		
    		response.sendRedirect(request.getContextPath() + "/admin/item-view?id=" + prod.getId() + "&status=" + status);
        } else if (path.equals("/delete")) {
    		try {
    			this.productDAO.delet(Integer.parseInt(request.getParameter("id")));
    		} catch (SQLException e) {
    			e.printStackTrace();
    		}
    		
    		response.sendRedirect(request.getContextPath() + "/admin/items");
        } else {
            // Handle unknown paths
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Unknown path: " + path);
        }

	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean status = true;
		Product prod = new Product();
		prod.setId(Integer.parseInt(request.getParameter("id")));
		prod.setName(request.getParameter("name"));
		prod.setDescription(request.getParameter("description"));
		prod.setPrice(Double.parseDouble(request.getParameter("price")));
		prod.setCategory(request.getParameter("category"));
		prod.setQty(Integer.parseInt(request.getParameter("qty")));
		prod.setColour(request.getParameter("color"));
		prod.setImage(request.getParameter("image"));

		try {
			this.productDAO.update(prod);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/admin/item-view?status=" + status);
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
