package member.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jdbc.common.JDBCTemplate;
import member.model.vo.MemberVO;

public class MemberDao {

	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public MemberDao() {
	}

	public MemberVO selectMember(Connection conn, String userId, String userPwd) {

		MemberVO m = null;

		String query = "select * from member where member_id = ? and member_pwd = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				m = new MemberVO();
				m.setMemberID(rs.getString("member_id"));
				m.setMemberPwd(rs.getString("member_pwd"));
				m.setMemberName(rs.getString("member_name"));
				m.setMemberAge(rs.getInt("member_age"));
				m.setMemberAddr(rs.getString("member_addr"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
		}
		return m;

	}

	public int memberUpdate(Connection conn, MemberVO mv) {

		int result = 0;

		String query = "update member set member_pwd = ?, member_addr = ? where member_id = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, mv.getMemberPwd());
			pstmt.setString(2, mv.getMemberAddr());
			pstmt.setString(3, mv.getMemberID());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
}
