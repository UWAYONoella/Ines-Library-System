package com.Ines;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateborrower")
public class updateborrower extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String faculty = request.getParameter("faculty");
        String department = request.getParameter("department");
        String year = request.getParameter("year");
        String studentName = request.getParameter("studentName");
        String studentID = request.getParameter("studentID");
        String bookTitle = request.getParameter("bookTitle");
        String lendDate = request.getParameter("lendDate");
        String dueDate = request.getParameter("dueDate");
        String status = request.getParameter("status");

        ConnectDB db = new ConnectDB();
        db.dbConnection();
        String res = db.updateborrowerdata(id, faculty, department, year, studentName, studentID, bookTitle, lendDate, dueDate, status);

        if (res != null) {
            response.sendRedirect("processLending.jsp");
        }
    }
}
