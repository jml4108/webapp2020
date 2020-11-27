package jspservlet.ch10;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(urlPatterns = "/jdbc7", name = "JDBC7Servlet")
public class JDBC7Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doGet(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:XE";
        String dbUser = "system";
        String dbPass = "cometrue";
        try {
            Class.forName("oracle.jdbc.OracleDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (
                Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * from tab")
        ) {
            System.out.println("Connection Success - " + jdbcUrl);
            PrintWriter out = response.getWriter();
            out.println("<html><head></head><body>");
            while(rs.next())
                out.println(rs.getString(1) + "<br/>");
            out.println("</body></html>");
        } catch (SQLException e) {
            System.out.println("Connection Fail - ");
        }
    }
}