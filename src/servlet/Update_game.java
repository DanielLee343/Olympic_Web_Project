package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;

/**
 * Servlet implementation class update_game
 */
@WebServlet("/Update_game")
public class Update_game extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Update_game() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Dao gameDao = new Dao();
		gameDao.init("jdbc:mysql://localhost:3306/jsplab", "root", "");

		String sport = request.getParameter("sport");
		int sp = 0;
		String type = "";
		switch (sport) {
		case "Soccer":
			sp = 0;
			type = "team";
			break;
		case "Basketball":
			sp = 1;
			type = "team";
			break;
		case "Tabletennis":
			sp = 2;
			type = "indi";
			break;
		case "Badminton":
			type = "indi";
			sp = 3;
			break;
		}

		int gameID = Integer.valueOf(request.getParameter("id"));
		int scoreA = Integer.valueOf(request.getParameter("scoreA"));
		int scoreB = Integer.valueOf(request.getParameter("scoreB"));

		String winner = "";
		String loser = "";
		if (scoreA > scoreB) {
			winner = request.getParameter("sideA");
			loser = request.getParameter("sideB");
		} else if (scoreA < scoreB) {
			winner = request.getParameter("sideB");
			loser = request.getParameter("sideA");
		}

		if (type.equals("team")) {
			gameDao.executeUpdate("update tgame set score1=" + scoreA + ",score2=" + scoreB
					+ ",state= 'finished' where tgid='" + (gameID + 8 * sp) + "'");

			ResultSet winnerRS = gameDao.executeQuery("select * from team where tname ='" + winner + "'");
			ResultSet loserRS = gameDao.executeQuery("select * from team where tname ='" + loser + "'");

			try {
				if (winnerRS.next() && loserRS.next()) {
					switch (gameID) {
					case 1:
						gameDao.executeUpdate("update tgame set teid1='" + winnerRS.getInt("teid") + "' where tgid='"
								+ (5 + sp * 8) + "'");
						break;
					case 2:
						gameDao.executeUpdate("update tgame set teid2='" + winnerRS.getInt("teid") + "' where tgid='"
								+ (5 + sp * 8) + "'");
						break;
					case 3:
						gameDao.executeUpdate("update tgame set teid1='" + winnerRS.getInt("teid") + "' where tgid='"
								+ (6 + sp * 8) + "'");
						break;
					case 4:
						gameDao.executeUpdate("update tgame set teid2='" + winnerRS.getInt("teid") + "' where tgid='"
								+ (6 + sp * 8) + "'");
						break;
					case 5:
						gameDao.executeUpdate("update tgame set teid1='" + winnerRS.getInt("teid") + "' where tgid='"
								+ (8 + sp * 8) + "'");
						gameDao.executeUpdate("update tgame set teid1='" + loserRS.getInt("teid") + "' where tgid='"
								+ (7 + sp * 8) + "'");
						break;
					case 6:
						gameDao.executeUpdate("update tgame set teid2='" + winnerRS.getInt("teid") + "' where tgid='"
								+ (8 + sp * 8) + "'");
						gameDao.executeUpdate("update tgame set teid2='" + loserRS.getInt("teid") + "' where tgid='"
								+ (7 + sp * 8) + "'");
						break;
					case 7:
						gameDao.executeUpdate("update sportsMedal set bronzepart='" + winner + "',bronzedid ="
								+ winnerRS.getInt("did") + " where sid = '" + sp + "'");
						break;
					case 8:
						gameDao.executeUpdate("update sportsMedal set goldpart='" + winner + "',golddid ="
								+ winnerRS.getInt("did") + " where sid = '" + sp + "'");
						gameDao.executeUpdate("update sportsMedal set silverpart='" + loser + "',silverdid ="
								+ loserRS.getInt("did") + " where sid = '" + sp + "'");
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (type.equals("indi")) {
			gameDao.executeUpdate("update igame set score1=" + scoreA + ",score2=" + scoreB
					+ ",state= 'finished' where igid='" + (gameID + 8 * (sp - 2)) + "'");

			ResultSet winnerRS = gameDao
					.executeQuery("select * from iplayer join team on teid = iid where iname ='" + winner + "'");
			ResultSet loserRS = gameDao
					.executeQuery("select * from iplayer join team on teid = iid where iname ='" + loser + "'");

			try {
				if (winnerRS.next() && loserRS.next()) {
					switch (gameID) {
					case 1:
						gameDao.executeUpdate("update igame set iid1='" + winnerRS.getInt("iid") + "' where igid='"
								+ (5 + (sp - 2) * 8) + "'");
						break;
					case 2:
						gameDao.executeUpdate("update igame set iid2='" + winnerRS.getInt("iid") + "' where igid='"
								+ (5 + (sp - 2) * 8) + "'");
						break;
					case 3:
						gameDao.executeUpdate("update igame set iid1='" + winnerRS.getInt("iid") + "' where igid='"
								+ (6 + (sp - 2) * 8) + "'");
						break;
					case 4:
						gameDao.executeUpdate("update igame set iid2='" + winnerRS.getInt("iid") + "' where igid='"
								+ (6 + (sp - 2) * 8) + "'");
						break;
					case 5:
						gameDao.executeUpdate("update igame set iid1='" + winnerRS.getInt("iid") + "' where igid='"
								+ (8 + (sp - 2) * 8) + "'");
						gameDao.executeUpdate("update igame set iid1='" + loserRS.getInt("iid") + "' where igid='"
								+ (7 + (sp - 2) * 8) + "'");
						break;
					case 6:
						gameDao.executeUpdate("update igame set iid2='" + winnerRS.getInt("iid") + "' where igid='"
								+ (8 + (sp - 2) * 8) + "'");
						gameDao.executeUpdate("update igame set iid2='" + loserRS.getInt("iid") + "' where igid='"
								+ (7 + (sp - 2) * 8) + "'");
						break;
					case 7:
						gameDao.executeUpdate("update sportsMedal set bronzepart='" + winner + "',bronzedid ="
								+ winnerRS.getInt("did") + " where sid = '" + sp + "'");
						break;
					case 8:
						gameDao.executeUpdate("update sportsMedal set goldpart='" + winner + "',golddid ="
								+ winnerRS.getInt("did") + " where sid = '" + sp + "'");
						gameDao.executeUpdate("update sportsMedal set silverpart='" + loser + "',silverdid ="
								+ loserRS.getInt("did") + " where sid = '" + sp + "'");
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		request.getRequestDispatcher("Game_record?method=admin&sport=" + sp).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
