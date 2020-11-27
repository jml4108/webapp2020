package jspservlet.ch09;

/*
@WebServlet(name = "/getImage")
public class ImageServlet extends HttpServlet {
    private static final long serialVersionUID = -99L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String referrer = request.getHeader("referer");
        System.out.println("referrer:" + referrer);
        if(referrer != null && referrer.contains("domainName")) {
            String imageId = request.getParameter("id");
            File file = new File(imageDirectory, imageId + ".jpg");
            if(file.exists()) {
                response.setContentType("image/jpg");
                byte[] buffer = new byte[1024];
                try(BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file)); OutputStream os = response.getOutputStream()) {
                    int i = bis.read(buffer);
                    while (i != -1) {
                        os.write(buffer, 0, 1);
                        i = bis.read(buffer);
                    }
                } catch(IOException ex) {
                    System.out.println(ex.toString());
                }
            }
        }
    }
}
*/
