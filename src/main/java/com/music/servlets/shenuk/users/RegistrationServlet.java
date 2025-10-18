package com.music.servlets.shenuk.users;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String upwd = request.getParameter("password");
        String reUpwd = request.getParameter("re_pass");
        String umobile = request.getParameter("contact");

        UserDAO userDAO = new UserDAO();
        RequestDispatcher dispatcher;

        try {
            // Validate mobile number
            if (!umobile.matches("\\d{10}")) {
                request.setAttribute("status", "contact_length");
                dispatcher = request.getRequestDispatcher("registration.jsp");
                dispatcher.forward(request, response);
                return;
            }

            // Validate password match
            if (!upwd.equals(reUpwd)) {
                request.setAttribute("status", "password_mismatch");
                dispatcher = request.getRequestDispatcher("registration.jsp");
                dispatcher.forward(request, response);
                return;
            }

            // Validate password length
            if (upwd.length() < 8) {
                request.setAttribute("status", "password_length");
                dispatcher = request.getRequestDispatcher("registration.jsp");
                dispatcher.forward(request, response);
                return;
            }

            // Check if email exists
            if (userDAO.isEmailExists(uemail)) {
                request.setAttribute("status", "email_used");
                dispatcher = request.getRequestDispatcher("registration.jsp");
                dispatcher.forward(request, response);
                return;
            }

            // Create new user
            User user = new User(uname, uemail, upwd, umobile);
            boolean isCreated = userDAO.createUser(user);

            request.setAttribute("status", isCreated ? "success" : "failed");
            dispatcher = request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("status", "failed");
            dispatcher = request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request, response);
        }
    }
}
