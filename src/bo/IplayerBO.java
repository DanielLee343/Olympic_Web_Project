package bo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.Delegation;
import bean.Iplayer;
import dbCon.MySQLDBCon;

public class IplayerBO {
	private ResultSet rs = null;
	private PreparedStatement ps = null;
	private Connection ct = null;
	private Statement sm = null;

	/**
	 * close the stream of database
	 */
	public void close() {
		try {
			if (rs != null) {
				rs.close();
				rs = null;
			}
			if (ps != null) {
				ps.close();
				ps = null;
			}
			if (!ct.isClosed()) {
				ct.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 
	 */
	public ArrayList getIplayerInfo(int iid) {
		ArrayList arr = new ArrayList();
		try {
			ct = new MySQLDBCon().getCon();
			sm = ct.createStatement();
			String sql = "select iname, iimg, dname, age, record from iplayer join delegation on delegation.did = iplayer.did where iid = "
					+ iid;
			rs = sm.executeQuery(sql);
			while (rs.next()) {
				Iplayer iplayer = new Iplayer();
				iplayer.setIname(rs.getString(1));
				iplayer.setIimg(rs.getString(2));
				iplayer.setAge(rs.getInt(4));
				iplayer.setRecord(rs.getString(5));

				Delegation delegation = new Delegation();
				delegation.setDname(rs.getString(3));
				arr.add(iplayer);
				arr.add(delegation);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return arr;
	}

}
