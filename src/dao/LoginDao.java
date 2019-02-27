package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dbCon.MySQLDBCon;

public class LoginDao {
	private static LoginDao instance = null;

	Connection conn;
	Statement stmt;
	ResultSet rs;

	public static LoginDao getInstance() {
		if (instance == null) {
			instance = new LoginDao();
		}
		return instance;
	}

	/*
	 * public boolean getUser(Admin admin) { Connection conn = null; try { conn =
	 * MySQLDBCon.getCon();// 建立数据库连接类 System.out.println("1111111111"); String sql
	 * = "insert into admin values(?,?)"; PreparedStatement pstmt =
	 * conn.prepareStatement(sql); pstmt.setString(1, admin.getId());
	 * pstmt.setString(2, admin.getPwd()); pstmt.executeUpdate();
	 * System.out.println("2222222222"); return true; } catch (Exception e) { //
	 * TODO: handle exception e.printStackTrace(); } finally { try { conn.close(); }
	 * catch (SQLException e) { e.printStackTrace(); } } return false; }
	 */

	public ResultSet executeQuery(String sql) {
		try {
			conn = MySQLDBCon.getCon();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
		} catch (SQLException ex) {
			System.err.println("SQL Error: " + ex.getMessage());
		}
		return rs;
	}

	public void close() throws SQLException {
		stmt.close();
		conn.close();
	}

}
