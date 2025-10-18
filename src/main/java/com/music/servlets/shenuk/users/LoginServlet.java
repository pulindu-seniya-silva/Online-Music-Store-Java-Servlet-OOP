package com.music.servlets.shenuk.users;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uemail = request.getParameter("username"); // Assuming 'username' is the email
        String upwd = request.getParameter("password");

        UserDAO userDAO = new UserDAO();
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher;

        try {
            // Validate user credentials
            User user = userDAO.validateUser(uemail, upwd);
            if (user != null) {
                // Store user details in session
                session.setAttribute("name", user.getUname());
                session.setAttribute("email", user.getUemail());
                session.setAttribute("contact", user.getUmobile());
                // Redirect to profile.jsp
                response.sendRedirect("index.jsp");
            } else {
                // Set status to failed if login is unsuccessful
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("login.jsp");
                dispatcher.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Set status to failed on exception
            request.setAttribute("status", "failed");
            dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }
}
