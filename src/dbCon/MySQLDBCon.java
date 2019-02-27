package dbCon;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLDBCon {
	private static Connection conn = null;

	public static Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String user = "root";
			String pwd = "";
			String url = "jdbc:mysql://localhost:3306/jsplab";
			conn = DriverManager.getConnection(url, user, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
