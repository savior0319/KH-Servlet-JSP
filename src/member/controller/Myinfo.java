package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.vo.MemberVO;

@WebServlet("/myInfo")
public class Myinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Myinfo() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (session != null) {

			MemberVO m = (MemberVO) session.getAttribute("user");

			out.println("<html>");
			out.println("<head>");
			out.println("<title>");
			out.println("로그인 성공");
			out.println("</title>");
			out.println("</head>");
			out.println("<style>");
			out.println(
					"h1{color : blue;} a{text-decoration:none; width:150px; display:inline-block;} a:hover{background:skyblue;}");
			out.println("</style>");
			out.println("<body>");
			out.println("<center>");
			out.println("<h1>");
			out.println("회원정보");
			out.println("</h1>");
			out.println("<hr>");
			out.println("<h3>");
			out.println("아이디 : " + m.getMemberID());
			out.println("<br>");
			out.println("이름 : " + m.getMemberName());
			out.println("<br>");
			out.println("나이 : " + m.getMemberAge());
			out.println("<br>");
			out.println("주소 : " + m.getMemberAddr());
			out.println("</h3>");
			out.println("<br>");
			out.println("</center>");
			out.println("</body>");
			out.println("</html>");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
