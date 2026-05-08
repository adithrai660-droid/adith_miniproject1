package com.servlet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import com.dao.ProductDAO;

public class DisplayProductsServlet extends HttpServlet {
protected void doGet(HttpServletRequest req,HttpServletResponse res)
throws ServletException,IOException{
req.setAttribute("list",new ProductDAO().getAllProducts());
req.getRequestDispatcher("productdisplay.jsp").forward(req,res);
}
}