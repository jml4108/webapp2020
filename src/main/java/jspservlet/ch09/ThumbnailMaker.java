package jspservlet.ch09;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "ThumbnailMaker")
public class ThumbnailMaker extends HttpServlet {
    public static void makeThumbnail(String srcPath, String destPath, int ratio) {
        try {
            BufferedImage srcBi = ImageIO.read(new File(srcPath));

            int width = srcBi.getWidth(null)*ratio/100;
            int height = srcBi.getHeight(null)*ratio/100;

            Image srcImg = srcBi.getScaledInstance(width, height, Image.SCALE_SMOOTH);

            BufferedImage destBi = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
            Graphics g = destBi.getGraphics();
            g.drawImage(srcImg, 0, 0, null);
            try{
                ImageIO.write(destBi, "jpg", new File(destPath));
            } catch (IOException ioe) {
                System.out.println(ioe);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
