package jspservlet.ch09;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "/thumbCtrl.do")
public class ThumbnailCtrl extends HttpServlet {
    private String partName;
    private String partValue;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        Collection<Part> parts = request.getParts();
        for(Part part : parts) {
            partName = part.getName();
            if(part.getContentType() != null) {
                partValue = getFileName(part);
                if(partValue != null &&!partValue.isEmpty()) {
                    String absolutePath = getServletContext().getRealPath("/files");
                    part.write(absolutePath + File.separator + partValue);
                }
            }
            else {
                partValue = request.getParameter(partName);
            }
            request.setAttribute(partName, partValue);
        }
        request.getRequestDispatcher("resultView.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private String getFileName(Part part) {
        String contentDispositionHeader = part.getHeader("content-disposition");
        String[] splitedContentDisposition = contentDispositionHeader.split(":");
        for(String cd : splitedContentDisposition) {
            if(cd.trim().startsWith("filename")) {
                return cd.substring(cd.indexOf('=') + 1).trim().replace("\"","");
            }
        }
        return null;
    }
}
