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
		System.out.println("过滤器1工作，请求转下一个处理...");
		out.print("<br>请求到达目标资源前过滤器2添加的信息<br>");
		String loginStatus = (String) session.getAttribute("loginName");
		if (loginStatus == null)
		{
			out.print("<br>您没有登录，无权访问资源<br>");
			return;
		} else
			chain.doFilter(request, response);
		System.out.println("目标资源输出信息返回到过滤器1...");
		out.print("<br>目标资源输出信息返回时过滤器2添加的信息<br>");
	}

}
