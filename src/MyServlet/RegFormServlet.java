package MyServlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import org.apache.commons.beanutils.*;

import MyHello.*;

public class RegFormServlet extends HttpServlet
{

	public void destroy()
	{
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{

		ServletContext application=getServletContext();
		ServletConfig config=getServletConfig();
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		request.setCharacterEncoding("gb2312");
		
		RegForm form=new RegForm();
		Map map=request.getParameterMap();
		try
		{
			BeanUtils.populate(form,map);
		}
		catch(Exception e)
		{
			System.out.println("表单处理出错："+e);
		}
	out.print("<br>您的用户名是："+form.getUserName());
	out.print("<br>您的口令是："+form.getPassword());
	out.print("<br>您的性别是："+form.getGender());
	out.print("<br>您的爱好是：");
			String h[] = form.getHobby();
			if (h != null)
			{
				for (int i = 0; i < h.length; i++)
					out.print(h[i]);
			}
		
		out.print("<br>您的附言是："+form.getMemo());
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{

		doGet(request,response);
	}

	
	public void init() throws ServletException
	{
		// Put your code here
	}

}
