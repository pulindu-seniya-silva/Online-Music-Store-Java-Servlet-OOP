package com.music.servlets.shenuk.users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@SuppressWarnings("serial")
@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        
        if (email != null) {
            UserDAO userDao = new UserDAO();
            try {
                boolean isDeleted = userDao.deleteUser(email);
                if (isDeleted) {
                    // Invalidate the session after successful deletion
                    session.invalidate();
                    request.setAttribute("status", "success");
                } else {
                    request.setAttribute("status", "failed");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                request.setAttribute("status", "error");
            }
        } else {
            request.setAttribute("status", "error");
        }
        
        // Forward to the profile JSP to show the status
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}
