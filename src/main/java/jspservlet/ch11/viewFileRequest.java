package jspservlet.ch11;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

@WebServlet(name = "viewFileRequest")
public class viewFileRequest extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html:charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        PrintWriter out = response.getWriter();
        out.println(request.getContentType() + "<br/>");

        BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream(), "utf-8"));

        String line;
        while((line = br.readLine()) != null) {
            out.println(line + "<br/>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
