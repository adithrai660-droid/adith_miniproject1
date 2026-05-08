package com.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;


public class ReportCriteriaServlet extends HttpServlet {
 protected void doPost(HttpServletRequest req,HttpServletResponse res)
 throws ServletException,IOException {
  req.setAttribute("type",req.getParameter("type"));
  req.setAttribute("value",req.getParameter("value"));
  req.getRequestDispatcher("ReportServlet").forward(req,res);
 }
}