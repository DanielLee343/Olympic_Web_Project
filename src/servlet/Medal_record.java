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

import bean.sportsMedal;
import dao.Dao;

/**
 * Servlet implementation class Medal_record
 */
@WebServlet("/Medal_record")
public class Medal_record extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Medal_record() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Dao medalDao = new Dao();
		medalDao.init("jdbc:mysql://localhost:3306/jsplab", "root", "");
		ResultSet[] medalRS = new ResultSet[13];

		for (int i = 0; i < 2; i++) {
			sportsMedal medal = new sportsMedal();
			medalRS[0] = medalDao
					.executeQuery("select * from sportsmedal join delegation on golddid = did where sid=" + i);
			medalRS[1] = medalDao
					.executeQuery("select * from sportsmedal join delegation on silverdid = did where sid=" + i);
			medalRS[2] = medalDao
					.executeQuery("select * from sportsmedal join delegation on bronzedid = did where sid=" + i);
			medalRS[3] = medalDao.executeQuery(
					"select * from (tgame join team on teid1 = teid)  join delegation using(did) where tgid = '"
							+ (7 + 8 * i) + "'");
			medalRS[4] = medalDao.executeQuery(
					"select * from (tgame join team on teid2 = teid)  join delegation using(did) where tgid = '"
							+ (7 + 8 * i) + "'");
			medalRS[5] = medalDao.executeQuery(
					"select * from (tgame join team on teid1 = teid)  join delegation using(did) where tgid = '"
							+ (1 + 8 * i) + "'");
			medalRS[6] = medalDao.executeQuery(
					"select * from (tgame join team on teid2 = teid)  join delegation using(did) where tgid = '"
							+ (1 + 8 * i) + "'");
			medalRS[7] = medalDao.executeQuery(
					"select * from (tgame join team on teid1 = teid)  join delegation using(did) where tgid = '"
							+ (2 + 8 * i) + "'");
			medalRS[8] = medalDao.executeQuery(
					"select * from (tgame join team on teid2 = teid)  join delegation using(did) where tgid = '"
							+ (2 + 8 * i) + "'");
			medalRS[9] = medalDao.executeQuery(
					"select * from (tgame join team on teid1 = teid)  join delegation using(did) where tgid = '"
							+ (3 + 8 * i) + "'");
			medalRS[10] = medalDao.executeQuery(
					"select * from (tgame join team on teid2 = teid)  join delegation using(did) where tgid = '"
							+ (3 + 8 * i) + "'");
			medalRS[11] = medalDao.executeQuery(
					"select * from (tgame join team on teid1 = teid)  join delegation using(did) where tgid = '"
							+ (4 + 8 * i) + "'");
			medalRS[12] = medalDao.executeQuery(
					"select * from (tgame join team on teid2 = teid)  join delegation using(did) where tgid = '"
							+ (4 + 8 * i) + "'");
			try {
				if (medalRS[1].next() && medalRS[2].next() && medalRS[0].next() && medalRS[3].next()
						&& medalRS[4].next() && medalRS[5].next() && medalRS[6].next() && medalRS[7].next()
						&& medalRS[8].next() && medalRS[9].next() && medalRS[10].next() && medalRS[11].next()
						&& medalRS[12].next()) {
					medal.setSid(i);
					medal.setGolddname(medalRS[0].getString("dname"));
					medal.setGoldpart(medalRS[0].getString("goldpart"));
					medal.setSilverdname(medalRS[1].getString("dname"));
					medal.setSilverpart(medalRS[1].getString("silverpart"));
					medal.setBronzedname(medalRS[2].getString("dname"));
					medal.setBronzepart(medalRS[2].getString("bronzepart"));
					if (medalRS[3].getInt("score1") < medalRS[3].getInt("score2")) {
						medal.setFourthpart(medalRS[3].getString("tname"));
						medal.setFourthdname(medalRS[3].getString("dname"));
					} else {
						medal.setFourthpart(medalRS[4].getString("tname"));
						medal.setFourthdname(medalRS[4].getString("dname"));
					}
					if (medalRS[5].getInt("score1") < medalRS[5].getInt("score2")) {
						medal.setLoserapart(medalRS[5].getString("tname"));
						medal.setLoseradname(medalRS[5].getString("dname"));
					} else {
						medal.setLoserapart(medalRS[6].getString("tname"));
						medal.setLoseradname(medalRS[6].getString("dname"));
					}
					if (medalRS[7].getInt("score1") < medalRS[7].getInt("score2")) {
						medal.setLoserbpart(medalRS[7].getString("tname"));
						medal.setLoserbdname(medalRS[7].getString("dname"));
					} else {
						medal.setLoserbpart(medalRS[8].getString("tname"));
						medal.setLoserbdname(medalRS[8].getString("dname"));
					}
					if (medalRS[9].getInt("score1") < medalRS[9].getInt("score2")) {
						medal.setLosercpart(medalRS[9].getString("tname"));
						medal.setLosercdname(medalRS[9].getString("dname"));
					} else {
						medal.setLosercpart(medalRS[10].getString("tname"));
						medal.setLosercdname(medalRS[10].getString("dname"));
					}
					if (medalRS[11].getInt("score1") < medalRS[11].getInt("score2")) {
						medal.setLoserdpart(medalRS[11].getString("tname"));
						medal.setLoserddname(medalRS[11].getString("dname"));
					} else {
						medal.setLoserdpart(medalRS[12].getString("tname"));
						medal.setLoserddname(medalRS[12].getString("dname"));
					}
					request.setAttribute("medal" + (i + 1), medal);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		for (int i = 0; i < 2; i++) {
			sportsMedal medal = new sportsMedal();
			medalRS[0] = medalDao
					.executeQuery("select * from sportsmedal join delegation on golddid = did where sid=" + (i + 2));
			medalRS[1] = medalDao
					.executeQuery("select * from sportsmedal join delegation on silverdid = did where sid=" + (i + 2));
			medalRS[2] = medalDao
					.executeQuery("select * from sportsmedal join delegation on bronzedid = did where sid=" + (i + 2));
			medalRS[3] = medalDao.executeQuery(
					"select * from ((igame join team on iid1 = teid)  join delegation using(did))join iplayer on iid1 =iid where igid = '"
							+ (7 + 8 * i) + "'");
			medalRS[4] = medalDao.executeQuery(
					"select * from ((igame join team on iid2 = teid)  join delegation using(did))join iplayer on iid1 =iid where igid = '"
							+ (7 + 8 * i) + "'");
			medalRS[5] = medalDao.executeQuery(
					"select * from ((igame join team on iid1 = teid)  join delegation using(did))join iplayer on iid1 =iid where igid = '"
							+ (1 + 8 * i) + "'");
			medalRS[6] = medalDao.executeQuery(
					"select * from ((igame join team on iid2 = teid)  join delegation using(did))join iplayer on iid1 =iid where igid = '"
							+ (1 + 8 * i) + "'");
			medalRS[7] = medalDao.executeQuery(
					"select * from ((igame join team on iid1 = teid)  join delegation using(did))join iplayer on iid1 =iid where igid = '"
							+ (2 + 8 * i) + "'");
			medalRS[8] = medalDao.executeQuery(
					"select * from ((igame join team on iid2 = teid)  join delegation using(did))join iplayer on iid1 =iid where igid = '"
							+ (2 + 8 * i) + "'");
			medalRS[9] = medalDao.executeQuery(
					"select * from ((igame join team on iid1 = teid)  join delegation using(did))join iplayer on iid1 =iid where igid = '"
							+ (3 + 8 * i) + "'");
			medalRS[10] = medalDao.executeQuery(
					"select * from ((igame join team on iid2 = teid)  join delegation using(did))join iplayer on iid1 =iid where igid = '"
							+ (3 + 8 * i) + "'");
			medalRS[11] = medalDao.executeQuery(
					"select * from ((igame join team on iid1 = teid)  join delegation using(did))join iplayer on iid1 =iid where igid = '"
							+ (4 + 8 * i) + "'");
			medalRS[12] = medalDao.executeQuery(
					"select * from ((igame join team on iid2 = teid)  join delegation using(did))join iplayer on iid1 =iid where igid = '"
							+ (4 + 8 * i) + "'");
			try {
				if (medalRS[1].next() && medalRS[2].next() && medalRS[0].next() && medalRS[3].next()
						&& medalRS[4].next() && medalRS[5].next() && medalRS[6].next() && medalRS[7].next()
						&& medalRS[8].next() && medalRS[9].next() && medalRS[10].next() && medalRS[11].next()
						&& medalRS[12].next()) {
					medal.setSid(i);
					medal.setGolddname(medalRS[0].getString("dname"));
					medal.setGoldpart(medalRS[0].getString("goldpart"));
					medal.setSilverdname(medalRS[1].getString("dname"));
					medal.setSilverpart(medalRS[1].getString("silverpart"));
					medal.setBronzedname(medalRS[2].getString("dname"));
					medal.setBronzepart(medalRS[2].getString("bronzepart"));
					if (medalRS[3].getInt("score1") < medalRS[3].getInt("score2")) {
						medal.setFourthpart(medalRS[3].getString("iname"));
						medal.setFourthdname(medalRS[3].getString("dname"));
					} else {
						medal.setFourthpart(medalRS[4].getString("iname"));
						medal.setFourthdname(medalRS[4].getString("dname"));
					}
					if (medalRS[5].getInt("score1") < medalRS[5].getInt("score2")) {
						medal.setLoserapart(medalRS[5].getString("iname"));
						medal.setLoseradname(medalRS[5].getString("dname"));
					} else {
						medal.setLoserapart(medalRS[6].getString("iname"));
						medal.setLoseradname(medalRS[6].getString("dname"));
					}
					if (medalRS[7].getInt("score1") < medalRS[7].getInt("score2")) {
						medal.setLoserbpart(medalRS[7].getString("iname"));
						medal.setLoserbdname(medalRS[7].getString("dname"));
					} else {
						medal.setLoserbpart(medalRS[8].getString("iname"));
						medal.setLoserbdname(medalRS[8].getString("dname"));
					}
					if (medalRS[9].getInt("score1") < medalRS[9].getInt("score2")) {
						medal.setLosercpart(medalRS[9].getString("iname"));
						medal.setLosercdname(medalRS[9].getString("dname"));
					} else {
						medal.setLosercpart(medalRS[10].getString("iname"));
						medal.setLosercdname(medalRS[10].getString("dname"));
					}
					if (medalRS[11].getInt("score1") < medalRS[11].getInt("score2")) {
						medal.setLoserdpart(medalRS[11].getString("iname"));
						medal.setLoserddname(medalRS[11].getString("dname"));
					} else {
						medal.setLoserdpart(medalRS[12].getString("iname"));
						medal.setLoserddname(medalRS[12].getString("dname"));
					}
					request.setAttribute("medal" + (i + 3), medal);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/pages/competitionPage.jsp");
		rd.forward(request, response);
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
