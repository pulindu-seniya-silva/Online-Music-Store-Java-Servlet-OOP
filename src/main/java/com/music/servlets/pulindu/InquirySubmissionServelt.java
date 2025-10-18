package com.music.servlets.pulindu;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.io.IOException;

@WebServlet("/Inquiry")
@MultipartConfig
public class InquirySubmissionServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get Parameters from the form
		String fullName = request.getParameter("fullName");
		String subject = request.getParameter("subject");
		String OPNo = request.getParameter("OPNo");
		String contactNo = request.getParameter("contactNo");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		 // Get the selected inquiry type from the form
        String selectedInquiry = request.getParameter("inquiry");

        String inquiryType = "";
        
        switch (selectedInquiry) {
            case "1":
                inquiryType = "I have a question about product";
                break;
            case "2":
                inquiryType = "I have a question about order";
                break;
            case "3":
                inquiryType = "Shipping and Delivery Inquiry";
                break;
            case "4":
                inquiryType = "Warranty and Repair Inquiry";
                break;
            case "5":
                inquiryType = "Other";
                break;
            default:
                inquiryType = "Not selected";
        }

        
        // Get the selected contact method from the form
        String contactMethodType = request.getParameter("radio-contact");
        
        String contactMethod = "Not Selected";

        // Map the contact method to a statement 
        if (contactMethodType != null) {
        switch (contactMethodType) {
            case "0":
                contactMethod = "Email";
                break;
            case "1":
                contactMethod = "Phone Call";
                break;
            case "2":
                contactMethod = "Text Message";
                break;
            case "3":
                contactMethod = "Social Media";
                break;
            case "4":
                contactMethod = "Other";
                break;
            default:
                contactMethod = "Not Selected";
        }
        }
        
        // File handling
        String uploadedFileName = ""; // Variable to hold the uploaded file name
        Part filePart = request.getPart("myfile"); // Get the file part

        if (filePart != null && filePart.getSize() > 0) {
            uploadedFileName = filePart.getSubmittedFileName(); // Get the filename
            // You can choose to store the file if needed, or just keep the filename
        }

     // Get current timestamp
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer_inquiry?useSSL=false", "pulindu", "");
			PreparedStatement pst = con.prepareStatement("INSERT INTO customer_inquiry(fullName, subject, OPNo, contactNo, email, message, files, inquiry_type, PContact_method, submission_time) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			pst.setString(1, fullName);
			pst.setString(2, subject);
			pst.setString(3, OPNo);
			pst.setString(4, contactNo);
			pst.setString(5, email);
			pst.setString(6, message);
			pst.setString(7, uploadedFileName);
			pst.setString(8, inquiryType);
			pst.setString(9, contactMethod);
			pst.setTimestamp(10, timestamp);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("InquirySubmission.jsp");
			
			if (rowCount > 0) {
				request.setAttribute("status", "success");
			}
			else {
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		    if (con != null) {
		        try {
		            con.close();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		    }
		}
		
	}	
}
