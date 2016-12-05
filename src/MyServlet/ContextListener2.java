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
		System.out.println("上下文中新添加了一个新属性：" + scab.getName() + "="
				+ scab.getValue());
	}

	public void attributeRemoved(ServletContextAttributeEvent scab)
	{
		System.out.println("上下文中删除了一个属性：" + scab.getName() + "="
				+ scab.getValue());
	}

	public void attributeReplaced(ServletContextAttributeEvent scab)
	{
		ServletContext application = scab.getServletContext();
		System.out.println("上下文中一个属性的值被修改旧的值：" + scab.getName() + "="
				+ scab.getValue());
		System.out.println("新的值：" + scab.getName() + "="
				+ application.getAttribute(scab.getName()));

	}

	public void contextDestroyed(ServletContextEvent scab)
	{

	}

}
