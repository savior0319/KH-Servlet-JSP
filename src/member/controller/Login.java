/*
 
DROP TABLE MEMBER;

CREATE TABLE MEMBER(
  MEMBER_ID VARCHAR2(20) PRIMARY KEY,
  MEMBER_PWD VARCHAR2(20) NOT NULL,
  MEMBER_NAME VARCHAR2(20) NOT NULL,
  MEMBER_AGE NUMBER,
  MEMBER_ADDR VARCHAR2(20)
);

INSERT INTO MEMBER VALUES
('admin', 'pwd1', '관리자', 20, '인천');

INSERT INTO MEMBER VALUES
('user11', 'pwd112', '이름1', 30, '서울');

INSERT INTO MEMBER VALUES
('user22', 'pwd119', '이름2', 40, '부산');

COMMIT;

SELECT * FROM MEMBER;
 
 */

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

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userid");
		String userPwd = request.getParameter("userpwd");
		MemberVO m = new MemberService().selectMember(userId, userPwd);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (m == null) { // 로그인 실패
			out.println("<html>");
			out.println("<head>");
			out.println("<title>");
			out.println("결과");
			out.println("</title>");
			out.println("</head>");
			out.println("<style>");
			out.println("h1{color : red;}");
			out.println("</style>");
			out.println("<body>");
			out.println("<center>");
			out.println("<h1>");
			out.println("로그인 실패");
			out.println("</h1>");
			out.print("<hr>");
			out.println("<h3>");
			out.println("아이디 또는 비밀번호를 확인하세요");
			out.println("</h3>");
			out.print("<hr>");
			out.println("</center>");
			out.println("</body>");
			out.println("</html>");
		} else { // 로그인 성공
			out.println("<html>");
			out.println("<head>");
			out.println("<title>");
			out.println("결과");
			out.println("</title>");
			out.println("</head>");
			out.println("<style>");
			out.println("h1{color : blue;} a{text-decoration:none;}");
			out.println("</style>");
			out.println("<body>");
			out.println("<center>");
			out.println("<h1>");
			out.println(m.getMemberName() + "님 환영합니다");
			out.println("</h1>");
			out.println("<hr>");
			out.println("<h2>");
			out.println("회원정보");
			out.println("</h2>");
			out.println("<hr>");
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
			out.println("<a href=myInfo>마이페이지</a>");
			out.println("<br>");
			out.println("<a href=logout>로그아웃</a>");
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
