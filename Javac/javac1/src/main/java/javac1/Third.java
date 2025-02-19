package javac1;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Third
 */
@WebServlet("/Third")
public class Third extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletContext ctx;
	RequestDispatcher rd=null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Third() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html"); PrintWriter pw=response.getWriter();
		 String u=request.getParameter("user"); HttpSession
		 session=request.getSession(); session.setAttribute("user", u);
		 System.out.println(session.getId()); ctx=getServletContext();
		 if(u.equals("admin")&& pw.equals("abc")) {
		 rd=ctx.getRequestDispatcher("/S1"); rd.forward(request, response); 
		 } 
		 else 
		 {
		 rd=ctx.getRequestDispatcher("/Hi.html"); rd.include(request, response);
		 pw.println("<font color=pink> Wrong Username or Password</font>"); 
		 }
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
