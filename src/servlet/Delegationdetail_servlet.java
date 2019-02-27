package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Delegation;
import bean.Iplayer;
import bean.Team;
import bean.Tmedal;
import bean.Tplayer;
import bo.IplayerBO;
import bo.TeamBO;

/**
 * Servlet implementation class Delegationdetail_servlet
 */
@WebServlet("/Delegationdetail_servlet")
public class Delegationdetail_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String method = request.getParameter("method");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		System.out.println("**********" + method + "**********");
		if ("indi".equals(method)) {
			getIndiInfo(request, response);
		} else if ("team".equals(method)) {
			getTeamInfo(request, response);
		}
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Delegationdetail_servlet() {
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

	}

	public void getIndiInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		int iid = Integer.parseInt(request.getParameter("iid"));

		ArrayList arr = new ArrayList();
		IplayerBO ib = new IplayerBO();

		Delegation delegation = new Delegation();
		Iplayer iplayer = new Iplayer();

		arr = ib.getIplayerInfo(iid);
		if (arr.size() != 0) {
			iplayer = (Iplayer) arr.get(0);
			delegation = (Delegation) arr.get(1);
		}

		request.setAttribute("delegation", delegation);
		request.setAttribute("iplayer", iplayer);
		request.getRequestDispatcher("pages/iplayerPage.jsp").forward(request, response);

	}

	public void getTeamInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		int teid = Integer.parseInt(request.getParameter("teid"));

		ArrayList arr = new ArrayList();
		TeamBO tb = new TeamBO();

		Team team = new Team();
		Tmedal tmedal = new Tmedal();
		Tplayer tplayer1 = new Tplayer();
		Tplayer tplayer2 = new Tplayer();
		Tplayer tplayer3 = new Tplayer();
		Tplayer tplayer4 = new Tplayer();

		arr = tb.getTeamAndRecordInfo1(teid);
		tplayer2 = tb.getTeamAndRecordInfo2(teid);
		tplayer3 = tb.getTeamAndRecordInfo3(teid);
		tplayer4 = tb.getTeamAndRecordInfo4(teid);
		if (arr.size() != 0) {
			team = (Team) arr.get(0);
			tmedal = (Tmedal) arr.get(1);
			tplayer1 = (Tplayer) arr.get(2);
		}
		request.setAttribute("tplayer2", tplayer2);
		request.setAttribute("tplayer3", tplayer3);
		request.setAttribute("tplayer4", tplayer4);
		request.setAttribute("team", team);
		request.setAttribute("tmedal", tmedal);
		request.setAttribute("tplayer1", tplayer1);
		request.getRequestDispatcher("pages/teamPage.jsp").forward(request, response);
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
