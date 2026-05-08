package com.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import com.dao.ProductDAO;
import com.model.Product;

public class ReportServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String type = (String)request.getAttribute("type");
        String value = (String)request.getAttribute("value");

        ProductDAO dao = new ProductDAO();
        List<Product> list = new ArrayList<>();

        if(type.equals("price")) {
            list = dao.getProductsByPrice(Double.parseDouble(value));
        }
        else if(type.equals("category")) {
            list = dao.getProductsByCategory(value);
        }
        else {
            list = dao.getTopProducts(Integer.parseInt(value));
        }

        request.setAttribute("list", list);

        RequestDispatcher rd = request.getRequestDispatcher("report_result.jsp");
        rd.forward(request, response);
    }
}