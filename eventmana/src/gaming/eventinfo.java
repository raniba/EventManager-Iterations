package gaming;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbManager.DataBaseManager;

/**
 * Servlet implementation class eventinfo
 */
@WebServlet("/eventinfo")
public class eventinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public eventinfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Object nameO = request.getParameter("theEventName");//event name
				//Object hosterID = request.getParameter("theEventHoster");//event creator
				
				Object nameO = request.getParameter("EventName");//event name
				Object hosterID = request.getParameter("EventHoster");//event creator
				
				if (nameO != null && hosterID != null)
				{
					String[] g = new String[2];
					g[0] = nameO.toString();//saves the event name
					g[1] = (hosterID.toString());//saves the hoster name
					
					HttpSession session = request.getSession();
					session.setAttribute("eventinfo", g);
				}
				//response.sendRedirect("DisplayScores");
				response.sendRedirect("Main");
			}

		}