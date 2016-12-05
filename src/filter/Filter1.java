package filter;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Filter1 implements Filter
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
		HttpSession session = ((HttpServletRequest) request).getSession();
		System.out.println("������1����������ת��һ������...");
		out.print("<br>���󵽴�Ŀ����Դǰ������2��ӵ���Ϣ<br>");
		String loginStatus = (String) session.getAttribute("loginName");
		if (loginStatus == null)
		{
			out.print("<br>��û�е�¼����Ȩ������Դ<br>");
			return;
		} else
			chain.doFilter(request, response);
		System.out.println("Ŀ����Դ�����Ϣ���ص�������1...");
		out.print("<br>Ŀ����Դ�����Ϣ����ʱ������2��ӵ���Ϣ<br>");
	}

}
