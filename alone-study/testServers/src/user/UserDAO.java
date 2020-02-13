package user;

import java.sql.Connection;
import java.sql.PreparedStatement;

import utill.DatabaseUtill;

// 실질적으로 데이터베이스와 연동된다고 생각
public class UserDAO {
	public int join(String userID, String userPW) {
		String SQL = "insert into user values(?, ?)";
		
		try {
			Connection conn = DatabaseUtill.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			pstmt.setString(2, userPW);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
