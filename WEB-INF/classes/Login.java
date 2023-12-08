import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.print("<html><body>");

        try {

            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaloginsys", "root", "");

            String email = request.getParameter("email");
            String password = request.getParameter("password");

            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM logininfo WHERE email = ?;");
            pstmt.setString(1, email);
            ResultSet details = pstmt.executeQuery();

            if (!details.next()) {
                redirectmessage(out, "Invalid Email", "login.jsp");
            }

            else {

                String password_from_database = details.getString(3);

                if (password_from_database.equals(password)) {
                    Cookie c = new Cookie("logincookie", details.getString(1));
                    response.addCookie(c);

                    redirectmessage(out, "Login Successful", "index.jsp");
                }
                else {
                    redirectmessage(out, "Password Invalid", "login.jsp");
                }
            }

        }
        catch (Exception e) {
            out.print(e.getMessage());
        }

        out.print("</body></html>");
    }

    void redirectmessage(PrintWriter out, String message, String redirectfile) {
        out.println("<script type='text/javascript'>");
        out.println("alert('" + message + "');");
        out.println("window.location.href='" + redirectfile + "';");
        out.println("</script>");
    }
}
