package com.music.servlets.shenuk.users;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String uname = (String) session.getAttribute("name"); // Get username from session
        UserDAO userDAO = new UserDAO();
        RequestDispatcher dispatcher;

        if (uname == null || uname.isEmpty()) {
            // Handle case when no username is provided
            request.setAttribute("status", "no_username");
            dispatcher = request.getRequestDispatcher("profile.jsp");
            dispatcher.forward(request, response);
            return;
        }

        try {
            boolean isDeleted = userDAO.deleteUser(uname);
            if (isDeleted) {
                // Invalidate session after successful deletion
                session.invalidate(); 
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("status", "error");
        }

        dispatcher = request.getRequestDispatcher("login.jsp"); // Redirect back to profile page
        dispatcher.forward(request, response);
    }
}
