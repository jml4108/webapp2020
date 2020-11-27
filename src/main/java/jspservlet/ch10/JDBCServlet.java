package jspservlet.ch10;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(urlPatterns = "/jdbc", name = "JDBCServlet")
public class JDBCServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doGet(request, response);
    }
    private Connection conn = null;
    private Statement stmt = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:XE";
        String dbUser = "system";
        String dbPass = "cometrue";
        try {
// Class.forName("oracle.jdbc.driver.OracleDriver");
            Class.forName("oracle.jdbc.OracleDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        PrintWriter out = response.getWriter();
        out.println("<html><head></head><body>");
        try {
            conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
            stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT count* from tab");
            System.out.println("Connection Success - " + jdbcUrl);
            while(rs.next())
                System.out.println(rs.getString(1) + "<br/>");
                //System.out.println(rs.getString(1));
            out.println("</body></html>");
        } catch (SQLException e) {
            System.out.println("Connection Fail - ");
        } finally {
            if (rs != null) try { rs.close(); } catch(Exception e) {}
            if (pstmt != null) try { pstmt.close(); } catch(Exception e) {}
            if (stmt != null) try { stmt.close(); } catch(Exception e) {}
            if (conn != null) try { conn.close(); } catch(Exception e) {}
        }
        try {
            if(conn.isClosed())
                System.out.println("Connection - close");
            else
                System.out.println("Connection - not close");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}