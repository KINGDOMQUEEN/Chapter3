package filter;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class ChineseFilter implements Filter
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
		chain.doFilter(request, response);

	}

}
