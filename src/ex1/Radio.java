package ex1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/radio")
public class Radio extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Radio() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String gender, chkmail, content;
		String getGender[] = request.getParameterValues("gender");
		String getChkmail[] = request.getParameterValues("chkmail");
		content = request.getParameter("content");

		if (getGender[0].equals("남자")) {
			gender = "남자";
		} else {
			gender = "여자";
		}

		if (getChkmail[0].equals("yes")) {
			chkmail = "yes";
		} else {
			chkmail = "no";
		}

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		out.println("<html>");
		out.println("<head>");
		out.println("<title>");
		out.println("클라이언트의 입력 정보");
		out.println("</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h3>");
		out.println("클라이언트의 입력 정보");
		out.println("</h3>");
		out.println("<hr>");
		out.println("<h3>");
		out.println("성별 : " + gender);
		out.println("</h3>");
		out.println("<h3>");
		out.println("메일 수신 여부 : " + chkmail);
		out.println("</h3>");
		out.println("<h3>");
		out.println("가입 인사 : " + content);
		out.println("</h3>");
		out.println("</body>");
		out.println("</html>");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}