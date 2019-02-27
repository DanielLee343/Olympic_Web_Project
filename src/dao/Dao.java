package dao;
import java.sql.*;
public class Dao{

	Connection conn;
	Statement stmt;
	ResultSet rs ;
	//构造函数
	public Dao() { }
	//根据参数，加载驱动程序，建立连接
	public void init(String dburl,String db_user,String db_passwd) { 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dburl,db_user,db_passwd);

		} catch(java.lang.ClassNotFoundException e) {

			System.err.println("Load Driver Error: " + e.getMessage());

		} catch(SQLException ex) {

			System.err.println("Get Connection Error: " + ex.getMessage());
		}
	}

	public ResultSet executeQuery(String sql) {   //execute sql
		try {

			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
		} catch(SQLException ex) { 
			System.err.println("SQL Error: " + ex.getMessage());
		}
		return rs;
	}

	public void executeUpdate(String sql) {   //update sql
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch(SQLException ex) { 
			System.err.println("SQL Error: " + ex.getMessage());
		}
	}

	public void close() throws SQLException {

		stmt.close();
		conn.close();

	}	 
}

