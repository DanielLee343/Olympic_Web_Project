package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;
import bean.Admin;
import bean.Delegation;
import bean.Iplayer;

/**
 * Servlet implementation class test
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String method = request.getParameter("method");
		String country = request.getParameter("country");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		System.out.println("**********" + method + "**********");
		if ("login".equals(method)) {
			isLoginExist(request, response);
		} else if ("checkCountry".equals(method)) {
			checkCountry(request, response, country);
		}
	}

	/*	*//**
			 * @see HttpServlet#HttpServlet()
			 */
	/*
	 * public test() { super(); // TODO Auto-generated constructor stub }
	 * 
	 *//**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
		 *      response)
		 *//*
			 * public void init() throws ServletException { // 执行必需的初始 }
			 * 
			 * public void doGet(HttpServletRequest request, HttpServletResponse response)
			 * throws ServletException, IOException { // 设置响应内容类型
			 * response.setContentType("text/html;charset=UTF-8");
			 * 
			 * // 实际的逻辑是在这里
			 * 
			 * }
			 */

	/*	*//**
			 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
			 *      response)
			 *//*
				 * protected void doPost(HttpServletRequest request, HttpServletResponse
				 * response) throws ServletException, IOException { // TODO Auto-generated
				 * method stub response.setContentType("text/html;charset=UTF-8");
				 * doGet(request, response); String username = request.getParameter("id");
				 * String password = request.getParameter("pwd"); System.out.println("id:" +
				 * username + "\t password:" + password);
				 * 
				 * if (username.equals("d") && password.equals("d")) {
				 * response.sendRedirect("pages/admin.jsp");
				 * System.out.println("Login success!"); return; } else {
				 * request.setAttribute("ValueA", "Wrong Id or password!");
				 * request.getRequestDispatcher("pages/login.jsp").forward(request, response);
				 * System.out.println("Login failed!"); return; }
				 * 
				 * }
				 */

	public void isLoginExist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		Admin admin = new Admin();
		admin.setId(id);
		admin.setPwd(pwd);
		ResultSet admins = LoginDao.getInstance().executeQuery("select * from admin where id='" + admin.getId() + "'");
		try {
			while (admins.next()) {
				if (admins.getString("pwd").equals(admin.getPwd())) {
					request.getRequestDispatcher("pages/chooseSport.jsp").forward(request, response);
				} else {
					System.out.println("error!");
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void checkCountry(HttpServletRequest request, HttpServletResponse response, String country)
			throws ServletException, IOException {
		String sql = "select * from delegation where dname = '" + country + "'";
		String sql1 = "select * from iplayer,delegation where iplayer.did = delegation.did and dname ='" + country
				+ "'";
		ResultSet whichCountry = LoginDao.getInstance().executeQuery(sql);
		ResultSet athletes = LoginDao.getInstance().executeQuery(sql1);
		Delegation delegation = new Delegation();
		Iplayer iplayer = new Iplayer();
		try {
			if (whichCountry.next()) {
				delegation.setDid(whichCountry.getInt("did"));
				delegation.setDname(whichCountry.getString("dname"));
				delegation.setDflag1(whichCountry.getString("dflag1"));
				delegation.setDflag2(whichCountry.getString("dflag2"));
				delegation.setDintro(whichCountry.getString("dintro"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			if (athletes.next()) {
				iplayer.setIid(athletes.getInt("iid"));
				iplayer.setIname(athletes.getString("iname"));
				iplayer.setIimg(athletes.getString("iimg"));
				iplayer.setDid(athletes.getInt("did"));
				iplayer.setAge(athletes.getInt("age"));
				iplayer.setRecord(athletes.getString("record"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("country", delegation);
		request.setAttribute("iplayer", iplayer);
		request.getRequestDispatcher("pages/delegationDetailPage.jsp").forward(request, response);
	}

	public void getAthletes(HttpServletRequest request, HttpServletResponse response, String country)
			throws ServletException, IOException {
		String sql = "select * from iplayer,delegation where iplayer.did = delegation.did and dname ='" + country + "'";
		ResultSet athletes = LoginDao.getInstance().executeQuery(sql);
		List<Iplayer> athleteList = new ArrayList<Iplayer>();
		Iplayer iplayer = null;
		try {
			while (athletes.next()) {
				iplayer.setIid(athletes.getInt("iid"));
				iplayer.setIname(athletes.getString("iname"));
				iplayer.setIimg(athletes.getString("iimg"));
				iplayer.setDid(athletes.getInt("did"));
				iplayer.setAge(athletes.getInt("age"));
				iplayer.setRecord(athletes.getString("record"));
				iplayer = new Iplayer();
				System.out.println("something here!");
				System.out.println(iplayer.getAge());
				// athleteList.put(iplayer);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("athleteList", athleteList);
		request.getRequestDispatcher("pages/delegationDetailPage.jsp").forward(request, response);
	}
}
