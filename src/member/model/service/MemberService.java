package member.model.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import member.DAO.MemberDao;
import member.model.vo.MemberVO;

public class MemberService {

	public MemberService() {
	}

	public MemberVO selectMember(String userId, String userPwd) {
		MemberVO m = new MemberVO();
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "loginmember", "loginmember");
			m = new MemberDao().selectMember(conn, userId, userPwd);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return m;
	}
}
