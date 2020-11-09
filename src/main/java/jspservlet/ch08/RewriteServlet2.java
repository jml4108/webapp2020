package jspservlet.ch08;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(urlPatterns = "/ch08/rewrite-3")
public class RewriteServlet2 extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String n = request.getParameter("urlrewriting");
            out.print("Hello " + n);
            out.close();
        }
        catch (Exception e) { System.out.println(e); } }
}