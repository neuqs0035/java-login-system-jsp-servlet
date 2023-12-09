import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Logout extends HttpServlet{

    protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{

        PrintWriter out = response.getWriter();
        out.print("<html><body>");

        Cookie[] cookies = request.getCookies();

        for (Cookie cookie : cookies) {

            if (cookie.getName().equals("logincookie")) {

                cookie.setMaxAge(0);
                    
                response.addCookie(cookie);
                    
                out.println("<script type='text/javascript'>");
                out.println("alert('Logout Successfully');");
                out.println("window.location.href='index.jsp';");
                out.println("</script>");
                    
            }
        }

        out.print("</body></html>");
    }
}