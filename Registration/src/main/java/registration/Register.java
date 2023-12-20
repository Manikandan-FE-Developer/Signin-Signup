package registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("password");
		String cpwd = request.getParameter("confirmpassword");
		String umobile = request.getParameter("contact");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/website?useSSL=false&allowPublicKeyRetrieval=true", "root", "Admin@123");
			PreparedStatement pst = con.prepareStatement("insert into register(uname,upwd,cpwd,uemail,umobile) values(?,?,?,?,?)");
				
			pst.setString(1, uname);
			pst.setString(2, upwd);
			pst.setString(3, cpwd);
			pst.setString(4, uemail);
			pst.setString(5, umobile);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("register.jsp");	
			if(rowCount>0) {
				request.setAttribute("status","success");
			} else {
				request.setAttribute("status","failed");
			}
			dispatcher.forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		} finally {
			try {
                if (con != null) {
                    con.close();
                }
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
