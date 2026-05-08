package com.servlet;
import javax.servlet.http.*;
import java.io.*;
import com.dao.ProductDAO;
import com.model.Product;

public class AddProductServlet extends HttpServlet {
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException{
Product p=new Product();
p.setProductName(req.getParameter("name"));
p.setCategory(req.getParameter("category"));
p.setPrice(Double.parseDouble(req.getParameter("price")));
p.setQuantity(Integer.parseInt(req.getParameter("quantity")));
new ProductDAO().addProduct(p);
res.sendRedirect("DisplayProductsServlet");
}
}