package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Team;
import bean.Tplayer;
import bo.TplayerBO;

/**
 * Servlet implementation class Team_servlet
 */
@WebServlet("/Team_servlet")
public class Team_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Team_servlet() {
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
		int tid = Integer.parseInt(request.getParameter("tid"));

		ArrayList arr = new ArrayList();
		TplayerBO tb = new TplayerBO();

		Team team = new Team();
		Tplayer tplayer = new Tplayer();
		arr = tb.getTplayerInfo(tid);
		if (arr.size() != 0) {
			team = (Team) arr.get(0);
			tplayer = (Tplayer) arr.get(1);
		}
		request.setAttribute("team", team);
		request.setAttribute("tplayer", tplayer);
		request.getRequestDispatcher("pages/tplayerPage.jsp").forward(request, response);
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
