package MyServlet;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SessionListener implements HttpSessionListener
{

	synchronized public void sessionCreated(HttpSessionEvent se)
	{
		HttpSession session = se.getSession();
		System.out.println("�½���һ��Session����ID" + session.getId());
		int n = 0;
		if (session.isNew())
		{
			ServletContext application = session.getServletContext();
			String counter = (String) application.getAttribute("counter");
			if (counter == null)
				n = 1;
			else
			{
				n = Integer.parseInt(counter);
				n++;
			}
			application.setAttribute("counter", String.valueOf(n));
		}
	}

	public void sessionDestroyed(HttpSessionEvent se)
	{

	}
}
