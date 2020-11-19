package jspservlet.ch11;

import jdk.jfr.internal.RequestEngine;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;

@WebServlet(name = "/download")
public class FileDownloadServlet extends HttpServlet {
    private static final long serialVersionUID = 7583L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session == null || session.getAttribute("loggedIn") == null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
            dispatcher.forward(request, response);
            return ;
        }
        String dataDirectory = request.getServletContext().getRealPath("/WEB-INF/files");

        String fileName = request.getParameter("filename");
        String encFileName = java.net.URLEncoder.encode(fileName, "UTF-8"); //다운로드 이름 : 인코딩 되어야함.

        File file = new File(dataDirectory, fileName);

        if(file.exists()) {
            response.setContentType("application/vnd.ms-excel");
            response.addHeader("Content-Disposition", "attachment: filename=" + encFileName);
            byte[] buffer = new byte[1024];
            try(BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file)); OutputStream os = response.getOutputStream()) {
                int i = bis.read(buffer);
                while(i != -1) {
                    os.write(buffer, 0, i);
                    i = bis.read(buffer);
                }
            } catch(IOException ex) {
                System.out.println(ex.toString());
            }
        }
    }
}
