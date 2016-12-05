package MyServlet;

import javax.servlet.*;
import java.io.*;
import java.util.*;

public class ContextListener implements ServletContextListener
{

	Timer timer = null;
	MyTask task = null;
	Date begin = null;

	public void contextInitialized(ServletContextEvent event)
	{
		System.out.println("WEB应用初始开始...");
		begin = new Date();
		System.out.println(begin.toString());
		timer = new Timer();
		task = new MyTask();
		timer.schedule(task, 0, 10000L);
		
		
	}

	public void contextDestroyed(ServletContextEvent sce)
	{
		System.out.println("WEB应用即将关闭...");
		timer.cancel();
		try
		{
			//FileOutputStream file = new FileOutputStream("c:\\mylog.txt");
			//OutputStreamWriter out = new OutputStreamWriter(file);
			FileWriter file = new FileWriter("C:\\本地磁盘D\\myLog.txt", true);
			PrintWriter out = new PrintWriter(file);
			out.write("启动时间" + begin + "\r\n");
			out.write("结束时间" + new Date() + "\r\n");
			out.close();
		} catch (Exception e)
		{
			System.out.println(e);
		}

	}

}
