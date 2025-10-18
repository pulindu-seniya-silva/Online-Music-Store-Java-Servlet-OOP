package com.music.servlets.shenuk.users;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve user details from the form
        String uname = request.getParameter("name");
        String email = request.getParameter("email"); // Email is readonly and unique
        String upwd = request.getParameter("password");
        String reUpwd = request.getParameter("re_pass");
        String umobile = request.getParameter("contact");
        

        UserDAO userDAO = new UserDAO();
        RequestDispatcher dispatcher = null;

        // Retrieve the current user's email from the session to ensure only their data is updated
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("email") == null) {
            // No session or email attribute found; redirect to login page
            response.sendRedirect("login.jsp");
            return;
        }

        String currentEmail = (String) session.getAttribute("email");

        try {
            // Validate contact number
            if (!umobile.matches("\\d{10}")) {
                request.setAttribute("status", "contact_length");
                dispatcher = request.getRequestDispatcher("update.jsp");
                dispatcher.forward(request, response);
                return;
            }

            // If password fields are filled, validate them
            if ((upwd != null && !upwd.isEmpty()) || (reUpwd != null && !reUpwd.isEmpty())) {
                // Check if both password fields are filled
                if (upwd == null || upwd.isEmpty() || reUpwd == null || reUpwd.isEmpty()) {
                    request.setAttribute("status", "password_required");
                    dispatcher = request.getRequestDispatcher("update.jsp");
                    dispatcher.forward(request, response);
                    return;
                }

                // Validate password match
                if (!upwd.equals(reUpwd)) {
                    request.setAttribute("status", "password_mismatch");
                    dispatcher = request.getRequestDispatcher("update.jsp");
                    dispatcher.forward(request, response);
                    return;
                }

                // Validate password length
                if (upwd.length() < 8) {
                    request.setAttribute("status", "password_length");
                    dispatcher = request.getRequestDispatcher("update.jsp");
                    dispatcher.forward(request, response);
                    return;
                }
            } else {
                // If password fields are empty, retain the existing password
                upwd = ""; // Indicates no change
            }

            // Fetch the existing user to retain the current password if not updating
            User existingUser = userDAO.validateUserForLogin(currentEmail, ""); // Pass empty password to get the user
            if (existingUser == null) {
                request.setAttribute("status", "user_not_found");
                dispatcher = request.getRequestDispatcher("update.jsp");
                dispatcher.forward(request, response);
                return;
            }

            // If user chose not to update the password, retain the existing password
            if (upwd.isEmpty()) {
                upwd = existingUser.getUpwd();
            }

            // Create a User object with updated details
            User updatedUser = new User(uname, email, upwd, umobile);
            boolean isUpdated = userDAO.updateUser(updatedUser);

            if (isUpdated) {
                // Update session attributes
                session.setAttribute("name", uname);
                session.setAttribute("contact", umobile);
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }

            dispatcher = request.getRequestDispatcher("update.jsp");
            dispatcher.forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("status", "error");
            dispatcher = request.getRequestDispatcher("update.jsp");
            dispatcher.forward(request, response);
        }
    }
}
