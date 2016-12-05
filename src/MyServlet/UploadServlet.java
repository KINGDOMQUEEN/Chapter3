package MyServlet;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.util.*;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.*;
import org.apache.commons.fileupload.FileUploadBase;




public class UploadServlet extends HttpServlet
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
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		request.setCharacterEncoding("gb2312");
		int counter=0;
		try
		{
			boolean isMultipart=ServletFileUpload.isMultipartContent(request);
			if(isMultipart)
				response.sendRedirect("error.jsp");
			
			DiskFileItemFactory factory=new DiskFileItemFactory();
			factory.setSizeThreshold(1024);
			//factory.setRepository(yourTempDirectory);
		    ServletFileUpload upload=new ServletFileUpload(factory);
		    upload.setSizeMax(1024*1024);
		    List fileItems=upload.parseRequest(request);
		    Iterator it=fileItems.iterator();
		    String uploadPath=application.getRealPath("/");
		    int location=-1;
		    
		    while(it.hasNext())
		    {
		    	FileItem fi=(FileItem)it.next();
		    	String oriFileName=fi.getName();
		    	if(oriFileName!=null)
		    		location=oriFileName.lastIndexOf("\\");
		    	
		    	if((!fi.isFormField())&& (oriFileName!=null) && (location>=0))
		    	{
		    	  	String fileName=oriFileName.substring(location+1);
		    	  	File savedFile=new File(uploadPath,fileName);
		    	    fi.write(savedFile);
		    	    out.print("<br>------�ɹ��ϴ��ļ�-------");
		    	    out.print("<br>�ļ�����"+fileName);
		    	    out.print("<br>�ļ���С��"+fi.getSize());
		    	    counter++;
		    	}
		    		
		    	
		    }
		}
		/*catch(SizeLimitExceededException e)
		{
		  out.print("�ϴ����ļ������ϴ�ʧ�ܡ�");
		  
		}
		*/
		catch(Exception e)
		{
			out.print("�ļ��ϴ�ʱ�����쳣��"+e);
			
		}
		finally
		{
			out.print("<br>���ɹ��ϴ�"+counter+"���ļ�");
		}
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
