package filter;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Filter3 implements Filter
{

	private FilterConfig config = null;

	public void init(FilterConfig config) throws ServletException
	{
		this.config = config;
	}

	public void destroy()
	{
		config = null;
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException
	{
		response.setCharacterEncoding("gb2312");
		PrintWriter out = response.getWriter();
		System.out.println("������3����������ת��һ������...");
		out.print("<br>���󵽴�Ŀ����Դǰ������3��ӵ���Ϣ<br>");
		chain.doFilter(request, response);
		System.out.println("Ŀ����Դ�����Ϣ���ص�������3...");
		out.print("<br>Ŀ����Դ�����Ϣ����ʱ������3��ӵ���Ϣ<br>");
	}

}
