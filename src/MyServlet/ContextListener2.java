package MyServlet;

import javax.servlet.*;
import java.io.*;
import java.util.*;


import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ContextListener2  implements ServletContextAttributeListener 
{

	public void contextInitialized(ServletContextEvent scab)
	{

	}

	public void attributeAdded(ServletContextAttributeEvent scab)
	{
		System.out.println("���������������һ�������ԣ�" + scab.getName() + "="
				+ scab.getValue());
	}

	public void attributeRemoved(ServletContextAttributeEvent scab)
	{
		System.out.println("��������ɾ����һ�����ԣ�" + scab.getName() + "="
				+ scab.getValue());
	}

	public void attributeReplaced(ServletContextAttributeEvent scab)
	{
		ServletContext application = scab.getServletContext();
		System.out.println("��������һ�����Ե�ֵ���޸ľɵ�ֵ��" + scab.getName() + "="
				+ scab.getValue());
		System.out.println("�µ�ֵ��" + scab.getName() + "="
				+ application.getAttribute(scab.getName()));

	}

	public void contextDestroyed(ServletContextEvent scab)
	{

	}

}
