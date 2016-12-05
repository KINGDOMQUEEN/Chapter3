package MyServlet;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class RequestListener1 implements ServletRequestListener
{

	synchronized public void requestInitialized(ServletRequestEvent sre)
	{
		try
		{
			FileWriter file = new FileWriter("C:\\±æµÿ¥≈≈ÃD\\requestLog.txt", true);
			PrintWriter out = new PrintWriter(file);
			HttpServletRequest request = (HttpServletRequest) sre
					.getServletRequest();
			out.println(new Date() + " " + request.getRemoteAddr() + " "
					+ request.getRequestURI());
			out.close();
		} catch (Exception e)
		{
			System.out.println(e);
		}

	}

	public void requestDestroyed(ServletRequestEvent sre)
	{

	}

}
