package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Tgame;
import dao.Dao;

/**
 * Servlet implementation class game_record
 */
@WebServlet("/Game_record")
public class Game_record extends HttpServlet {

	/**
	 * Default constructor.
	 */
	public Game_record() {
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
		ResultSet[] gameRS = new ResultSet[8];

		int sp = Integer.parseInt(request.getParameter("sport"));
		String sport = "";
		String type = "";
		switch (sp) {
		case 0:
			sport = "Soccer";
			type = "team";
			break;
		case 1:
			sport = "Basketball";
			type = "team";
			break;
		case 2:
			sport = "Tabletennis";
			type = "indi";
			break;
		case 3:
			sport = "Badminton";
			type = "indi";
			break;
		}
		System.out.println(sport + type);

		if (type.equals("team")) {
			int n;
			for (int i = 0; i < 8; i++) {
				n = sp * 8 + i + 1;
				Tgame game = new Tgame();
				gameRS[i] = gameDao.executeQuery("select * from tgame where tgid = " + n);
				System.out.println("select * from tgame where tgid = " + n);
				try {
					if (gameRS[i].next()) {
						ResultSet gamePartA = gameDao
								.executeQuery("select * from team where teid =" + gameRS[i].getInt("teid1"));
						ResultSet gamePartB = gameDao
								.executeQuery("select * from team where teid =" + gameRS[i].getInt("teid2"));

						game.setGameID(gameRS[i].getInt("tgid"));
						game.setState(gameRS[i].getString("state"));
						if (gamePartA.next()) {
							game.setPartA(gamePartA.getString("tname"));
							game.setFlagA(gamePartA.getString("tflag"));
						}
						if (gamePartB.next()) {
							game.setPartB(gamePartB.getString("tname"));
							game.setFlagB(gamePartB.getString("tflag"));
						}
						game.setScoreA(gameRS[i].getInt("score1"));
						game.setScoreB(gameRS[i].getInt("score2"));
						if (game.getScoreA() > game.getScoreB()) {
							game.setWinner(game.getPartA() + " won");
						} else if (game.getScoreA() < game.getScoreB()) {
							game.setWinner(game.getPartB() + " won");
						} else {
							game.setWinner("Draw");
						}
						game.setTime(gameRS[i].getString("gtime"));
						game.setLocation(gameRS[i].getString("location"));
						request.setAttribute("game" + (i + 1), game);
					}

					request.setAttribute("sport", sport);

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} else if (type.equals("indi")) {
			System.out.println("!!!!!1");
			int n;
			for (int i = 0; i < 8; i++) {
				n = (sp - 2) * 8 + i + 1;
				Tgame game = new Tgame();
				gameRS[i] = gameDao.executeQuery("select * from igame where igid = " + n);
				System.out.println("select * from igame where igid = " + n);

				try {
					if (gameRS[i].next()) {
						ResultSet gamePartA = gameDao.executeQuery(
								"select * from iplayer join team on iid=teid where iid =" + gameRS[i].getInt("iid1"));
						ResultSet gamePartB = gameDao.executeQuery(
								"select * from iplayer join team on iid=teid where iid =" + gameRS[i].getInt("iid2"));

						game.setGameID(gameRS[i].getInt("igid"));
						game.setState(gameRS[i].getString("state"));
						if (gamePartA.next()) {
							game.setPartA(gamePartA.getString("iname"));
							game.setFlagA(gamePartA.getString("tflag"));
						}
						if (gamePartB.next()) {
							game.setPartB(gamePartB.getString("iname"));
							game.setFlagB(gamePartB.getString("tflag"));
						}
						game.setScoreA(gameRS[i].getInt("score1"));
						game.setScoreB(gameRS[i].getInt("score2"));
						if (game.getScoreA() > game.getScoreB()) {
							game.setWinner(game.getPartA() + " won");
						} else if (game.getScoreA() < game.getScoreB()) {
							game.setWinner(game.getPartB() + " won");
						} else {
							game.setWinner("Draw");
						}
						game.setTime(gameRS[i].getString("gtime"));
						game.setLocation(gameRS[i].getString("location"));
						request.setAttribute("game" + (i + 1), game);
					}

					request.setAttribute("sport", sport);

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		RequestDispatcher rd;

		String method = request.getParameter("method");

		if (method.equals("guest")) {
			rd = request.getRequestDispatcher("/pages/guestGames.jsp");
			rd.forward(request, response);

		} else if (method.equals("admin")) {
			rd = request.getRequestDispatcher("/pages/adminGames.jsp");
			rd.forward(request, response);
		}

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
