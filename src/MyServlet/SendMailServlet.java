package MyServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.servlet.*;
public class SendMailServlet extends HttpServlet
{

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy()
	{
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
        ServletContext application=getServletContext();
        ServletConfig config=getServletConfig();
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		request.setCharacterEncoding("gb2312");
		String host="smtp.163.com";
		String from="a1@163.com";
		String to="a2@163.com";
		String cc="a3@163.com,a4@126.com,a5@163.com";
		String username="a1";
		String password="1111";
		String body="<font color=\"#FF0000\" size=\"6\">邮件正文</font>"+"<img src=\"tomcat.gif\">";
		BodyPart bodyPart=null;
		DataSource source=null;
		MimeMultipart mm=new MimeMultipart();
		try
		{
			Properties props=new Properties();
			props.setProperty("mail.smtp.host", host);
			props.setProperty("mail.smtp.auth", "true");
			
			Session mailSession=Session.getDefaultInstance(props);
			MimeMessage message=new MimeMessage(mailSession);
			message.setFrom(new InternetAddress(from));
			message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
			StringTokenizer token=new StringTokenizer(cc,",");
			InternetAddress ccUser[]=new InternetAddress[token.countTokens()];
			int i=0;
			while(token.hasMoreElements())
			{
				String temp=token.nextToken();
				ccUser[i]=new InternetAddress(temp);
				i++;
			}
			message.setRecipients(Message.RecipientType.CC,ccUser);
			message.setSubject("发信测试");
			bodyPart=new MimeBodyPart();
			bodyPart.setContent(body,"text/html;charset=gb2312");
			mm.addBodyPart(bodyPart);
			
			source=new FileDataSource("c:\\tomcat\\webapps\\ROOT\\tomcat.gif");
			bodyPart=new MimeBodyPart();
			bodyPart.setDataHandler(new DataHandler(source));
			bodyPart.setFileName("tomcat.gif");
			bodyPart.setHeader("Content-ID", "file1");
			mm.addBodyPart(bodyPart);
			
			source=new FileDataSource("c:\\tomcat\\webapps\\ROOT\\RELEASE-NOTES.txt");
			bodyPart=new MimeBodyPart();
			bodyPart.setDataHandler(new DataHandler(source));
			bodyPart.setFileName("RELEASE-NOTES.txt");
			bodyPart.setHeader("Content-ID", "file1");
			mm.addBodyPart(bodyPart); 
			
			message.setContent(mm);
			
			message.saveChanges();
			Transport transport=mailSession.getTransport("smtp");
			transport.connect(host,username,password);
			transport.sendMessage(message,message.getAllRecipients());
			transport.close();
			out.print("邮件发送成功");
						
		}catch(Exception e)
		{
			System.out.print("邮件传送出错："+e);
		}
	
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{

		doGet(request,response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException
	{
		// Put your code here
	}

}
