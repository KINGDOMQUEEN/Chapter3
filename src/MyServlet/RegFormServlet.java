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
			System.out.println("���������"+e);
		}
	out.print("<br>�����û����ǣ�"+form.getUserName());
	out.print("<br>���Ŀ����ǣ�"+form.getPassword());
	out.print("<br>�����Ա��ǣ�"+form.getGender());
	out.print("<br>���İ����ǣ�");
			String h[] = form.getHobby();
			if (h != null)
			{
				for (int i = 0; i < h.length; i++)
					out.print(h[i]);
			}
		
		out.print("<br>���ĸ����ǣ�"+form.getMemo());
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
