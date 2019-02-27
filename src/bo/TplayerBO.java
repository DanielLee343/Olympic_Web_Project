package bo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.Team;
import bean.Tplayer;
import dbCon.MySQLDBCon;

public class TplayerBO {
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
	public ArrayList getTplayerInfo(int tid) {
		ArrayList arr = new ArrayList();
		try {
			ct = new MySQLDBCon().getCon();
			sm = ct.createStatement();
			String sql = "select tpname, timg, tname, age, tplayer.tintro, position from tplayer join team on team.teid = tplayer.teid where tid = "
					+ tid;
			rs = sm.executeQuery(sql);
			while (rs.next()) {
				Tplayer tplayer = new Tplayer();
				tplayer.setTpname(rs.getString(1));
				tplayer.setTimg(rs.getString(2));
				tplayer.setAge(rs.getInt(4));
				tplayer.setTintro(rs.getString(5));
				tplayer.setPosition(rs.getString(6));

				Team team = new Team();
				team.setTname(rs.getString(3));
				arr.add(team);
				arr.add(tplayer);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return arr;
	}

}
