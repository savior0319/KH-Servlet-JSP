package member.model.service;

import java.sql.Connection;

import jdbc.common.JDBCTemplate;
import member.DAO.MemberDao;
import member.model.vo.MemberVO;

public class MemberService {

	private Connection conn = null;

	public MemberService() {
	}

	public MemberVO selectMember(String userId, String userPwd) {
		conn = JDBCTemplate.getConnect(conn);
		MemberVO m = new MemberDao().selectMember(conn, userId, userPwd);
		JDBCTemplate.close(conn);
		return m;
	}

	public int memberUpdate(MemberVO mv) {
		conn = JDBCTemplate.getConnect(conn);
		int result = new MemberDao().memberUpdate(conn, mv);

		if (result > 0) {
			JDBCTemplate.commit(conn);
		} else
			JDBCTemplate.rollBack(conn);

		JDBCTemplate.close(conn);
		return result;
	}

	public boolean idCheck(String id) {
		conn = JDBCTemplate.getConnect(conn);
		boolean idResult = new MemberDao().idCheck(conn, id);
		JDBCTemplate.close(conn);
		return idResult;
	}
}
