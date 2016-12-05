package MyHello;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class loginCheck extends HttpServlet
{

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{                                                                                                                                                                                                    

		ServletContext application = getServletContext();
		ServletConfig config = getServletConfig();
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String name = request.getParameter("loginName");
		String pw = request.getParameter("pw");
		if ((name != null && name.length() != 0)
				&& (pw != null && pw.length() != 0))
		{
			if (name.equals("tom") && pw.equals("1111"))
				out.print("登录成功！");
			else
				out.print("用户名或口令不对");
		}

	}

}
