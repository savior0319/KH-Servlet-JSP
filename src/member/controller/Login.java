package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.MemberVO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userid");
		String userPwd = request.getParameter("userpwd");
		MemberVO m = new MemberService().selectMember(userId, userPwd);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (m == null) {
			out.println("<html>");
			out.println("<head>");
			out.println("<title>");
			out.println("결과");
			out.println("</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>");
			out.println("회원정보");
			out.println("</h1>");
			out.print("<hr>");
			out.println("<h3>");
			out.println("없는 회원 입니다");
			out.println("</h3>");
			out.print("<hr>");
			out.println("</body>");
			out.println("</html>");
		} else {
			out.println("<html>");
			out.println("<head>");
			out.println("<title>");
			out.println("결과");
			out.println("</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>");
			out.println("회원정보");
			out.println("</h1>");
			out.print("<hr>");
			out.println("<h3>");
			out.println("아이디 : " + m.getMemberID());
			out.println("<br>");
			out.println("비밀번호 : " + m.getMemberPwd());
			out.println("<br>");
			out.println("이름 : " + m.getMemberName());
			out.println("<br>");
			out.println("나이 : " + m.getMemberAge());
			out.println("<br>");
			out.println("주소 : " + m.getMemberAddr());
			out.println("</h3>");
			out.print("<hr>");
			out.println("</body>");
			out.println("</html>");

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
