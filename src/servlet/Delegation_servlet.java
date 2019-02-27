package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Delegation;
import bean.Iplayer;
import bean.Team;
import bo.DelegationBO;

/**
 * Servlet implementation class AthleteActionServlet
 */
@WebServlet("/Delegation_servlet")
public class Delegation_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Delegation_servlet() {
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
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String country = request.getParameter("country");

		ArrayList arr = new ArrayList();
		DelegationBO db = new DelegationBO();

		Delegation delegation = new Delegation();
		Iplayer iplayerBad = new Iplayer();
		Iplayer iplayerTable = new Iplayer();
		Team teamSoccer = new Team();
		Team teamBas = new Team();
		arr = db.getDelegationInfo1(country);
		if (arr.size() != 0) {
			delegation = (Delegation) arr.get(0);
			iplayerBad = (Iplayer) arr.get(1);
		}
		iplayerTable = db.getDelegationInfo2(country);
		teamSoccer = db.getTeamInfo1(country);
		teamBas = db.getTeamInfo2(country);
		request.setAttribute("delegation", delegation);
		request.setAttribute("iplayerBad", iplayerBad);
		request.setAttribute("iplayerTable", iplayerTable);
		request.setAttribute("teamSoccer", teamSoccer);
		request.setAttribute("teamBas", teamBas);
		request.getRequestDispatcher("pages/delegationDetailPage.jsp").forward(request, response);
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
