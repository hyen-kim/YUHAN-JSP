package utill;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtill {

	public static Connection getConnection() {
		try {
			String dbURL = "jdbc:mysql://localhost:43306/tutorial?serverTimezone=UTC";
			String dbID = "root";
			String dbPW = "201907033";
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(dbURL,dbID, dbPW);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
