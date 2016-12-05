package MyServlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

public class registServlet extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{

		ServletContext application = getServletContext();
		ServletConfig config = getServletConfig();
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		request.setCharacterEncoding("gb2312");
		Enumeration e = request.getParameterNames();
		while (e.hasMoreElements())
		{
			String vname = (String) e.nextElement();
			String b[] = request.getParameterValues(vname);
			if (b.length <= 1)
				out.print(vname + "=" + b[0] + "<br>");
			else
			{
				for (int m = 0; m < b.length; m++)
					out.print(vname + "=" + b[m] + "<br>");
			}
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		doGet(request, response);

	}

}
