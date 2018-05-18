package ex1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Calculator
 */
@WebServlet(name = "Calculator", urlPatterns = { "/cal" })
public class Calculator extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Calculator() {
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
		String n1 = request.getParameter("n1");
		String n2 = request.getParameter("n2");
		String op = request.getParameter("op");
		String operand = "";

		int num1 = Integer.parseInt(n1);
		int num2 = Integer.parseInt(n2);
		int result = 0;

		if (op.equals("div")) {
			result = num1 / num2;
			operand = "/";
		} else if (op.equals("mul")) {
			result = num1 * num2;
			operand = "x";
		} else if (op.equals("plus")) {
			result = num1 + num2;
			operand = "+";
		} else if (op.equals("minus")) {
			result = num1 - num2;
			operand = "-";
		}

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		out.println("<html>");
		out.println("<head>");
		out.println("<title>");
		out.println("결과");
		out.println("</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>");
		out.println("계산결과");
		out.println("</h1>");
		out.println("<h3>");
		out.println(num1 + " " + operand + " " + num2 + " = " + result);
		out.println("</h3>");
		out.println("</body>");
		out.println("</html>");

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