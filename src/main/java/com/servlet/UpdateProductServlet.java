package com.servlet;
import javax.servlet.http.*;
import java.io.*;
import com.dao.ProductDAO;
import com.model.Product;

public class UpdateProductServlet extends HttpServlet {
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException{
Product p=new Product();
p.setProductId(Integer.parseInt(req.getParameter("id")));
p.setProductName(req.getParameter("name"));
p.setCategory(req.getParameter("category"));
p.setPrice(Double.parseDouble(req.getParameter("price")));
p.setQuantity(Integer.parseInt(req.getParameter("quantity")));
new ProductDAO().updateProduct(p);
res.sendRedirect("DisplayProductsServlet");
}
}