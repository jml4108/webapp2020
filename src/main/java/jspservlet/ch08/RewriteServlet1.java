package jspservlet.ch08;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet(urlPatterns = "/ch08/rewrite-2")
public class RewriteServlet1 extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String n = request.getParameter("urlrewriting");
            out.print("Welcome " + n + "<br/>");
            out.print("<a href='rewrite-3?urlrewriting=" + n + "'>visit</a>");
            out.close();
        }
        catch (Exception e) { System.out.println(e); }
    }
}