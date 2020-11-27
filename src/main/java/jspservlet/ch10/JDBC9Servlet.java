/*
package jspservlet.ch10;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(urlPatterns = "jdbc9", name = "JDBC9Servlet")
public class JDBC9Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            connTest();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    private void connTest() throws SQLException {
        String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:XE";
        String dbUser = "system";
        String dbPass = "cometrue";

        try {
            Class.forName("oracle.jdbc.OracleDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT count(*) from tab");

        try (conn; stmt; rs) {
            System.out.println("Connection Success - " + jdbcUrl);
            while(rs.next())
                System.out.println(rs.getInt(1));
            if(conn.isClosed())
                System.out.println("Connection - close");
            else
                System.out.println("Connection - not close");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
*/