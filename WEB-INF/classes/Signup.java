import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Signup extends HttpServlet{
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.print("<html><body>");

        try{
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/javaloginsys","root","");

            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            ResultSet userinfo;
            PreparedStatement pstmt1;
            pstmt1 = conn.prepareStatement("SELECT * FROM logininfo WHERE username = ?;");
            pstmt1.setString(1,username);
            
            userinfo = pstmt1.executeQuery();

            if(userinfo.next()){
                redirectmessage(out,"Username Not Available","signup.jsp");
            }

            else{
                pstmt1 = conn.prepareStatement("SELECT * FROM logininfo WHERE email = ?;");
                pstmt1.setString(1,email);
                
                userinfo = pstmt1.executeQuery();

                if(userinfo.next()){
                    redirectmessage(out,"Email Is Already In User","signup.jsp");
                }

                else{

                    pstmt1 = conn.prepareStatement("INSERT INTO logininfo VALUES (?,?,?);");
                    pstmt1.setString(1,username);
                    pstmt1.setString(2,email);
                    pstmt1.setString(3,password);

                    int reply = pstmt1.executeUpdate();

                    if(reply == 1){
                        redirectmessage(out,"Signup Successfully","index.jsp");
                    }

                    else{
                        redirectmessage(out,"Signup Filed : Try Again Later","signup.jsp");
                    }
                }
            }
        }
        catch(Exception e){
            out.print(e.getMessage());
        }
    }

    void redirectmessage(PrintWriter out, String message, String redirectfile) {
        out.println("<script type='text/javascript'>");
        out.println("alert('" + message + "');");
        out.println("window.location.href='" + redirectfile + "';");
        out.println("</script>");
    }
}