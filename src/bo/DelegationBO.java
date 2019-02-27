package bo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.Delegation;
import bean.Iplayer;
import bean.Team;
import dbCon.MySQLDBCon;

public class DelegationBO {
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
	public ArrayList getDelegationInfo1(String country) {
		ArrayList arr = new ArrayList();
		try {
			ct = new MySQLDBCon().getCon();
			System.out.println("connected!");
			sm = ct.createStatement();
			String sql = "select dname, dflag1, dintro, iname, iimg, iid from delegation join iplayer on delegation.did = iplayer.did where dname = '"
					+ country + "' and iid = (delegation.did*2-1)";
			rs = sm.executeQuery(sql);
			while (rs.next()) {
				Delegation delegation = new Delegation();
				delegation.setDname(rs.getString(1));
				delegation.setDflag1(rs.getString(2));
				delegation.setDintro(rs.getString(3));

				Iplayer iplayerBad = new Iplayer();
				iplayerBad.setIname(rs.getString(4));
				iplayerBad.setIimg(rs.getString(5));
				iplayerBad.setIid(rs.getInt(6));
				arr.add(delegation);
				arr.add(iplayerBad);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return arr;
	}

	public Iplayer getDelegationInfo2(String country) {
		Iplayer iplayerTable = new Iplayer();
		try {
			ct = new MySQLDBCon().getCon();
			System.out.println("connected!");
			sm = ct.createStatement();
			String sql = "select iname, iimg, iid from delegation join iplayer on delegation.did = iplayer.did where dname = '"
					+ country + "' and iid = (delegation.did*2)";
			rs = sm.executeQuery(sql);
			while (rs.next()) {
				iplayerTable.setIname(rs.getString(1));
				iplayerTable.setIimg(rs.getString(2));
				iplayerTable.setIid(rs.getInt(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return iplayerTable;
	}

	public Team getTeamInfo1(String country) {
		Team teamSoccer = new Team();
		try {
			ct = new MySQLDBCon().getCon();
			System.out.println("connected!");
			sm = ct.createStatement();
			String sql = "select tname, timg1, teid from team join delegation on delegation.did = team.did where dname = '"
					+ country + "' and teid = (delegation.did*2-1)";
			rs = sm.executeQuery(sql);
			while (rs.next()) {
				teamSoccer.setTname(rs.getString(1));
				teamSoccer.setTimg1(rs.getString(2));
				teamSoccer.setTeid(rs.getInt(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.close();
		}
		return teamSoccer;
	}

	public Team getTeamInfo2(String country) {
		Team teamBas = new Team();
		try {
			ct = new MySQLDBCon().getCon();
			System.out.println("connected!");
			sm = ct.createStatement();
			String sql = "select tname, timg1, teid from team join delegation on delegation.did = team.did where dname = '"
					+ country + "' and teid = (delegation.did*2)";
			rs = sm.executeQuery(sql);
			while (rs.next()) {
				teamBas.setTname(rs.getString(1));
				teamBas.setTimg1(rs.getString(2));
				teamBas.setTeid(rs.getInt(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.close();
		}
		return teamBas;
	}

}
