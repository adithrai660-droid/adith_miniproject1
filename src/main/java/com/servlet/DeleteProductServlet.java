package com.servlet;

import javax.servlet.http.*;
import java.io.*;
import com.dao.ProductDAO;

public class DeleteProductServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        ProductDAO dao = new ProductDAO();
        dao.deleteProduct(id);

        response.sendRedirect("DisplayProductsServlet");
    }

    // Optional safety
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException {
        doPost(request, response);
    }
}