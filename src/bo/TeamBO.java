package bo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.Team;
import bean.Tmedal;
import bean.Tplayer;
import dbCon.MySQLDBCon;

public class TeamBO {
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

	public ArrayList getTeamAndRecordInfo1(int teid) {
		ArrayList arr = new ArrayList();
		try {
			ct = new MySQLDBCon().getCon();
			sm = ct.createStatement();
			String sql = "select tname, timg1, timg2, tplayer.tintro, gold, silver, bronze, timg, tpname, team.tintro, tid "
					+ "from team, tmedal, tplayer where team.teid= tmedal.teid and tplayer.teid= team.teid and tplayer.tid="
					+ (teid * 4 - 3) + "";
			rs = sm.executeQuery(sql);
			while (rs.next()) {
				Team team = new Team();
				team.setTname(rs.getString(1));
				team.setTimg1(rs.getString(2));
				team.setTimg2(rs.getString(3));
				team.setTintro(rs.getString(10));

				Tmedal tmedal = new Tmedal();
				tmedal.setGold(rs.getInt(5));
				tmedal.setSilver(rs.getInt(6));
				tmedal.setBronze(rs.getInt(7));

				Tplayer tplayer1 = new Tplayer();
				tplayer1.setTimg(rs.getString(8));
				tplayer1.setTpname(rs.getString(9));
				tplayer1.setTintro(rs.getString(4));
				tplayer1.setTid(rs.getInt(11));
				arr.add(team);
				arr.add(tmedal);
				arr.add(tplayer1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return arr;
	}

	public Tplayer getTeamAndRecordInfo2(int teid) {
		Tplayer tplayer2 = new Tplayer();
		try {
			ct = new MySQLDBCon().getCon();
			sm = ct.createStatement();
			String sql = "select tintro, timg, tpname, tid " + "from tplayer where tid=" + (teid * 4 - 2) + "";
			rs = sm.executeQuery(sql);
			while (rs.next()) {
				tplayer2.setTimg(rs.getString(2));
				tplayer2.setTpname(rs.getString(3));
				tplayer2.setTintro(rs.getString(1));
				tplayer2.setTid(rs.getInt(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return tplayer2;
	}

	public Tplayer getTeamAndRecordInfo3(int teid) {
		Tplayer tplayer3 = new Tplayer();
		try {
			ct = new MySQLDBCon().getCon();
			sm = ct.createStatement();
			String sql = "select tintro, timg, tpname, tid " + "from tplayer where tid=" + (teid * 4 - 1) + "";
			rs = sm.executeQuery(sql);
			while (rs.next()) {
				tplayer3.setTimg(rs.getString(2));
				tplayer3.setTpname(rs.getString(3));
				tplayer3.setTintro(rs.getString(1));
				tplayer3.setTid(rs.getInt(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return tplayer3;
	}

	public Tplayer getTeamAndRecordInfo4(int teid) {
		Tplayer tplayer4 = new Tplayer();
		try {
			ct = new MySQLDBCon().getCon();
			sm = ct.createStatement();
			String sql = "select tintro, timg, tpname,tid " + "from tplayer where tid=" + (teid * 4) + "";
			rs = sm.executeQuery(sql);
			while (rs.next()) {
				tplayer4.setTimg(rs.getString(2));
				tplayer4.setTpname(rs.getString(3));
				tplayer4.setTintro(rs.getString(1));
				tplayer4.setTid(rs.getInt(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return tplayer4;
	}
}
